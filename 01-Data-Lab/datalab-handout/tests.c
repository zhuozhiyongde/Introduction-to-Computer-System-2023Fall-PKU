/* Testing Code */

#include <limits.h>
#include <math.h>

/* Routines used by floation point test code */

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

/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
int test_bitXnor(int x, int y)
{
  return ~(x ^ y);
}
int test_bitConditional(int x, int y, int z)
{
  return (y & x) | (z & ~x);
}
int test_byteSwap(int x, int n, int m)
{
    /* little endiamachine */
    /* least significant byte stored first */
    unsigned int nmask, mmask;
    switch(n) {
    case 0:
      nmask = x & 0xFF;
      x &= 0xFFFFFF00;
      break;
    case 1:
      nmask = (x & 0xFF00) >> 8;
      x &= 0xFFFF00FF;
      break;
    case 2:
      nmask = (x & 0xFF0000) >> 16;
      x &= 0xFF00FFFF;
      break;
    default:
      nmask = ((unsigned int)(x & 0xFF000000)) >> 24;
      x &= 0x00FFFFFF;
      break;
    }
    switch(m) {
    case 0:
      mmask = x & 0xFF;
      x &= 0xFFFFFF00;
      break;
    case 1:
      mmask = (x & 0xFF00) >> 8;
      x &= 0xFFFF00FF;
      break;
    case 2:
      mmask = (x & 0xFF0000) >> 16;
      x &= 0xFF00FFFF;
      break;
    default:
      mmask = ((unsigned int)(x & 0xFF000000)) >> 24;
      x &= 0x00FFFFFF;
      break;
    }
    nmask <<= 8*m;
    mmask <<= 8*n;
    return x | nmask | mmask;
}
int test_logicalShift(int x, int n) {
  unsigned u = (unsigned) x;
  unsigned shifted = u >> n;
  return (int) shifted;
}
int test_cleanConsecutive1(int x){
    unsigned ans = 0;
    int idx = 0;
    for(idx = 0; idx < 32; idx++){
        if(!(x >> idx & 1))continue;
        if(idx && (x >> (idx - 1) & 1))continue;
        if(idx < 31 && (x >>(idx + 1) & 1))continue;
        ans += (1u << idx);
    }
    return ans;
}
int test_leftBitCount(int x) {
  int result = 0;
  int i;
  for (i = 31; i >= 0; i--) {
      int bit = (x >> i) & 0x1;
      if (!bit)
   break;
      result ++;
  }
  return result;
}
int test_counter1To5(int x) {
  return x % 5 + 1;
}
int test_sameSign(int x, int y) {
  return (x >= 0) && (y >= 0) || (x < 0) && (y < 0);
}
int test_satMul3(int x)
{
  if ((x+x+x)/3 != x)
    return x < 0 ? 0x80000000 : 0x7FFFFFFF;
  else
    return 3*x;
}
int test_isGreater(int x, int y)
{
  return x > y;
}
int test_subOK(int x, int y)
{
  long long ldiff = (long long) x - y;
  return ldiff == (int) ldiff;
}
int test_trueFiveEighths(int x)
{
  return (int) (((long long int) x * 5)/8);
}
unsigned test_float_half(unsigned uf) {
  float f = u2f(uf);
  float hf = 0.5*f;
  if (isnan(f))
    return uf;
  else
    return f2u(hf);
}
unsigned test_float_i2f(int x) {
  float f = (float) x;
  return f2u(f);
}
int test_float64_f2i(unsigned uf1, unsigned uf2) {
  unsigned sign = uf2 >> 31;
  unsigned exp = (uf2 >> 20) & 0x7FF;
  unsigned val = 0x80000000u | ((uf2 & 0xFFFFF) << 11) | (uf1 >> 21);
  if (exp < 1023) {
    return 0;
  }
  if (exp > 1054)
    return 0x80000000u;
  val = val >> (1054 - exp);
  if (sign) {
    return val > 0x80000000u ? 0x80000000u : -val;
  } else {
    return val > 0x7FFFFFFF ? 0x80000000u : val;
  }
}
unsigned test_float_negpwr2(int x) {
  float result = 1.0;
  float p2 = 0.5;
  int recip = (x < 0);
  /* treat tmin specially */
  if ((unsigned)x == 0x80000000) {
      return 0x7f800000;
  }
  if (recip) {
    x = -x;
    p2 = 2.0;
  }
  while (x > 0) {
    if (x & 0x1)
      result = result * p2;
    p2 = p2 * p2;
    x >>= 1;
  }
  return f2u(result);
}
