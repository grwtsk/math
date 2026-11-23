#!/usr/bin/env python3
"""Exact bounded checks of the CM elliptic-sigma B4 coordinate-gauge lemma.

This checks both the integral and hostile nonintegral gauge on the *actual*
CM elliptic formal logarithm from verify_alpoge_elliptic_cube.py.
No Alpoge RH theorem, genuine global theta-lift kernel, or zeta zeros enter.
The all-degree theorem is proved algebraically in AlpogeEllipticCubicalB4.md;
these tests do not prove its analytic or global hypotheses.
"""
from fractions import Fraction as Q
from math import factorial
from verify_alpoge_elliptic_cube import wp_ratio_and_sigma

ZERO = (Q(0), Q(0))
ONE = (Q(1), Q(0))
IDX0 = (0, 0, 0)


def gplus(a, b):
    return (a[0] + b[0], a[1] + b[1])


def gmul(a, b):
    return (a[0]*b[0] - a[1]*b[1], a[0]*b[1] + a[1]*b[0])


def gscale(a, r):
    return (a[0]*r, a[1]*r)


def gpower(a, n):
    out = ONE
    for _ in range(n):
        out = gmul(out, a)
    return out


def vp_scalar(x, p):
    if not x:
        return 100_000
    num, den, value = abs(x.numerator), x.denominator, 0
    while num % p == 0:
        num //= p
        value += 1
    while den % p == 0:
        den //= p
        value -= 1
    return value


def vp(a, p):
    return min(vp_scalar(a[0], p), vp_scalar(a[1], p))


class Formal:
    def __init__(self, degree):
        self.N = degree
        self.one = {IDX0: ONE}

    def add(self, a, b):
        out = a.copy()
        for nu, z in b.items():
            out[nu] = gplus(out.get(nu, ZERO), z)
            if out[nu] == ZERO:
                del out[nu]
        return out

    def scale(self, a, s):
        return {k: gscale(z, s) for k, z in a.items() if gscale(z, s) != ZERO}

    def mul(self, a, b):
        out = {}
        for (i, j, k), u in a.items():
            for (a1, b1, c1), v in b.items():
                nu = (i+a1, j+b1, k+c1)
                if sum(nu) <= self.N:
                    out[nu] = gplus(out.get(nu, ZERO), gmul(u, v))
        return {k: v for k, v in out.items() if v != ZERO}

    def pow(self, a, n):
        out = self.one
        while n:
            if n & 1:
                out = self.mul(out, a)
            n //= 2
            if n:
                a = self.mul(a, a)
        return out

    def inv(self, a):
        assert a.get(IDX0) == ONE
        z = self.add(a, {IDX0: (Q(-1), Q(0))})
        out, term = self.one, self.one
        for n in range(1, self.N + 1):
            term = self.mul(term, z)
            if not term:
                break
            out = self.add(out, self.scale(term, Q((-1)**n)))
        assert self.mul(out, a) == self.one
        return out

    def log(self, a):
        assert a.get(IDX0) == ONE
        z = self.add(a, {IDX0: (Q(-1), Q(0))})
        out, term = {}, self.one
        for n in range(1, self.N + 1):
            term = self.mul(term, z)
            if not term:
                break
            out = self.add(out, self.scale(term, Q((-1)**(n+1), n)))
        return out

    def exp(self, z):
        assert z.get(IDX0, ZERO) == ZERO
        out, term = self.one, self.one
        for n in range(1, self.N + 1):
            term = self.mul(term, z)
            if not term:
                break
            out = self.add(out, self.scale(term, Q(1, factorial(n))))
        return out

    def source_project(self, a, p):
        modulus = p*p - 1
        return {nu: z for nu, z in a.items()
                if (nu[0] + nu[1] - p*nu[2]) % modulus == 0}


def L_subset(ring, p, indices):
    result = {}
    exponent, coefficient = 1, Q(1)
    while exponent <= ring.N:
        for index in indices:
            nu = [0, 0, 0]
            nu[index] = exponent
            result[tuple(nu)] = (coefficient, Q(0))
        exponent *= p*p
        coefficient /= p
    return result


def h_E_subset(ring, p, c, ratio, indices):
    """Actual t_E(sum L(T_i)), including the p^2 Frobenius term."""
    L = L_subset(ring, p, indices)
    out = {}
    for n in range((ring.N - 1)//4 + 1):
        scalar = gscale(gpower(c, n), ratio[n])
        terms = ring.pow(L, 4*n + 1)
        out = ring.add(out, {nu: gmul(scalar, z) for nu, z in terms.items()})
    return out


def cubic_gauge(ring, p, c, gauge):
    ratio, _ = wp_ratio_and_sigma((ring.N - 1)//4 + 2)
    family = {}
    for ids in ((0,), (1,), (2,), (0,1), (0,2), (1,2), (0,1,2)):
        t = h_E_subset(ring, p, c, ratio, ids)
        assert all(vp(coef, p) >= 0 for coef in t.values())
        # gauge(t)=1+g1*t+g2*t^2, including a hostile g1=1/p below
        phi = ring.add(ring.add(ring.one, ring.scale(t, gauge[0])),
                       ring.scale(ring.mul(t,t), gauge[1]))
        family[ids] = phi
    U = ring.one
    for ids in ((0,1,2),(0,),(1,),(2,)):
        U = ring.mul(U, family[ids])
    for ids in ((0,1),(0,2),(1,2)):
        U = ring.mul(U, ring.inv(family[ids]))
    assert ring.exp(ring.log(U)) == U
    projected = ring.exp(ring.source_project(ring.log(U), p))
    assert projected[IDX0] == ONE
    return U, projected


def check():
    for p, c, degree in ((3,(Q(0),Q(-1)),11),
                         (7,(Q(-1),Q(-1)),12),
                         (11,(Q(0),Q(-1)),14)):
        ring = Formal(degree)
        unit, projected = cubic_gauge(ring,p,c,(Q(2),Q(3)))
        assert any(k != IDX0 for k in projected)
        assert all(vp(z,p)>=0 for z in unit.values())
        assert all(vp(z,p)>=0 for z in projected.values())
        # Explicitly exhibits that tameness, not naive averaging of
        # coefficient logarithms, preserves B4 integrality.
        print(f'PASS p={p}, degree={degree}: '
              f'integral CM gauge cube {len(unit)} terms, '
              f'original torus-projected root {len(projected)} terms')
    for p,c,degree,nu in ((3,(Q(0),Q(-1)),11,(2,1,1)),
                          (7,(Q(-1),Q(-1)),12,(6,1,1))):
        ring = Formal(degree)
        _, projected = cubic_gauge(ring,p,c,(Q(1,p),Q(0)))
        bad = projected[nu]
        assert vp(bad,p)<0
        if p == 3:
            assert bad == (Q(-1,27),Q(0))
        print(f'PASS hostile p={p}: nonintegral coordinate gauge '
              f'forces v_p(coefficient at {nu})={vp(bad,p)}')
    print('NOT_PROVED: actual theta-kernel scalar identification, global (M), RH or HP')


if __name__ == '__main__':
    check()
