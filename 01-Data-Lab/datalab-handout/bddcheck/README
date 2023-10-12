This directory contains code implementing a way to formally verify C
functions.  It contains the following files and subdirectories:

Subdirectories:
	cbit	Implements code to symbolically execute C 
		functions at a bit level.  See cbit/README for more information
	cud-X.Y.Z
		Version X.Y.Z of the CUDD BDD package from the University
		of Colorado.

Files:
	check.pl:
		Checks correctness of function implementation.  Must be
		run from parent directory.  Specifically looks for function(s)
		in bits.c and it/their counterpart(s) in tests.c, extracts
		the code from the files, and runs it through cbit.  If it
		finds a discrepancy, it generates a C program to compile
		and test the counterexample.

		Can give it multiple function names on the command line
		
		Usage: bddcheck/check.pl fun1 fun2 ...

	checkprogs.pl, extractfun.pl:
		Helper code used by check.pl

	all-functions.txt:
		Contains information about the argument restrictions for
		the different datalab functions.


