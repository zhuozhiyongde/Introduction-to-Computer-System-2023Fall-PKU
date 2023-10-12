**********************
The CS:APP Data Lab
Directions to Students
**********************

Your goal is to modify your copy of bits.c so that it passes all the
tests in the driver program (driver.pl) with full credit.

***************************
1. Testing your bits.c file
***************************

We've provided you with a number of tools to test the puzzle solutions
in your bits.c file. See the lab writeup for details on how to use
them.

btest: This is a C program that links in bits.c. It tests each
function in bits.c by calling it with a large number of different
arguments. Btest is a good place to start debugging your solutions
because it allows you to test one function at a time, and to specify
specific argument values for a specific function.

Each time you modify bits.c, you'll need to rebuild btest:

     unix> make 

BDD checker: The BDD checker is a program that performs an exhaustive
check of the correctness of your puzzle solutions. After you've
debugged your solution to a puzzle using btest, use the BDD checker to
do the authoritative correctness test. If the BDD checker finds an
error, it will provide you with the argument value(s) that gave the
wrong answer.

dlc compiler: Each puzzle in bits.c has a coding guideline that
specifies a limited set of legal operators that you are allowed to
use, and a maximum number of operators.  The dlc (Data Lab
Compiler) tool is a C front-end that checks each puzzle solution for
adherence to the coding guidelines.

driver.pl: This is a driver program that invokes the BDD checker and
dlc to check your solutions in bits.c for correctness and adherence to
the programming guidelines. It also displays your total correctness
score, including points for correctness (awarded to correct functions
that use only legal operators) and performance (awarded to correct
functions that use less than the maximum number of operators).	This is
the identical program that Autolab uses when it autogrades your
submissions.

******************
2. Helper programs
******************

We have included the ishow and fshow programs to help you decipher
integer and floating point representations respectively. Each takes a
single decimal or hex number as an argument. To build them type:

    unix> make

Example usages:

    unix> ./ishow 0x27
    Hex = 0x00000027,	Signed = 39,	Unsigned = 39

    unix> ./ishow 27
    Hex = 0x0000001b,	Signed = 27,	Unsigned = 27

    unix> ./fshow 0x15213243
    Floating point value 3.255334057e-26
    Bit Representation 0x15213243, sign = 0, exponent = 0x2a, fraction = 0x213243
    Normalized.  +1.2593463659 X 2^(-85)

    linux> ./fshow 15213243
    Floating point value 2.131829405e-38
    Bit Representation 0x00e822bb, sign = 0, exponent = 0x01, fraction = 0x6822bb
    Normalized.  +1.8135598898 X 2^(-126)

*********
3. Files:
*********

Makefile	- Compiles btest, fshow, and ishow
README		- This file

bits.c		- The file you will be modifying and handing in
bits.h		- Header file

bddcheck/	- Directory containing the BDD checker

btest.c		- The main btest program
  btest.h	- Used to build btest
  decl.c	- Used to build btest
  tests.c       - Used to build btest
  tests-header.c- Used to build btest

dlc*		- Rule checking compiler binary (data lab compiler)	 

driver.pl*	- Driver program that uses the bdd checker and dlc to autograde bits.c
  Driverhdrs.pm - Driver config file
  Driverlib.pm	- Driver library file

fshow.c		- Helper for examining floating-point representations
ishow.c		- Helper for examining integer representations

