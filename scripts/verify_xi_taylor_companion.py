#!/usr/bin/env python3
"""Exact finite tests of the coefficient-only Xi Fredholm companion.

The universal finite determinant theorem is proved algebraically in the
adjacent mathematical exposition. This test uses rational data and no
Riemann zeros. An OPTIONAL mpmath run probes original xi coefficients;
it does not certify the whole analytic theorem or RH.
"""
from fractions import Fraction as Q
from math import factorial


def determinant(A):
    """Exact Gaussian elimination over rational numbers."""
    A = [row[:] for row in A]
    n = len(A)
    d = Q(1)
    for j in range(n):
        pivot = next((k for k in range(j, n) if A[k][j]), None)
        if pivot is None:
            return Q(0)
        if pivot != j:
            A[j], A[pivot] = A[pivot], A[j]
            d = -d
        v = A[j][j]
        d *= v
        for k in range(j + 1, n):
            t = A[k][j] / v
            for h in range(j + 1, n):
                A[k][h] -= t * A[j][h]
            A[k][j] = Q(0)
    return d


def companion(a, q):
    r"""K_N=-S_N+e_0\otimes v, with v_j=a_(j+1)/(q_0...q_(j-1))."""
    n = len(a)
    assert len(q) == n - 1 and all(q)
    K = [[Q(0) for _ in range(n)] for _ in range(n)]
    W = Q(1)
    for j in range(n):
        K[0][j] = a[j] / W
        if j + 1 < n:
            K[j + 1][j] = -q[j]
            W *= q[j]
    return K


def fredholm_finite(K, z):
    return determinant([[Q(i == j) + z * K[i][j]
                        for j in range(len(K))] for i in range(len(K))])



def matrix_product(A, B):
    n = len(A)
    return [[sum(A[i][k] * B[k][j] for k in range(n))
             for j in range(n)] for i in range(n)]


def newton_traces(a):
    """Power traces inferred from F(w)=1+sum_(j>=1) a_j*w^j."""
    tau = []
    for n in range(1, len(a) + 1):
        value = ((-1) ** (n - 1)) * n * a[n - 1]
        value += sum(((-1) ** (k - 1)) * a[k - 1] * tau[n - k - 1]
                     for k in range(1, n))
        tau.append(value)
    return tau


def check_exact():
    count = 0
    for n in range(1, 11):
        for mode in range(4):
            a = [Q(((-1) ** (j + mode)) * (j + 3 + mode),
                   (j + 2) * (j + 5 + mode)) for j in range(n)]
            # All q nonzero; no source spectral information is injected.
            q = [Q(j + mode + 2, j * j + j + mode + 5)
                 for j in range(n - 1)]
            K = companion(a, q)
            for z in (Q(-5, 3), Q(0), Q(2, 7)):
                expected = Q(1) + sum(a[j] * z ** (j + 1) for j in range(n))
                assert fredholm_finite(K, z) == expected
                count += 1
            # The finite trace-power identity is the coefficient-only
            # Newton/Hankel return, not yet a positivity result.
            if mode == 0:
                P = [[Q(i == j) for j in range(n)] for i in range(n)]
                for target in newton_traces(a):
                    P = matrix_product(P, K)
                    assert sum(P[j][j] for j in range(n)) == target
            if n >= 3:
                # Non-self-adjointness is structural (K_2,1 != K_1,2).
                assert K[2][1] != K[1][2]
    hostile = [Q(1, 4 * factorial(2 * (j + 1))) for j in range(7)]
    K = companion(hostile, [Q(1, j + 2) for j in range(6)])
    for z in (Q(1), Q(-2), Q(7, 11)):
        assert fredholm_finite(K, z) == 1 + sum(c * z ** (j + 1)
                                                     for j, c in enumerate(hostile))
        count += 1
    print(f"PASS: {count} exact rational Fredholm determinants")
    print("PASS: all finite Newton trace identities through n=10")
    print("PASS: structural non-self-adjointness controls")


def check_actual_xi():
    try:
        import mpmath as mp
    except ImportError:
        print("SKIP: optional numerical original-Xi probe (mpmath absent)")
        return
    mp.mp.dps = 65
    xi = lambda s: s * (s - 1) * mp.power(mp.pi, -s / 2) * mp.gamma(s / 2) * mp.zeta(s) / 2
    center = xi(mp.mpf('0.5'))
    a = [mp.diff(xi, mp.mpf('0.5'), 2 * j) / (mp.factorial(2 * j) * center)
         for j in range(6)]
    assert all(x > 0 for x in a)
    z = mp.mpf('0.5')
    actual = xi(mp.mpf('0.5') + mp.sqrt(z)) / center
    previous = mp.inf
    for n in range(1, 6):
        finite = sum(a[j] * z ** j for j in range(n + 1))
        err = abs(actual - finite)
        assert err < previous
        previous = err
    print("PASS: 65-digit non-certified original-Xi coefficient probe")
    print(f"  first coefficient={mp.nstr(a[1], 18)}, Taylor-tail@1/2={mp.nstr(previous, 10)}")


if __name__ == '__main__':
    check_exact()
    check_actual_xi()
    print('NOT_PROVED: global Newton Hankel PSD, arithmetic (M), RH, self-adjointness')
