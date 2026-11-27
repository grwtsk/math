"""Enclose the total rational Bernoulli energy through n=511, using only integers."""
from fractions import Fraction
from math import comb, factorial, isqrt

LIMIT = 511
SCALE = 1 << 800
TERMS = 265


def up(a, b):
    return -((-a) // b)


def log_unit(a, b):
    """Scaled enclosure for log((b+a)/(b-a)), 0<=a/b<=1/3."""
    assert 0 <= 3*a <= b
    lo, hi = a*SCALE//b, up(a*SCALE,b)
    clo, chi = lo*lo//SCALE, up(hi*hi,SCALE)
    lower = upper = 0
    for i in range(TERMS):
        den = 2*i+1
        lower += 2*lo//den
        upper += up(2*hi,den)
        lo, hi = lo*clo//SCALE, up(hi*chi,SCALE)
    return lower, upper + up(3*SCALE,3**(2*TERMS+1))


LOG2 = log_unit(1,3)


def log_fraction(v):
    a,b = v.numerator, v.denominator
    k = a.bit_length()-b.bit_length()
    if (a < b<<k if k>=0 else a<<(-k)<b):
        k -= 1
    if k>=0:
        b <<= k
    else:
        a <<= -k
    assert b<=a<2*b
    lo,hi=log_unit(a-b,a+b)
    return lo+min(k*t for t in LOG2), hi+max(k*t for t in LOG2)


def moments():
    even=[Fraction(1)]
    for h in range(1,LIMIT+2):
        # sum_{j=0}^{2h} binom(2h+1,j) B_j=0; B_1=-1/2.
        residual = sum(comb(2*h+1,2*j)*x for j,x in enumerate(even)) - Fraction(2*h+1,2)
        even.append(-residual/(2*h+1))
    return [Fraction(6*10**k*factorial(k),factorial(2*k))*abs(even[k+1]) for k in range(LIMIT+1)]


def main():
    values=moments()
    assert values[:4]==[1,1,Fraction(25,21),Fraction(5,3)]
    logs = [log_fraction(v) for v in values]
    upper_sum=0
    for n in range(2,LIMIT+1):
        lower=upper=0
        weight=1
        for k in range(n+1):
            lo, hi=logs[k]
            if weight<0:
                lo,hi=hi,lo
            lower+=weight*lo
            upper+=weight*hi
            weight=-weight*(n-k)//(k+1)
        mag=max(abs(lower),abs(upper))
        assert 4*mag < SCALE
        # |exp(d)-1| <= |d| exp(1/4) < 4|d|/3.
        upper_sum+=isqrt(n)*mag**2
    upper=Fraction(16*upper_sum,9*SCALE**2)
    assert upper<Fraction(1,16)
    print(f'PASS n=2..{LIMIT}: total rational energy < {up(upper.numerator*10**9,upper.denominator)}/10^9 < 1/16.')
    print(f'Scaled logarithm intervals use {SCALE.bit_length()-1} bits and {TERMS} atanh terms.')


if __name__=='__main__':
    main()
