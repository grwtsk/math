"""Exact finite-difference checks on the Frobenius LP's real prime parameter."""
from fractions import Fraction
from itertools import product
from random import Random

from verify_alpoge_odd_orbit_capacity import check, incident_load


def normalized_inverse(p, d):
    r = len(d)
    den = p**r - (-1)**r
    return [sum((-1)**j * p**(r-j) * d[(s-j) % r] for j in range(r)) / den
            for s in range(r)]


def gain(p, d):
    r = len(d)
    t = normalized_inverse(p, d)
    base = sum(d) / (p*p-1)
    if r == 1:
        return p*base, t
    extra = sum(max(0, -v) for v in t) * (1-1/p)
    surplus = (sum(max(0, d[s]-incident_load(p, d, s)) for s in range(r))
               / (p**r+1)) if r % 2 else 0
    return base + extra + surplus, t


def verify(p, q, d):
    W = sum(d)
    fp, xs = gain(p, d)
    fq, ys = gain(q, d)
    for x, v, f in ((p, xs, fp), (q, ys, fq)):
        assert all(x*v[s]+v[s-1] == x*d[s] for s in range(len(d)))
        assert W/(x*x-1) <= f <= x*W/(x*x-1)
        if len(d) > 1 and all(x*d[s] >= d[s-1] for s in range(len(d))):
            assert f == W/(x*x-1)
    assert sum(abs(x-y) for x, y in zip(xs, ys)) <= (q-p)*W/((p-1)*(q-1))
    assert abs(fq-fp) <= 4*W*(1/p-1/q)
    return fp, fq


if __name__ == '__main__':
    n = 0
    rng = Random(36711)
    for r in range(1, 7):
        for d in product((0, 1, 9), repeat=r):
            verify(Fraction(3), Fraction(13, 4), d)
            n += 1
    for r in (3, 4, 5, 6, 9, 13):
        for i in range(45):
            p = Fraction(rng.choice((3, 5, 7, 13)))
            q = p + Fraction(rng.randint(1, 12), rng.randint(1, 40))
            d = [Fraction(rng.randrange(80), rng.randint(1, 8)) for _ in range(r)]
            if i % 3 == 0:
                d[rng.randrange(r)] += p**r
            verify(p, q, d)
            n += 1
            if r % 2:
                check(p, d)
                check(q, d)
    # At p=3 a saturated one-site inverse; at 4 the gain leaves the baseline.
    d = [3, 1, 0, 0]
    f3, f4 = verify(Fraction(3), Fraction(4), d)
    assert f3 == Fraction(1, 2) and f4 > Fraction(4, 15)
    print(f'{n+1} exact two-parameter checks; 360 independent primal/dual '
          'optimality certificates on the odd test cycles')
