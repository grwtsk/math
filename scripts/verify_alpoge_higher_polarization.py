#!/usr/bin/env python3
"""Exact finite controls for the unprojected Honda polarizations at p=3."""
from fractions import Fraction
from functools import lru_cache
from itertools import permutations, product
from math import comb, factorial, prod

from verify_alpoge_sigma_dwork import sigma_moments, vp_scalar


def partitions(total, length, lower=1):
    if length == 1:
        if total >= lower:
            yield (total,)
        return
    for first in range(lower, total // length + 1):
        for tail in partitions(total - first, length - 1, first):
            yield (first, *tail)


def coefficients(rank, cutoff, aligned):
    """Strip c^(total/4); shifting a Honda input by eight changes this by c^(-2)."""
    assert cutoff < 81
    moments = sigma_moments(cutoff // 4)
    corrections = -1 if aligned else 1  # c=-i or c=1
    log_terms = {}
    for weight in range(4, cutoff + 1, 4):
        for alpha in partitions(weight, rank):
            value = Fraction()
            for shifts in product(*(range((a - 1) // 8 + 1) for a in alpha)):
                beta = tuple(a - 8 * j for a, j in zip(alpha, shifts))
                n = sum(beta)
                ways = factorial(n) // prod(factorial(b) for b in beta)
                k = sum(shifts)
                value += (moments[n // 4] * ways * prod(comb(b, j) for b, j in zip(beta, shifts))
                          * Fraction(corrections ** k, 3 ** k))
            if value:
                for monomial in set(permutations(alpha)):
                    log_terms[monomial] = value
    by_degree = {}
    for alpha, val in log_terms.items():
        by_degree.setdefault(sum(alpha), []).append((alpha, val))

    @lru_cache(None)
    def exponential(alpha):
        # Euler's homogeneous derivative identity: E'=E * (log E)'.
        total = sum(alpha)
        if total == 0:
            return Fraction(1)
        if not min(alpha):
            return Fraction()
        value = log_terms.get(alpha, Fraction()) * total
        for degree in range(4, total - rank + 1, 4):
            for beta, coefficient in by_degree.get(degree, ()):
                if all(b < a for a, b in zip(alpha, beta)):
                    residual = tuple(sorted(a-b for a, b in zip(alpha, beta)))
                    value += degree * coefficient * exponential(residual)
        return value / total

    count = bad = 0
    first = None
    for degree in range(4, cutoff + 1, 4):
        for alpha in partitions(degree, rank):
            coefficient = exponential(alpha)
            if not coefficient:
                continue
            mult = factorial(rank) // prod(factorial(alpha.count(k)) for k in set(alpha))
            count += mult
            if vp_scalar(coefficient, 3) < 0:
                bad += mult
                if first is None:
                    first = (alpha, coefficient)
    return count, bad, first


def check_torsion_series(order):
    catalan = [comb(2*n, n) // (n+1) for n in range(order+1)]
    for n in range(1, order+1):
        assert catalan[n] == sum(catalan[j]*catalan[n-1-j] for j in range(n))
    # V=C(-c t^4), U=1+c t^4 V, and UV=1.
    v = [(-1)**n * a for n, a in enumerate(catalan)]
    u = [1, *v[:-1]]
    assert all(sum(u[j]*v[n-j] for j in range(n+1)) == 0 for n in range(1, order+1))


def main():
    check_torsion_series(40)
    for rank, degree in ((4,12),(4,16),(5,12),(5,16),(5,20)):
        for aligned in (True,False):
            count,bad,first = coefficients(rank,degree,aligned)
            expected = {(4,12): (201,4), (4,16): (656,8), (5,12): (365,0),
                        (5,16): (1730,0), (5,20): (5606,190)}
            size, denoms = expected[rank,degree]
            assert count == size and bad == (0 if aligned else denoms)
            if (rank, degree, aligned) == (5, 20, False):
                assert first == ((1, 1, 3, 3, 12), Fraction(-405664, 3))
            print(rank, degree, 'aligned' if aligned else 'misaligned', count, bad, first, flush=True)


if __name__ == '__main__':
    main()
