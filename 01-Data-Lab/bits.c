/*
 * bitXnor - ~(x^y) using only ~ and |
 *   Example: bitXnor(6, -5) = 2
 *   Legal ops: ~ |
 *   Max ops: 7
 *   Rating: 1
 */
int bitXnor(int x, int y) {
    // 对称差的补集 = (x∪y的补集)∪(x∩y)
    return ~(x | y) | ~(~x | ~y);
}
/*
 * bitConditional - x ? y : z for each bit respectively
 *   Example: bitConditional(0b00110011, 0b01010101, 0b00001111) = 0b00011101
 *   Legal ops: & | ^ ~
 *   Max ops: 4
 *   Rating: 1
 */
int bitConditional(int x, int y, int z) {
    // 利用 & 的短路特性，xi=1执行y，否则执行z
    return (x & y) | ((~x) & z);
}
/*
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 16
 *  Rating: 2
 */
int byteSwap(int x, int n, int m) {
    // 首先保存原始x，然后在对应的byte上按位与消去，再按位或上交换后的byte
    int origin = x, clip_mask, swap_mask;
    n <<= 3, m <<= 3;
    clip_mask = ~((0xff << n) | (0xff << m));
    x &= clip_mask;
    swap_mask = (0xff & (origin >> n)) << m | (0xff & (origin >> m)) << n;
    x |= swap_mask;
    return x;
}
/*
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int logicalShift(int x, int n) {
    // 对Tmin（最高位为1）执行同样的右移操作，然后左移一位取反即得所需掩码
    int mask = ~(1 << 31 >> n << 1);
    return x >> n & mask;
}
/*
 * cleanConsecutive1 - change any consecutive 1 to zeros in the binary form of x.
 *   Consecutive 1 means a set of 1 that contains more than one 1.
 *   Examples cleanConsecutive1(0x10) = 0x10
 *            cleanConsecutive1(0xF0) = 0x0
 *            cleanConsecutive1(0xFFFF0001) = 0x1
 *            cleanConsecutive1(0x4F4F4F4F) = 0x40404040
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 4
 */
int cleanConsecutive1(int x) {
    // 左右移动一位成为mask，左侧mask要额外考虑算数右移对最高位的影响
    int right_mask = x << 1;
    int left_mask = x >> 1 & ~(1 << 31);
    x &= ~(right_mask | left_mask);
    return x;
}
/*
 * leftBitCount - returns count of number of consective 1's in
 *     left-hand (most significant) end of word.
 *   Examples: leftBitCount(-1) = 32, leftBitCount(0xFFF0F0F0) = 12
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 50
 *   Rating: 4
 */
int leftBitCount(int x) {
    // 采用二分法，注意到返回的ans结果一定可以分解为2的幂次(Power of Two)之和。
    // 所以，每次判断x的高2^n次是否全为1，然后累积相加即可。每次计算完了之后左移相应的位数。
    int tmin = 1 << 31;
    int ans = 0, pt_16, pt_8, pt_4, pt_2, pt_1, is_neg_1;
    pt_16 = (!(~(x & (tmin >> 15)) >> 16)) << 4;
    ans += pt_16;
    x <<= pt_16;
    pt_8 = (!(~(x & (tmin >> 7)) >> 24)) << 3;
    ans += pt_8;
    x <<= pt_8;
    pt_4 = (!(~(x & (tmin >> 3)) >> 28)) << 2;
    ans += pt_4;
    x <<= pt_4;
    pt_2 = (!(~(x & (tmin >> 1)) >> 30)) << 1;
    ans += pt_2;
    x <<= pt_2;
    pt_1 = (!(~(x & tmin) >> 31));
    ans += pt_1;
    x <<= pt_1;
    is_neg_1 = x >> 31 & 1;
    ans += is_neg_1;
    return ans;
}
/*
 * counter1To5 - return 1 + x if x < 5, return 1 otherwise, we ensure that 1<=x<=5
 *   Examples counter1To5(2) = 3,  counter1To5(5) = 1
 *   Legal ops: ~ & ! | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int counter1To5(int x) {
    // 使用异或判断x是否为5，然后根据结果加1或者减4
    int is_equal = !((~x & 5) | (~5 & x));
    return x + !is_equal + ((is_equal << 31 >> 29));
}
/*
 * sameSign - return 1 if x and y have same sign, and 0 otherwise
 *   Examples sameSign(0x12345678, 0) = 1, sameSign(0xFFFFFFFF,0x1) = 0
 *   Legal ops: ! ~ & ! ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int sameSign(int x, int y) {
    // 分别计算x和y的符号位，然后异或判断是否相同
    int sign = 1 << 31;
    int x_sign = x & sign;
    int y_sign = y & sign;
    return !(x_sign ^ y_sign);
}
/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x) {
    // 利用异或判断符号位是否相同（即是否溢出），并生成溢出标志is_overflow(0xffffffff or 0x0)
    // 然后使用位级条件运算，判断是否需要计算溢出后的值。溢出后的值利用Tmin异或得到。
    int is_overflow, mul_2, mul_3, tmin, x_sign_mask;
    mul_2 = x << 1;
    mul_3 = mul_2 + x;
    is_overflow = (x ^ mul_2) >> 31;
    is_overflow |= (mul_2 ^ mul_3) >> 31;
    tmin = 1 << 31;
    x_sign_mask = x >> 31;
    return (~is_overflow & mul_3) | (is_overflow & ~(x_sign_mask ^ tmin));
}
/*
 * isGreater - if x > y  then return 1, else return 0
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y) {
    // 若x,y符号不同，则必有x不为负且y为负
    // 若x,y符号相同，则必有x-y-1不为负（规避x=y的情况）
    int x_sign = x >> 31;
    int y_sign = y >> 31;
    int if_not_sign_equal = !!(!x_sign & y_sign);
    // 如果x-y>=0，则x+~y的符号位为0
    int x_minus_y = x + ~y;
    int if_sign_equal = !(x_sign ^ y_sign) & !(x_minus_y >> 31);
    return if_not_sign_equal | if_sign_equal;
}
/*
 * subOK - Determine if can compute x-y without overflow
 *   Example: subOK(0x80000000,0x80000000) = 1,
 *            subOK(0x80000000,0x70000000) = 0,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int subOK(int x, int y) {
    // 因为x=y+(x-y)，所以x-y溢出等价于 y 和 (x-y)符号均与x符号不同
    // （考虑课本上那张图，大正数相加得负数，大负数相加得正数）
    return !(((x ^ y) & ((x + ~y + 1) ^ x)) >> 31) & 1;
}
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples: trueFiveEighths(11) = 6
 *            trueFiveEighths(-9) = -5
 *            trueFiveEighths(0x30000000) = 0x1E000000 (no overflow)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 4
 */
