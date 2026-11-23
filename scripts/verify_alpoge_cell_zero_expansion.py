#!/usr/bin/env python3
"""Finite arithmetic controls for the weighted Mellin partial fractions of the prime cells."""
from fractions import Fraction as Q
from itertools import product

from verify_alpoge_main_source import H, primes_through, quadratic_symbol, representative


def pair_product(z, w):
    a, b = z
    c, d = w
    return a*c-b*d, a*d+b*c


def reciprocal_real(z):
    a, b = z
    return a/(a*a+b*b)


def check_character_cells():
    # Integer Gaussian Fourier sums on {+1,-1} × (Z/16)^*/{+1,-1}.
    order = {representative(3**k): k for k in range(4)}
    phases = ((1, 0), (0, 1), (-1, 0), (0, -1))
    samples = ramified = 0
    for p in primes_through(400):
        for h in range(1, 9):
            r = p**h
            if r > 200000:
                break
            c = 1-quadratic_symbol(r, 23)
            if p in (2, 3):
                assert not c
                continue
            samples += 1
            ramified += p == 23
            sig = quadratic_symbol(r, 3)
            j = order[representative(r)]
            for v, s in product((-1, 1), H):
                re = im = 0
                for e, k in product(range(2), range(4)):
                    a, b = phases[k*(j-order[s]) % 4]
                    re += a*c*(v*sig)**e
                    im += b*c*(v*sig)**e
                assert (re, im) == (8*c*(v == sig and order[s] == j), 0)
    assert (samples, ramified) == (178, 3)
    print(samples, 'prime powers in eight cells, including', ramified, 'ramified powers')


def check_partial_fractions():
    # A real root, two negative integers and one conjugate nonreal pair.
    # Test all independent possibilities of a pole at 1 and a zero at 0.
    real_roots = {-1: 1, -2: 1, Q(3, 7): 2}
    a, b = Q(1, 3), Q(8, 5)
    count = 0
    for m0, m1, const, s in product((0, 1), (-1, 0), (Q(3, 2), Q(-1, 6)),
                                     (Q(5, 4), Q(3, 2), Q(2), Q(5), Q(11, 3))):
        def regular(t):
            return const + sum(n/(t-u) for u,n in real_roots.items()) + 2*reciprocal_real((t-a, -b))
        c0 = regular(Q(0))-m1
        c1 = regular(Q(1))+m0
        g = regular(s) + m0/s + m1/(s-1)
        result = m0/s**2+(m0+c0)/s - m1/(s-1)**2+(m1-c1)/(s-1)
        for u,n in real_roots.items():
            result -= Q(n)/(u*(u-1)*(s-u))
        den = pair_product(pair_product((a,b),(a-1,b)),(s-a,-b))
        result -= 2*reciprocal_real(den)
        assert result == -g/(s*(s-1))
        count += 1
    print(count, 'exact rational Mellin transforms, with conjugate, origin, pole and trivial terms')


if __name__ == '__main__':
    check_character_cells()
    check_partial_fractions()
