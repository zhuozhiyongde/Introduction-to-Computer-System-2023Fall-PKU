#!/usr/local/bin/perl
#!/usr/local/bin/perl -w

# Parse SAT values from .cnf file comments & SAT output .sout to generate
# satisfying solution

# Usage: satparse.pl rootname
if (@ARGV != 1) {
    die "Usage: $0 rootname\n";
}

$rootname = $ARGV[0];

# Build up array of PI names
open(CNFFILE, "$rootname.cnf") || die "Couldn't open CNF file $rootname.cnf\n";

@input = ();
@asst = ();
@show = ();

$iname = ();
@ivec = ();
$num = 0;
$inum = 0;

while (<CNFFILE>) {
    $line = $_;
    chomp($line);
    if ($line =~ "tautology") {
	print "Tautology\n";
	exit;
    }
    if ($line =~ "c BPI") {
	($j1,$j2,$num,$name) = split(/ /, $line);
	$input[$num] = $name;
	$show[$num] = 1;
	$asst[$num] = 0;
	$num++;
    }
    if ($line =~ "c IPI") {
	($j1,$j2,$name,$ids) = split(/ /, $line);
	$iname[$inum] = $name;
	$ivec[$inum] = $ids;
	$inum++;
	foreach $id (split(/:/, $ids)) {
	    if ($id > 0 && $id < $num) {
		$show[$id] = 0;
	    }
	}
    }
    if ($line =~ "p cnf") {
	break;
    }
}
close CNFFILE;

$acount = @input;

open(SATFILE, "$rootname.sout")
    || die "Couldn't open SAT output file $rootname.sout\n";

$ready = 0;
while (<SATFILE>) {
    $line = $_;
    chomp($line);
    if ($line =~ /Total Run Time[\s]*([0-9]+\.[0-9]*)/) {
	$time = $1;
	print "Time: $time secs\n";
    }
    if ($line =~  /Total Run Time[\s]*([0-9]+)/) {
      $time = $1;
      print "Time: $time.0 secs\n";
    }
    if ($line =~ "unsatisfiable" || $line =~ "Unsatisfiable" || $line =~ "RESULT: UNSAT") {
	print "Unsatisfiable\n";
    } elsif ($line =~ "satisfiable" || $line =~ "Satisfiable" || $line =~ "RESULT: SAT") {
      print "Satisfiable\n";
	$ready = 1;
    } elsif ($line =~ /TIME OUT/) {
      print "Timeout";
    } elsif ($ready) {
	# This is the real line
	@vals = split(/ /, $line);
	foreach $v (@vals) {
	    $var = $v;
	    $val = 1;
	    if ($var < 0) {
		$var = -$var;
		$val = 0;
	    }
	    if ($var > 0 && $var < $acount) {
		$asst[$var] = $val;
	    }
	}
	    
    }
}

for ($i = 0; $i < $acount; $i++) {
    if ($input[$i] && $show[$i]) {
	print "$input[$i]:$asst[$i]\n";
    }
}

$icount = @iname;

for ($i = 0; $i < $icount; $i++) {
    @ids = split(/:/, $ivec[$i]);
    $vlen = @ids;
    $val = 0;
    $p2 = 1;
    for ($j = 0; $j < $vlen; $j++) {
        $sign = 1;
	if ($j == $vlen -1 && $j >= 31) {
	  $sign = -1;
	}
	$val = $val + $p2*$asst[$ids[$j]] * $sign;
	$p2 *= 2;
    }
    print "$iname[$i]:$val\n";
}
