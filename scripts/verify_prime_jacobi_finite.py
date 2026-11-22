#!/usr/bin/env python3
"""Independent exact-integer prime-knot Jacobi section controls.

No zeta-zero ordinates enter the Jacobi matrix. This checks actual prime
weights, finite graph symmetry, Dirichlet positivity and the canonical
continuant recurrence with purely integer arithmetic. NOT a Lean proof,
not an independent operator/ζ spectral correspondence, not RH.
"""
from __future__ import annotations

import json
import random
from itertools import zip_longest


def first_primes(count: int) -> list[int]:
    primes: list[int] = []
    n = 2
    while len(primes) < count:
        if all(n % p != 0 for p in primes if p * p <= n):
            primes.append(n)
        n += 1
    return primes


def jacobi_action(primes: list[int], f: list[int]) -> list[int]:
    n = len(f)
    return [
        (primes[i - 1] * f[i - 1] if i else 0)
        + (primes[i] * f[i + 1] if i + 1 < n else 0)
        for i in range(n)
    ]


def laplace_action(primes: list[int], f: list[int]) -> list[int]:
    n = len(f)
    return [
        (primes[i - 1] * (f[i] - f[i - 1]) if i else 0)
        + (primes[i] * (f[i] - f[i + 1]) if i + 1 < n else 0)
        for i in range(n)
    ]


def add(a: list[int], b: list[int]) -> list[int]:
    return [x + y for x, y in zip_longest(a, b, fillvalue=0)]


def sub(a: list[int], b: list[int]) -> list[int]:
    return [x - y for x, y in zip(a, b)]


def shift(a: list[int]) -> list[int]:
    return [0] + list(a)


def scale(a: list[int], c: int) -> list[int]:
    return [x * c for x in a]


def continuant(primes: list[int], n: int) -> list[int]:
    """Ascending coefficients of det(XI - J_n), via tridiagonal expansion."""
    p0, p1 = [1], [0, 1]
    if n == 0:
        return p0
    if n == 1:
        return p1
    for dim in range(2, n + 1):
        p0, p1 = p1, add(shift(p1), scale(p0, -primes[dim - 2] ** 2))
        p1 += [0] * (dim + 1 - len(p1))
    return p1


def check() -> dict:
    max_n = 64
    primes = first_primes(1024)
    assert primes[:6] == [2, 3, 5, 7, 11, 13]
    rng = random.Random(20261122)
    test_count = 0
    for n in range(1, max_n + 1):
        f = [rng.randint(-7, 7) for _ in range(n)]
        g = [rng.randint(-7, 7) for _ in range(n)]
        Jf, Jg = jacobi_action(primes, f), jacobi_action(primes, g)
        assert sum(x * y for x, y in zip(Jf, g)) == \
               sum(x * y for x, y in zip(f, Jg))
        Lf = laplace_action(primes, f)
        energy = sum(x * y for x, y in zip(f, Lf))
        expected = sum(primes[i] * (f[i] - f[i + 1]) ** 2
                       for i in range(n - 1))
        assert energy == expected >= 0
        assert laplace_action(primes, [3] * n) == [0] * n
        polynomial = continuant(primes, n)
        assert len(polynomial) == n + 1
        assert polynomial[-1] == 1
        assert all(c == 0 for j, c in enumerate(polynomial)
                   if (n - j) % 2)
        if n % 2 == 1:
            assert polynomial[0] == 0
        test_count += 1

    assert continuant(primes, 1) == [0, 1]
    assert continuant(primes, 2) == [-4, 0, 1]   # eigenvalues ±2
    assert continuant(primes, 3) == [0, -13, 0, 1]  # eigenvalues 0, ±√13

    # Deliberate counterexample to "every finite prime operator eigenvalue
    # corresponds to a zeta ordinate": J_1 has eigenvalue zero by construction.
    # The original ζ(1/2) is not zero (not certified here; separate analytic fact).
    assert jacobi_action(primes, [1]) == [0]

    return {
        "status": "EXACT_FINITE_JACOBI_CONTROLS_PASS",
        "prime_data_source": "generated actual integer primes, never zeta zeros",
        "tested_dimensions": list(range(1, max_n + 1)),
        "tested_count": test_count,
        "symmetric_adjacency_dot": True,
        "laplacian_quadratic_energy_exact": True,
        "laplacian_nonnegative_for_test_signals": True,
        "constant_laplacian_zero": True,
        "continuant_monic_and_parity": True,
        "odd_rank_finite_spectral_zero": True,
        "first_three_continuants": {
            "n1": [0, 1],
            "n2": [-4, 0, 1],
            "n3": [0, -13, 0, 1],
        },
        "observed_prime_reciprocal_partial_sum_1024":
            sum(1 / p for p in primes),
        "carleman_l2_operator_closure_in_lean": "NOT_RUN",
        "zeta_spectral_correspondence": "NOT_ESTABLISHED",
        "rh_from_prime_spectrum": "CONDITIONAL_THEOREM_ONLY",
    }


if __name__ == "__main__":
    print(json.dumps(check(), indent=2))
