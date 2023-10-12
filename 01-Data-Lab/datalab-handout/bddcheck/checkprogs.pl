#!/usr/bin/env perl
#!/usr/bin/env perl -w
use Getopt::Std;
$progdir = "./bddcheck";
$cbit = "$progdir/cbit/cbit";

# Extract named function(s) from file(s), and check for equivalence.

getopts('hkvsdtbBCf:p:F:P:a:T:');

if ($opt_h || !$opt_f || !$opt_p) {
    print STDOUT "Usage $0 [-hkvsdtbB] -f file1.c -p proc1 [-F file2.c] [-P proc2]\n";
    print STDOUT "      -h                    Print this message\n";
    print STDOUT "      -k                    Keep intermediate files\n";
    print STDOUT "      -v                    Verbose\n";
    print STDOUT "      -s                    Solve using SAT solver\n";
    print STDOUT "      -d                    Just check for define/use errors\n";
    print STDOUT "      -C                    Check for casting by first function\n";
    print STDOUT "      -t                    Generate counterexample test code\n";
    print STDOUT "      -f file1.c            First code file\n";
    print STDOUT "      -p proc1              Name of (first) function\n";
    print STDOUT "      -b                    First function ends with first '}'\n";
    print STDOUT "      -F file2.c            Second code file\n";
    print STDOUT "      -P proc2              Name of second function\n";
    print STDOUT "      -B                    Second function ends with first '}'\n";
    print STDOUT "      -a argpattern         Specify argument types\n";
    print STDOUT "      -T timelim            Set time limit\n";
}

$file1 = $opt_f;
$proc1 = $opt_p;

$file_cnt = 1;
if ($opt_P || $opt_F) {
    $file_cnt = 2;
    $file2 = $file1;
    $proc2 = $proc1;
    if ($opt_P) {
	$proc2 = $opt_P;
    }
    if ($opt_F) {
	$file2 = $opt_F;
    }
}

if ($opt_C) {
    $cbit = $cbit . " -C";
}

if ($opt_a) {
    $cbit = $cbit . " -a " . $opt_a;
}

if ($opt_T) {
    $cbit = $cbit . " -t " . $opt_T;
}

if ($opt_v) {
    print "Looking for $proc1 in $file1\n";
}

# Extract first function and put into file
$newfile1 = "$proc1-1.c";
open(INFILE, $file1) || die("Couldn't open input file $file1\n");
open(CODEFILE, ">$newfile1") || die("Couldn't open temporary file $newfile1\n");
$code1 = "";

$found = 0;
$expecting_header = 1;
$done = 0;
while (<INFILE>)
{
    if ($done) {
	break;
    }
    $line = $_;
    if (!$found && $line =~ /[\s]*(int|unsigned)[\s]+$proc1[\s]*\(/) {
	# found the line
	$found = 1;
      }
    if ($found && !$done) {
      if (!($line =~ /^#line/)) {
	print CODEFILE $line;
      }
	  $code1 = $code1 . $line;
	  if ($line =~ /^}/) {
	      $done = 1;
          }
          if ($opt_b && $line =~ /^[\s]*}/) {
	      $done = 1;
	  }
    }
  }

if (!$found) {
    die "Function $proc1 not found in file $file1\n";
}

close INFILE;
close CODEFILE;

if ($file_cnt > 1) {
    if ($opt_v) {
	print "Looking for $proc2 in $file2\n";
    }

    $newfile2 = "$proc2-2.c";
    $code2 = "";
    open(INFILE, $file2) || die("Couldn't open input file $file2\n");
    open(CODEFILE, ">$newfile2") || die("Couldn't open temporary file $newfile2\n");

    $found = 0;
    $done = 0;
    while (<INFILE>)
    {
        if ($done) {
    	    break;
        }
	$line = $_;
	if (!$found && $line =~ /[\s]*(int|unsigned)[\s]+$proc2[\s]*\(/) {
	    # found the line
	    $found = 1;
	}
	if ($found && !$done) {
	    print CODEFILE $line;
	    $code2 = $code2 . $line;
	    if ($line =~ /^}/) {
	        $done = 1;
	    }
            if ($opt_B && $line =~ /^[\s]*}/) {
	        $done = 1;
	    }
        }
    }
    if (!$found) {
        die "Function $proc2 not found in file $file2\n";
    }
    close INFILE;
    close CODEFILE;
} else {
    $newfile2 = "";
}

$root = "comp";
$cnffile = "$root.cnf";
$satfile = "$root.sout";


