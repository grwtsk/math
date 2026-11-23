"""Arb enclosure of a mollified Cauchy mean and the transverse zeta bound.

Requires python-flint. The printed bounds use the published verified height.
No zeta zeros or unbounded-height numerical integration enter the calculation.
"""
from fractions import Fraction
from itertools import combinations
from math import gcd, prod

from flint import arb, ctx


def divisors_with_mobius(primes):
    return [(prod(subset), (-1)**size) for size in range(len(primes)+1)
            for subset in combinations(primes, size)]


def finite_covariance(primes):
    """Independent cell integration of the periodic sawtooth variance."""
    q = prod(primes)
    ds = divisors_with_mobius(primes)
    r = prod(1-Fraction(1, p) for p in primes)
    mean = -sum(m for _, m in ds)/Fraction(2)
    measured = Fraction()
    for j in range(q):
        a = sum(m*(j//d) for d, m in ds)-r*j-mean
        measured += a*a-a*r+r*r/3
    measured /= q
    correlation = sum(Fraction(m*n*gcd(d, e)**2, 12*d*e)
                      for d, m in ds for e, n in ds)
    assert measured == correlation == 2**len(primes)*r/12
    for h in range(1, 43):
        count = sum(gcd(n, q) == 1 and gcd(n-h, q) == 1 for n in range(q))
        assert count == prod(p-(1 if h % p == 0 else 2) for p in primes)


def sieve_certificate():
    ctx.prec = 160
    primes = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31)
    q = prod(primes)
    y = arb(3)*10**12
    a = y-arb(1)/2
    L = 1024*y
    H = 18432
    B = 2**len(primes)
    r = prod(1-arb(1)/p for p in primes)
    V = B*r/12
    harmonic = r*(L.log()+arb("0.578")+sum(arb(p).log()/(p-1) for p in primes))+2*B/L
    cross = arb(0)
    for h in range(1, H+1):
        residue_count = prod(p-(1 if h % p == 0 else 2) for p in primes)
        if residue_count:
            cross -= 2*residue_count*(-a*h/L).ei()/q
    cross += 4*3**len(primes)*(1+arb(H).log())/a + 2*harmonic*L/a*(-a*H/L).exp()
    cap = 2*y*r*r*L/(a+1)**2 - 4*y*r/(a*(a+1))*(r*L-B-L/(a+1)-1)
    tail = 8*y*V/L+4*y*q*V/L**2*(1+a/(a-1))
    bound = harmonic+cross+cap+tail
    trace_bound = (bound.log()/2+((y+arb(1)/2)/(y-arb(1)/2)).log())/y
    assert bound > 1 and bound < arb("5.443") and trace_bound < arb("2.824e-13")
    radius = arb("2.29e12")
    phase = radius*trace_bound/(1-(radius/y)**2)
    assert phase < arb.pi()/2
    print("q", q, "mean-square upper bound", bound.str(18))
    print("harmonic, cross, centering, tail", *(x.str(16) for x in [harmonic, cross, cap, tail]))
    print("upper bound on D", trace_bound.str(18))
    print("phase bound at 2.29e12", phase.str(18))
    print("upper bound on unit-disk determinant relative error",
          ((trace_bound/(1-1/y**2)).sinh()**2).str(18))


if __name__ == "__main__":
    for ps in [(2,), (2, 3), (3, 5), (2, 3, 5, 7), (2, 5, 11)]:
        finite_covariance(ps)
    print("5 exact covariance checks, 210 residue-pair counts")
    sieve_certificate()
