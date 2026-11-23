#!/usr/bin/env python3
"""Exact cyclotomic tests of Alpoge Frobenius/inertia Fourier projection.

Finite group C2 x C2 x C4 is a transparent model of the source's
E0 x H character bookkeeping. Uses Z[i], Fraction only; it is not
an assertion about theta-lift integrality, host data, or (M).
"""
from fractions import Fraction as Q
from itertools import product

G = tuple(product(range(2), range(2), range(4)))
CHARS = G
N = len(G)
ONE = (Q(1), Q(0))
ZERO = (Q(0), Q(0))
IROOTS = (ONE, (Q(0), Q(1)), (Q(-1), Q(0)), (Q(0), Q(-1)))


def add(x, y):
    return ((x[0]+y[0]) % 2, (x[1]+y[1]) % 2, (x[2]+y[2]) % 4)


def neg(x):
    return ((-x[0]) % 2, (-x[1]) % 2, (-x[2]) % 4)


def sub(x, y):
    return add(x, neg(y))


def mul(z, w):
    return (z[0]*w[0]-z[1]*w[1], z[0]*w[1]+z[1]*w[0])


def conj(z):
    return (z[0], -z[1])


def plus(z, w):
    return (z[0]+w[0], z[1]+w[1])


def scale(z, s):
    return (z[0]*s, z[1]*s)


def char(a, g):
    z = IROOTS[a[2]*g[2] % 4]
    return scale(z, (-1)**(a[0]*g[0]+a[1]*g[1]))


def subgroup(*generators):
    elements = {(0,0,0)}
    while True:
        expanded = elements | {add(x, g) for x in elements for g in generators}
        if expanded == elements:
            return tuple(sorted(elements))
        elements = expanded


def inertia_factor(a, I, x):
    z = ZERO
    for h in I:
        z = plus(z, char(a, add(x, h)))
    return scale(z, Q(1, len(I)))


def ramification_character_is_trivial(a, I):
    return all(char(a, h) == ONE for h in I)


def check():
    subgroups = (
        subgroup(),
        subgroup((1,0,0)),
        subgroup((0,1,0)),
        subgroup((0,0,1)),
        subgroup((1,1,0)),
        subgroup((1,0,0),(0,0,1)),
        subgroup((1,0,0),(0,1,0),(0,0,1)),
    )
    total_factor = total_inverse = total_projection = 0
    for I in subgroups:
        for x in G:
            factor = {a: inertia_factor(a, I, x) for a in CHARS}
            for a in CHARS:
                expected = char(a, x) if ramification_character_is_trivial(a, I) else ZERO
                assert factor[a] == expected, (I, x, a, factor[a], expected)
                total_factor += 1
            for g in G:
                lhs = ZERO
                for a in CHARS:
                    lhs = plus(lhs, mul(conj(char(a, g)), factor[a]))
                lhs = scale(lhs, Q(1, N))
                rhs = (Q(1, len(I)), Q(0)) if sub(g, x) in I else ZERO
                assert lhs == rhs, (I, x, g, lhs, rhs)
                total_inverse += 1
        # P_I f(g) = |I|^{-1}sum_{h in I} f(g+h), independent
        # of any actual automorphic or Galois cohomology data.
        P = [[Q(int(sub(g, x) in I),len(I)) for x in G] for g in G]
        assert all(P[i][j] == P[j][i] for i in range(N) for j in range(N))
        assert sum(P[i][i] for i in range(N)) == Q(N,len(I))
        for i in range(N):
            for j in range(N):
                assert sum(P[i][k]*P[k][j] for k in range(N)) == P[i][j]
                total_projection += 1
        # Local Euler coefficients are precisely 0 when the character
        # is nontrivial on inertia, even at ramified primes.
        for a in CHARS:
            for j in range(1,5):
                xx = (j%2, (2*j)%2, j%4)
                actual = inertia_factor(a,I,xx)
                expected = char(a,xx) if ramification_character_is_trivial(a,I) else ZERO
                assert actual == expected
    print(f'PASS: {len(subgroups)} inertia subgroups of C2 x C2 x C4')
    print(f'PASS: {total_factor} exact ramified/unramified character factors')
    print(f'PASS: {total_inverse} exact fully normalized Fourier inversion equations')
    print(f'PASS: {total_projection} self-adjoint/idempotent projection entries')
    print('NOT_PROVED: actual theta-lift integrality, global arithmetic inequality (M), RH')


if __name__ == '__main__':
    check()
