This file generates the code for a program called "cbit".  This
program symbolically executes one or more C functions to determine the
Boolean functions representing the return value.  Cbit can then use
either BDDs or a Boolean Satisfiability (SAT) checker to:

1. For a single function, determine whether it always returns the value 1.
2. For multiple functions, determine whether they will always generate
   identical results.

Some notes on cbit:

Each file should consist of a single C function.

It only understands a subset of C: 

* It can only deal with integral data types: long, short,
  char, signed & unsigned.

* It can only evaluate leaf functions, i.e., ones that don't call
  other functions

* It cannot handle goto's.

It requires installation of the CUDD BDD package.  This is located in the
sibling directory ../cudd-X.Y.Z, where X, Y, and Z denote the version number
of the installed package.

Run ./cbit -h for information on how to run the program. The most cryptic part
is how to specify range restrictions on the function arguments.
