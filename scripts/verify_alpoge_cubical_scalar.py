#!/usr/bin/env python3
"""Exact comparison of AHS Definition 2.56 with its sigma scalar frame.

Uses the original elliptic Weierstrass equation y^2=x^3-cx, the local
parameter t=-x/y, the projective chart [x:y:z]=[-t:1:-z^3/B(cz^4)],
and the normalized sigma logarithm m=log(sigma/t). Verifies the
AHS determinant section divided by the precise t-frame equals
exp(-delta^3 m) through formal degree 12 for nine rational test
specializations. It cannot verify all-degree integrality, original
automorphic theta-lift B4, inequality (M), RH or Hilbert-Polya.
Standard library only: exact fractions, no zeta zero data.
"""
from fractions import Fraction as Q

MAX = 36


def clean(a):
    return {n: v for n, v in a.items() if v and 0 <= n <= MAX}


def plus(a, b):
    z = a.copy()
    for n, v in b.items():
        z[n] = z.get(n, Q(0)) + v
    return clean(z)


def neg(a):
    return {n: -v for n, v in a.items()}


def minus(a, b):
    return plus(a, neg(b))


def scale(a, t):
    return clean({n: t*v for n, v in a.items()})


def shift(a, k):
    return clean({n+k: v for n, v in a.items()})


def times(a, b):
    z = {}
    for n, v in a.items():
        for m, w in b.items():
            if n+m <= MAX:
                z[n+m] = z.get(n+m, Q(0)) + v*w
    return clean(z)


def product(items):
    z = {0: Q(1)}
    for a in items:
        z = times(z, a)
    return z


def inverse_unit(a):
    assert a.get(0, 0) != 0
    z = {0: 1/a[0]}
    for n in range(1, MAX+1):
        z[n] = -sum((a.get(k, 0)*z.get(n-k, 0)
                     for k in range(1, n+1)), Q(0))/a[0]
    return clean(z)


def divide(a, b):
    assert a and b
    u, v = min(a), min(b)
    assert u >= v
    return shift(times(shift(a, -u), inverse_unit(shift(b, -v))), u-v)


def ellip_abc(nmax):
    # Let wp=z^-2 A(cz^4), wp'=-2z^-3 B(cz^4).
    # The *actual* elliptic relation gives B^2=A^3-u A.
    a = [Q(1)]
    for n in range(1, nmax+1):
        b = lambda j: (1-2*j)*a[j]
        bb = sum((b(j)*b(n-j) for j in range(1, n)), Q(0))
        aa = sum((a[i]*a[j]*a[n-i-j]
                  for i in range(n+1) for j in range(n-i+1)
                  if max(i, j, n-i-j) < n), Q(0))
        a.append((bb-aa+a[n-1])/(4*n+1))
    b = [(1-2*j)*v for j, v in enumerate(a)]

    def log_unit_coeffs(v):
        output = [Q(0)]
        for n in range(1, len(v)):
            output.append(v[n] -
                          sum((k*output[k]*v[n-k]
                               for k in range(1, n)), Q(0))/n)
        return output

    la, lb = log_unit_coeffs(a), log_unit_coeffs(b)
    mu = [Q(0)] + [-a[n]/(4*n*(4*n-1)) - la[n] + lb[n]
                     for n in range(1, nmax+1)]
    assert mu[:4] == [Q(0), Q(-5, 12), Q(-3, 56), Q(-13, 990)]
    return a, b, mu


A, B, MU = ellip_abc(4)


def projective(a, c):
    # Local projective affine chart y=1 near zero of E_c.
    # x/y=-t(z) and z_projective/y=-z^3/B(cz^4).
    z = lambda coefficients: {4*j: v*c**j*a**(4*j)
                               for j, v in enumerate(coefficients)}
    q = inverse_unit(z(B))
    t = shift(scale(times(z(A), q), Q(a)), 1)
    w = shift(scale(q, -Q(a)**3), 3)
    return t, w


def det3(x, w):
    return plus(plus(times(x[0], minus(w[2], w[1])),
                     times(x[1], minus(w[0], w[2]))),
                times(x[2], minus(w[1], w[0])))


def cubic_difference(q, k):
    return (Q(sum(q)**k)
            - sum(((Q(q[i]+q[j]))**k for i,j in ((0,1),(1,2),(2,0))), Q(0))
            + sum((Q(a)**k for a in q), Q(0)))


def check_case(q, c):
    tw = [projective(a, c) for a in q]
    t, w = [z[0] for z in tw], [z[1] for z in tw]
    x = [neg(v) for v in t]
    minor = lambda i,j: minus(times(x[i], w[j]), times(x[j], w[i]))
    # AHS Definition 2.56 in the chart y_i=1, with d(x/y)=-dt.
    # Divide by the exact I(0) cubical tensor frame
    # e_t=(t12*t23*t13)/(t123*t1*t2*t3) * dt.
    numerator = product([minor(0,1),minor(1,2),minor(2,0),
                         projective(sum(q), c)[0], *t])
    denominator = product([det3(x, w), *w,
                           projective(q[0]+q[1], c)[0],
                           projective(q[1]+q[2], c)[0],
                           projective(q[2]+q[0], c)[0]])
    assert min(numerator)==min(denominator)==16
    ahs_scalar = neg(divide(numerator, denominator))
    # Independently derive normalized Weierstrass sigma logarithm m
    # and the inverse scalar exp(-delta^3 m), through degree 12.
    d4, d8, d12 = [cubic_difference(q, 4*j) for j in (1,2,3)]
    u4 = -MU[1] * c * d4
    u8 = -MU[2] * c*c * d8 + u4*u4/2
    u12 = -MU[3] * c**3 * d12 + u4*(-MU[2]*c*c*d8) + u4**3/6
    assert ahs_scalar.get(0)==1
    assert all(ahs_scalar.get(j, 0)==0 for j in range(1,13) if j%4)
    assert [ahs_scalar.get(k,0) for k in (4,8,12)]==[u4,u8,u12], (q,c)
    return u4,u8,u12


if __name__=='__main__':
    cases = 0
    for c in (Q(1), Q(-1), Q(2)):
        for q in ((1,2,4),(1,3,5),(1,2,6)):
            coeff = check_case(q,c)
            print(f'PASS AHS algebraic determinant vs sigma scalar: c={c},'
                  f' slopes={q}, degrees 0,4,8,12, coefficient_4={coeff[0]}')
            cases += 1
    print(f'PASS: {cases} exact-rational determinant/frame comparisons')
    print('NOT_PROVED by finite checks: general theta B4, full (M), RH, self-adjoint Hilbert–Pólya')