int trueFiveEighths(int x) {
    // 对于低3位（不能整除8的部分）特殊处理，因为他们会造成小数部分的误差，需要向零舍入
    // 利用书上给的向零舍入只需+2^3-1=7的办法，以x的符号位算数右移形成对于是否加7的mask即可
    int integer = x >> 3, fraction = x & 7;
    return integer + (integer << 2) + (fraction + (fraction << 2) + (x >> 31 & 7) >> 3);
}
/*
 * float_half - Return bit-level equivalent of expression 0.5*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_half(unsigned uf) {
    // 设置掩码提取各个部分的值，要额外注意浮点数运算存在舍入。
    int sign_mask = 0x80000000, exp_mask = 0x7f800000, frac_mask = 0x7fffff;
    int sign = uf & (sign_mask), exp = uf & exp_mask, frac = uf & frac_mask, round = !((uf & 3) ^ 3);
    if (!exp)
        return sign | ((frac >> 1) + round);
    if (exp == exp_mask) // Inf或者NaN
        return uf;
    if ((exp >> 23) == 1) // 如果Exp=1，那么右移一位后变为0，需要额外判断是否需要舍入
        return sign | (((exp | frac) >> 1) + round);
    // 其他情况，直接在exp上减1即可
    return sign | (((exp >> 23) - 1) << 23 & exp_mask) | frac;
}
/*
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
    unsigned sign = x >> 31 & 1, exp, frac, round;
    int x_exp, frac_mask;
    if (!x) // x=0，会在求x最高非零位时出错，所以特判
        return 0;
    if (!(x ^ (1 << 31))) // x=TMin，会在下一步对x取反过程中出错，所以特判
        return 0xcf << 24;
    if (sign)
        x = -x;
    x_exp = 31;
    while (!(x >> x_exp))
        x_exp--;
    exp = x_exp + 0x7f; // exp+bias
    x <<= (31 - x_exp); // 得到小数部分
    frac_mask = 0x7fffff;
    frac = (x >> 8) & frac_mask;
    round = x & 0xff; // 得到要被舍入的小数部分
    frac += ((round > 0x80) || ((round == 0x80) && (frac & 1))); // 等价于判断是否大于128，或者等于128且最低位为1，即向偶数舍入
    // 对于舍入后进位的情况，因为最高位从23变为24，所以要且上一个掩码，而且增加一位阶码
    if (frac >> 23) {
        frac &= frac_mask;
        exp += 1;
    }
    return sign << 31 | exp << 23 | frac;
}
/*
 * float64_f2i - Return bit-level equivalent of expression (int) f
 *   for 64 bit floating point argument f.
 *   Argument is passed as two unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   double-precision floating point value.
 *   Notice: uf1 contains the lower part of the f64 f
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 20
 *   Rating: 4
 */
int float64_f2i(unsigned uf1, unsigned uf2) {
    // printf("%u%u\n", uf2, uf1);
    unsigned sign = (uf2 >> 31);
    int exp_mask = 0x7ff;
    int exp = ((uf2 >> 20) & exp_mask) - 1023;
    unsigned frac = ((uf2 & 0xfffff) << 11) | (((uf1 >> 21) & exp_mask)) | (0x80000000); // uf2的低20位+uf1的高11位
    if (exp < 0)
        return 0;
    // printf("%d\n", exp);
    if (exp >= 31)
        return 0x80000000;
    // frac <<= exp;
    // printf("%x\n", frac);
    // printf("%x\n", ~(0x80000000 >> (31 - exp) << 1));
    frac = (frac >> (31 - exp)) & ~(0x80000000 >> (31 - exp) << 1);
    if (sign)
        return -frac;
    return frac;
}
/*
 * float_negpwr2 - Return bit-level equivalent of the expression 2.0^-x
 *   (2.0 raised to the power -x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^-x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 *
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while
 *   Max ops: 20
 *   Rating: 4
 */
unsigned float_negpwr2(int x) {
    // 不对x先做到阶码位的转换，因为可能会造成溢出，而是直接判断x的范围，然后返回对应的值
    // -x < -149=1-127-23，即最小的非规格化数
    if (x > 149)
        return 0;
    // -x >= 128=255-127，即最大的阶码
    if (x <= -128)
        return 0x7f800000;
    // -x > -127，即规格化数，此时小数全为0，阶码为-x+127
    if (x < 127)
        return (-x + 127) << 23;
    // -x 介于 -127 和 -149 之间，即非规格化数，阶码位全为0
    return 1 << (149 - x);
}
