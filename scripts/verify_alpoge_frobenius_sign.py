#!/usr/bin/env python3
"""Source-exact finite CM twist/Frobenius-sign regression, NOT RH or B4.

Reuses the published elliptic-point-count and Honda-coordinate helpers
from verify_alpoge_elliptic_cube.py (Git blob
38ac38edc4ed3dd86b49f9a6ac3e7a97f6814c10). Proves no infinite
formal-group theorem computationally; the no-isomorphism proof is in the
adjacent mathematical note and follows from the first p-series term.
"""
from fractions import Fraction as Q
from verify_alpoge_elliptic_cube import points, wp_ratio_and_sigma, coordinate_h, v

CASES = (
    (3, (Q(0), Q(-1))),
    (7, (Q(-1), Q(-1))),
    (11, (Q(0), Q(-1))),
)


def f_q_multiply(x, y, p):
    return ((x[0]*y[0]-x[1]*y[1]) % p, (x[0]*y[1]+x[1]*y[0]) % p)


def f_q_power(x, n, p):
    result = (1, 0)
    while n:
        if n & 1:
            result = f_q_multiply(result, x, p)
        x = f_q_multiply(x, x, p)
        n >>= 1
    return result


def check():
    for p, c_positive in CASES:
        q = p*p
        negative = (Q(1), Q(0))  # E: y^2=x^3-x
        n_negative = points(p, negative)
        n_positive = points(p, c_positive)
        assert n_negative == (p+1)**2
        assert n_positive == (p-1)**2
        assert q + 1 - n_negative == -2*p
        assert q + 1 - n_positive == 2*p
        ratio, _ = wp_ratio_and_sigma((q-1)//4)
        bad_h = coordinate_h(p, negative, q, ratio)
        good_h = coordinate_h(p, c_positive, q, ratio)
        assert bad_h[1] == (Q(1), Q(0))
        assert good_h[1] == (Q(1), Q(0))
        assert v(bad_h[q], p) == -1
        assert v(good_h[q], p) >= 0
        if p == 3:
            assert bad_h[q] == (Q(7, 15), Q(0))
            assert good_h[q] == (Q(1, 5), Q(0))
        # Over F_(p^2), EVERY nonzero slope u obeys u^(p^2-1)=1,
        # hence no slope solves u^(p^2-1)=-1 for odd p.
        for a in range(p):
            for b in range(p):
                if a == 0 and b == 0:
                    continue
                assert f_q_power((a, b), q-1, p) == (1, 0)
        print(f'PASS p={p}: trace(+twist)={2*p}, trace(y^2=x^3-x)={-2*p}, '
              f'v_p([T^{q}]h_bad)=-1, v_p([T^{q}]h_good)>={v(good_h[q],p)}; '
              f'no isomorphism slope in F_{q}')
    print('NOT PROVED: general theta B4, global (M), RH or positive Hilbert–Pólya')


if __name__ == '__main__':
    check()
