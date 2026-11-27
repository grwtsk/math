"""Check prime-square lower bounds and the ordinary-prime bias at small orders."""
from fractions import Fraction
from math import isqrt
from check_prefix import SCALE, moments, log_fraction

primes = [p for p in range(2,258) if all(p%k for k in range(2,isqrt(p)+1))]


def square_minorant(n):
    # (1-1/p^4)^n >= 1-n/p^4 >= 1/2.
    return sum(Fraction(1,4*p**4) for p in primes if p**4 >= 2*n)


def main():
    logs = [log_fraction(v) for v in moments()]
    for n in range(2,512):
        upper = 0
        weight = 1
        for k in range(n+1):
            lo,hi = logs[k]
            upper += weight * (hi if weight>=0 else lo)
            weight = -weight*(n-k)//(k+1)
        gamma_minorant = Fraction(2,(n-1)*n*(n+1))
        assert Fraction(upper,SCALE) < square_minorant(n)+gamma_minorant, n
    worst = min(isqrt(isqrt((2**j)**3))*square_minorant(2**(j+1)) for j in range(9,27))
    assert worst > Fraction(47,10000)
    # Check the line-zero attenuation with no floating point.
    for r,s in [(16,Fraction(15,1600)),(32,Fraction(46,10000))]:
        prod=Fraction(1)
        for j in range(2,r):
            t=Fraction(4*j+3,4)
            prod*=t*t/(t*t+49)
        assert prod < s*s
    print('PASS: ordinary-prime bias strictly negative at n=2..511.')
    print('PASS: every dyadic block 2^9..2^27 has normalized prime-square minorant > 47/10000.')
    print('PASS: 16- and 32-factor attenuation bounds verified in rational arithmetic.')


if __name__=='__main__':
    main()