if ($opt_d) {
    if ($file_cnt > 1) {
        print "Checking define/use in $file1:$proc1 and $file2:$proc2\n";
    } else {
        print "Checking define/use in $file1:$proc1\n";
    }

    if ($opt_v) {
       print "$cbit -d $newfile1 -o $cnffile\n";
    }
    $result = `$cbit -d $newfile1 -o $cnffile` ||
        die "ERROR: $result\nCouldn't generate CNF file $cnffile\n";

    if ($opt_v) {
       print "$zchaff $cnffile > $satfile\n";
    }

    system "$zchaff $cnffile > $satfile" || die "Couldn't run zchaff on $cnffile\n";

    if ($opt_v) {
        print "$satparse $root\n";
    }

    $satresult = `$satparse $root` || die "Couldn't analyze SAT file $satfile\n";
    if ($satresult =~ /\sSAT\s/ || $satresult =~ Tautology) {
        print "Define/Use violation detected in file $newfile1\n";
    } else {
        print "No Define/Use violations occur in file $newfile1\n";
    }

    if ($file_cnt > 1) {
        if ($opt_v) {
           print "$cbit -d $newfile2 -o $cnffile\n";
        }
        $result = `$cbit -d $newfile2 -o $cnffile` ||
            die "ERROR: $result\nCouldn't generate CNF file $cnffile\n";

        if ($opt_v) {
           print "$zchaff $cnffile > $satfile\n";
        }

        system "$zchaff $cnffile > $satfile" || die "Couldn't run zchaff on $cnffile\n";

        if ($opt_v) {
           print "$satparse $root\n";
        }

        $satresult = `$satparse $root` || die "Couldn't analyze SAT file $satfile\n";
        if ($satresult =~ /\sSAT\s/ || $satresult =~ /Tautology/) {
            print "Define/Use violation detected in file $newfile2\n";
        } else {
            print "No Define/Use violations occur in file $newfile2\n";
        }
        exit(0);
    }
} else { # Full check

    if (!$opt_s) { # Use BDDs
        if ($opt_v) {
            print "$cbit $newfile1 $newfile2 \n";
        }
	
       $satresult = `$cbit $newfile1 $newfile2` ||
        "Error: Couldn't process file(s) $newfile1 $newfile2 with BDDs\n";

        if ($opt_v) {
            print $satresult;
        }
    } else { # Use SAT solver
        if ($opt_v) {
            print "$cbit -s $newfile1 $newfile2 -o $cnffile\n";
        }
	
       $result = `$cbit -s $newfile1 $newfile2 -o $cnffile` ||
        die "ERROR: $result\nCouldn't generate CNF file $cnffile\n";

        if ($opt_v) {
           print "$zchaff $cnffile > $satfile\n";
        }

        system "$zchaff $cnffile > $satfile" || die "Couldn't run zchaff on $cnffile\n";

        if ($opt_v) {
           print "$satparse $root\n";
        }

        $satresult = `$satparse $root` || die "Couldn't analyze SAT file $satfile\n";

        if ($opt_v) {
            print $satresult;
        }
    }
}

$bad = ($satresult =~ /Error/ || $satresult =~ /Timeout/ || $satresult =~ /Runtime error/ ||
    $satresult =~ /Disallowed/);

if (!$bad && ($satresult =~ /\sSAT\s/ || $satresult =~ /Tautology/ || $satresult =~ /Satisfiable/)) {
    $error = 1;
}

if ($file_cnt > 1) {
    print "Comparing $file1:$proc1 to $file2:$proc2 .. ";
} else {
    print "Testing predicate $file1:$proc1 .. ";
}


if ($error) {
    print "Mismatch\n";
} else {
    if ($bad) {
	print "Error\n$satresult";
    } else {
	print "OK\n";
    }
}

$testfile = "";

$testfile = "";
$testofile = "";
$testexefile = "";

if ($opt_t && $error) {
    # Generate testing code
    $testfile = "checktest.c";
    $testofile = "checktest";
    $testexefile = "checktest.exe";
    $argstring = "";
    $firstarg = 1;
    if ($proc1 eq $proc2) {
       # Need to rename function to avoid name collision
       $nproc1 = $proc1 . "_1";
       $nproc2 = $proc1 . "_2";
       $code1 =~ s/$proc1/$nproc1/;
       $code2 =~ s/$proc2/$nproc2/;
       $proc1 = $nproc1;
       $proc2 = $nproc2;
    }
    open(TESTFILE, ">$testfile") || die("Couldn't open test file $testfile\n");
    @arglines = split(/\n/, $satresult);
    foreach $sline (@arglines) {
        chomp $sline;
        if ($sline =~ /arg-([a-zA-Z_0-9]+):([-]*[0-9]+)/) {
	    $val = $2;
	    if ($val eq "-2147483648") {
		$val = "1<<31";
	    }
	    if ($firstarg) {
		$argstring = $val;
	    } else {
		$argstring = $argstring . ", " . $val;
	    }
	    $firstarg = 0;
        }
    }
    print TESTFILE <<HERE;
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/* Convert from bit level representation to floating point number */
float u2f(unsigned u) {
  union {
    unsigned u;
    float f;
  } a;
  a.u = u;
  return a.f;
}

/* Convert from floating point number to bit-level representation */
unsigned f2u(float f) {
  union {
    unsigned u;
    float f;
  } a;
  a.f = f;
  return a.u;
}

/* Fix any NaN to be NaN value 0x7FC00000 */
float fix_nan(float f)
{
  if (isnanf(f))
    return u2f(0x7FC0000);
  else
    return f;
}

$code1

$code2

int main()
{
    int val1 = $proc1($argstring);
    int val2 = $proc2($argstring);
    printf("$proc1($argstring) --> %d [0x%x]\\n", val1, val1);
    printf("$proc2($argstring) --> %d [0x%x]\\n", val2, val2);
    if (val1 == val2) {
	printf(".. False negative\\n");
    } else
	printf(".. A genuine counterexample\\n");
}
HERE
    system "gcc -o $testofile $testfile" || die "Couldn't compile $testfile\n";
system "./$testofile" || die "Couldn't run test file $testofile\n";
}

if (!$opt_k) {
    system "rm -f $newfile1 $newfile2 $cnffile $satfile" ||
	die "Couldn't remove files $newfile1 $newfile2 $cnffile $satfile\n";
    if ($opt_t && $error) {
      system "rm -f $testfile $testofile $testexefile"  ||
	die "Couldn't remove files $newfile1 $newfile2 $cnffile $satfile\n";
    }
}

