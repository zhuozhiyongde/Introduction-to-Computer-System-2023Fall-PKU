#!/usr/bin/perl

use Getopt::Std;

$progdir = "./bddcheck";
$Fsolve = "bits.c";
$Fref = "tests.c";
$Finfo = "$progdir/all-functions.txt";
$FLAGS = "-t";
$PROG = "$progdir/checkprogs.pl";

getopts('hgtvkf:r:');

if ($opt_h) {
  print STDOUT "Usage $0 [-hgkv] [-f fun]\n";
  print STDOUT "     -h         Print this message\n";
  print STDOUT "     -g         Generate grading information\n";
  print STDOUT "     -k         Keep intermediate files\n";
  print STDOUT "     -v         Verbose mode\n";
  print STDOUT "     -f fun     Test only function fun\n";
  print STDOUT "     -r rating  Set rating of all functions\n";
  exit(0);
}

if ($opt_g) {
  printf "Score\tRating\tErrors\tFunction\n";
  $FLAGS = "";
}

if ($opt_k) {
  $FLAGS = "$FLAGS -k";
}

if ($opt_v) {
  $FLAGS = "$FLAGS -v";
  $verbose = 1;
} else {
  $verbose = 0;
}

# Set time limit
$FLAGS = $FLAGS . " -T 60";


$totalscore = 0;
$maxscore = 0;
$passed = 0;
$attempted = 0;

if ($opt_f) {
  if ($verbose) {
    print "Looking for function '$opt_f' in $Finfo\n";
  }
  $entry = `grep \"$opt_f \" $Finfo` || die "Couldn't find entry for function '$opt_f'\n";
  chomp $entry;
  ($fun,$rating,$pat) = split(/[ \t]+/, $entry);
  if ($opt_r) {
    $rating = $opt_r;
  }
  $patarg = "";
  if (!($pat eq "all")) {
    $patarg = " -a " . $pat;
  }
  if ($verbose) {
    print "Executing $PROG $FLAGS $patarg -f $Fsolve -p $fun -F $Fref -P test_$fun\n";
  }
  $result =  `$PROG $FLAGS $patarg -f $Fsolve -p $fun -F $Fref -P test_$fun` ||
    die "Executing '$PROG $FLAGS $patarg -f $Fsolve -p $fun -F $Fref -P test_$fun gives ERROR\n$result";
  if (!$opt_g) {
    print $result;
  }
  $attempted++;
  $maxscore += $rating;
  $ok = !($result =~ /\.\. Mismatch/ || $result =~ /Error/);
  $errors = 1-$ok;
  $passed += $ok;
  $score = ($ok*$rating);
  $totalscore += $score;
  if ($opt_g) {
    print " $score\t$rating\t$errors\t$fun\n";
  } else {
    print "Check $fun score: $score/$rating\n";
  }
} else {
  # Try out all functions in file
  open TESTFILE, $Fref || die "Couldn't open reference file $Fref\n";
  while (<TESTFILE>) {
    $line = $_;
    if ($line =~ /[\s]*(unsigned|int)[\s]+test_([a-zA-Z0-9_]+)[\s]*\(/) {
      $funname = $2;
      if ($verbose) {
	print "Testing function '$funname'\n";
	print "Looking for function '$funname' in $Finfo\n";
      }
      $entry = `grep \"$funname \" $Finfo` || die "Couldn't find entry for function '$funname'\n";
      chomp $entry;
      ($fun,$rating,$pat) = split(/[ \t]+/, $entry);
      if ($opt_r) {
	$rating = $opt_r;
      }
      $patarg = "";
      if (!($pat eq "all")) {
	$patarg = " -a " . $pat;
      }
      if ($verbose) {
	print "Executing $PROG $FLAGS $patarg -f $Fsolve -p $fun -F $Fref -P test_$fun\n";
      }
      $result =  `$PROG $FLAGS $patarg -f $Fsolve -p $fun -F $Fref -P test_$fun` ||
	"Executing '$PROG $FLAGS $patarg -f $Fsolve -p $fun -F $Fref -P test_$fun' gives Error\n";
      if (!$opt_g) {
	print $result;
      }
      $attempted++;
      $maxscore += $rating;
      $ok = !($result =~ /\.\. Mismatch/ || $result =~ /Error/);
      $errors = 1-$ok;
      $passed += $ok;
      $score = ($ok*$rating);
      $totalscore += $score;
      if ($opt_g) {
	print " $score\t$rating\t$errors\t$fun\n";
      } else {
	print "Check $fun score: $score/$rating\n";
      }
    }
  }
}

if (!$opt_g) {
  print "Overall correctness score: $totalscore/$maxscore\n";
  if ($passed == $attempted) {
    print "All tests passed\n";
  }
} else {
  print "Total points: $totalscore/$maxscore\n";
}
