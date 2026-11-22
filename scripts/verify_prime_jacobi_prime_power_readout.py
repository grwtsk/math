#!/usr/bin/env python3
"""Exact finite arithmetic return from the prime-Jacobi root moments.

The input is the actual prime-bond sequence. All computations through the
prime-power readout are over integers and rationals. A coefficient at key p
represents that rational coefficient times log(p), formally.

Finite cross-check only: not Lean checking, an all-scale prime bound, or a
Jacobi-eigenvalue/zeta-zero equivalence. No zeta zero enters the computation.
Authors: grwtsk contributors.
"""
from __future__ import annotations

from fractions import Fraction
from math import isqrt, log
import json


def first_primes(count: int) -> list[int]:
    result = []
    candidate = 2
    while len(result) < count:
        if all(candidate % p != 0 for p in result if p * p <= candidate):
            result.append(candidate)
        candidate += 1
    return result


def apply_jacobi(bonds: list[int], u: list[int]) -> list[int]:
    assert len(u) == len(bonds) + 1
    return [
        (bonds[i - 1] * u[i - 1] if i else 0)
        + (bonds[i] * u[i + 1] if i < len(bonds) else 0)
        for i in range(len(u))
    ]


def root_moments(bonds: list[int], last_degree: int) -> list[int]:
    u = [1] + [0] * len(bonds)
    result = [u[0]]
    for _ in range(last_degree):
        u = apply_jacobi(bonds, u)
        result.append(u[0])
    return result


def determinant_bareiss(rows: list[list[int]]) -> int:
    n = len(rows)
    if n == 0:
        return 1
    a = [r[:] for r in rows]
    if n == 1:
        return a[0][0]
    denominator = 1
    sign = 1
    for k in range(n - 1):
        if a[k][k] == 0:
            swap = next((i for i in range(k + 1, n) if a[i][k]), None)
            if swap is None:
                return 0
            a[k], a[swap] = a[swap], a[k]
            sign = -sign
        pivot = a[k][k]
        for i in range(k + 1, n):
            for j in range(k + 1, n):
                numerator = a[i][j] * pivot - a[i][k] * a[k][j]
                assert numerator % denominator == 0
                a[i][j] = numerator // denominator
            a[i][k] = 0
        denominator = pivot
    return sign * a[-1][-1]


def hankel_determinants(moments: list[int], count: int) -> list[int]:
    assert len(moments) >= 2 * (count - 1) + 1
    return [
        determinant_bareiss([[moments[i + j] for j in range(n)]
                             for i in range(n)])
        for n in range(count + 1)
    ]


def recover_positive_bonds(d: list[int], count: int) -> list[int]:
    recovered = []
    for j in range(count):
        assert d[j + 1] > 0
        quotient = Fraction(d[j + 2] * d[j], d[j + 1] ** 2)
        if quotient.denominator != 1:
            raise AssertionError(f"non-integral bond square at {j}")
        bond = isqrt(quotient.numerator)
        if bond * bond != quotient.numerator:
            raise AssertionError(f"non-square bond at {j}")
        recovered.append(bond)
    return recovered


def power_sum_signature(primes: list[int], x: int) -> dict[int, Fraction]:
    """Rational coefficient of each formal symbol L_p = log(p) in S(x)."""
    out = {}
    for p in primes:
        power = p
        while power <= x:
            out[p] = out.get(p, Fraction()) + Fraction(x, power) - 1
            power *= p
    return {p: c for p, c in out.items() if c}


def independent_prime_power_base(n: int) -> int | None:
    """Test n=p**h via integer division without using the bond list."""
    if n < 2:
        return None
    factor = 2
    base = None
    remaining = n
    while factor * factor <= remaining:
        if remaining % factor == 0:
            if base is not None:
                return None
            base = factor
            while remaining % factor == 0:
                remaining //= factor
        factor += 1
    if remaining > 1:
        if base is not None:
            return None
        base = remaining
    return base


def independently_factored_signature(x: int) -> dict[int, Fraction]:
    out = {}
    for n in range(2, x + 1):
        p = independent_prime_power_base(n)
        if p is not None:
            out[p] = out.get(p, Fraction()) + Fraction(x, n) - 1
    return {p: c for p, c in out.items() if c}


def truncated_euler_coefficients(primes: list[int], x: int) -> dict[int, int]:
    """Formal coefficients in product_p sum_h p**(-h*s), through n<=x."""
    coefficients = {1: 1}
    for p in primes:
        next_terms = {}
        for n, c in coefficients.items():
            power = 1
            while n * power <= x:
                next_terms[n * power] = next_terms.get(n * power, 0) + c
                power *= p
        coefficients = next_terms
    return coefficients


def check() -> dict:
    count = 12
    bonds = first_primes(count)
    x = bonds[-1]  # all primes <= x are included
    moments = root_moments(bonds, 2 * count)
    d = hankel_determinants(moments, count + 1)

    for k in range(count + 2):
        expected = 1
        for j in range(k - 1):
            expected *= bonds[j] ** (2 * (k - 1 - j))
        assert d[k] == expected
    recovered = recover_positive_bonds(d, count)
    assert recovered == bonds

    coefficients = power_sum_signature(recovered, x)
    independent = independently_factored_signature(x)
    assert coefficients == independent

    euler = truncated_euler_coefficients(recovered, x)
    assert euler == {n: 1 for n in range(1, x + 1)}

    perturbations = 0
    for j in range(count):
        changed = bonds[:]
        changed[j] += 1
        changed_moments = root_moments(changed, 2 * count)
        assert changed_moments[:2 * j + 2] == moments[:2 * j + 2]
        assert changed_moments[2 * j + 2] != moments[2 * j + 2]
        perturbations += 1

    # Worst-case relative determinant error needed for integer rounding:
    #  |Dhat/D - 1| <= delta at ranks j, j+1, j+2.
    for p in recovered:
        delta = Fraction(1, 4 * p + 2)
        assert delta < Fraction(1, 4 * p + 1)
        lower = p * (1 - delta) / (1 + delta)
        upper = p * (1 + delta) / (1 - delta)
        assert p - Fraction(1, 2) < lower <= p
        assert p <= upper < p + Fraction(1, 2)

    s_value = sum(float(c) * log(p) for p, c in coefficients.items())
    return {
        "status": "FINITE_ARITHMETIC_RETURN_EXACT_CHECK_PASS",
        "jacobi_bonds": bonds,
        "root_moments_0_to_8": moments[:9],
        "exact_hankel_determinants_compared": len(d),
        "recovered_bonds": recovered,
        "arithmetic_cutoff_x": x,
        "smoothed_prime_power_log_coefficients": {
            str(p): str(coefficients[p]) for p in sorted(coefficients)
        },
        "independent_mangoldt_factorization_match": True,
        "truncated_euler_product_all_coefficients_equal_one": True,
        "single_bond_falsification_tests": perturbations,
        "certified_determinant_error_rounding_tests": len(recovered),
        "sufficient_relative_determinant_error": "delta < 1 / (4*p_j + 1)",
        "approx_smoothed_prime_sum_S_x": round(s_value, 12),
        "zeta_zero_input": False,
        "all_scale_analytic_bound": "NOT_ESTABLISHED",
        "jacobi_xi_spectral_identity": "OPEN",
        "lean_compilation": "NOT_RUN",
        "kernel_check": "NOT_RUN",
    }


if __name__ == "__main__":
    print(json.dumps(check(), indent=2))
