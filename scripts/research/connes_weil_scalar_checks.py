"""Exact scalar algebra checks and non-rigorous finite-chain sanity checks.

No theorem prover, remote service, scheduler, or repository mutation is invoked.
The finite-chain checks use floating-point arithmetic and are not certificates.
"""
from __future__ import annotations

from fractions import Fraction
import json
import math
import random

# Multivariate polynomials over Q, with exponent order a,b,c,d,x,y.
Polynomial = dict[tuple[int, ...], Fraction]
ZERO = (0,) * 6


def const(n: int) -> Polynomial:
    return {ZERO: Fraction(n)} if n else {}


def var(i: int) -> Polynomial:
    powers = list(ZERO)
    powers[i] = 1
    return {tuple(powers): Fraction(1)}


def add(*polys: Polynomial) -> Polynomial:
    result: Polynomial = {}
    for poly in polys:
        for powers, coefficient in poly.items():
            result[powers] = result.get(powers, Fraction(0)) + coefficient
    return {p: c for p, c in result.items() if c}


def mul(*polys: Polynomial) -> Polynomial:
    result = const(1)
    for poly in polys:
        product: Polynomial = {}
        for p, a in result.items():
            for q, b in poly.items():
                powers = tuple(u + v for u, v in zip(p, q))
                product[powers] = product.get(powers, Fraction(0)) + a * b
        result = {p: c for p, c in product.items() if c}
    return result


def main() -> None:
    a, b, c, d, x, y = [var(i) for i in range(6)]
    left = mul(c, add(mul(add(a, d), x, x), mul(const(-2), b, x, y), mul(c, y, y)))
    cy_bx = add(mul(c, y), mul(const(-1), b, x))
    right = add(mul(cy_bx, cy_bx), mul(add(mul(add(a, d), c), mul(const(-1), b, b)), x, x))
    assert add(left, mul(const(-1), right)) == {}, "Schur polynomial identity failed"

    rng = random.Random(20261104)
    exact_cases = 2000
    for _ in range(exact_cases):
        tail = Fraction(rng.randint(1, 30), rng.randint(1, 20))
        defect = Fraction(rng.randint(0, 20), rng.randint(1, 20))
        cross = Fraction(rng.randint(-20, 20), rng.randint(1, 20))
        slack = Fraction(rng.randint(0, 20), rng.randint(1, 20))
        low = cross * cross / tail - defect + slack
        u = Fraction(rng.randint(-30, 30), rng.randint(1, 20))
        v = Fraction(rng.randint(-30, 30), rng.randint(1, 20))
        assert cross * cross <= (low + defect) * tail
        form = low * u * u - 2 * cross * u * v + tail * v * v
        assert -defect * (u * u + v * v) <= form

    worst_eigenvector_residual = 0.0
    worst_correlation_excess = 0.0
    for m in range(1, 65):
        angle = math.pi / (m + 1)
        expected = math.cos(angle)
        sine = [math.sin((j + 1) * angle) for j in range(m)]
        for j in range(m):
            lhs = ((sine[j - 1] if j else 0.0) +
                   (sine[j + 1] if j + 1 < m else 0.0)) / 2
            worst_eigenvector_residual = max(worst_eigenvector_residual,
                                              abs(lhs - expected * sine[j]))
        for _ in range(50):
            z = [complex(rng.uniform(-1, 1), rng.uniform(-1, 1)) for _ in range(m)]
            norm_squared = sum(abs(w) ** 2 for w in z)
            correlation = sum(z[j + 1] * z[j].conjugate() for j in range(m - 1))
            excess = abs(correlation) - expected * norm_squared
            worst_correlation_excess = max(worst_correlation_excess, excess)
            assert excess <= 1e-11
    assert worst_eigenvector_residual < 1e-12

    # Exact hidden-negative-direction counterexample.
    for epsilon in [Fraction(1, n) for n in range(1, 101)]:
        assert -(Fraction(0) ** 2) + epsilon * Fraction(1) ** 2 == epsilon
        assert -(Fraction(1) ** 2) + epsilon * Fraction(0) ** 2 == -1

    # Coordinate narrowing, including both endpoints, uses exact rationals.
    for i in range(101):
        real_part = Fraction(1, 8) + Fraction(3, 4) * Fraction(i, 100)
        imaginary_xi_coordinate = Fraction(1, 2) - real_part
        assert abs(imaginary_xi_coordinate) <= Fraction(3, 8)

    print(json.dumps({
        "universal_polynomial_identity": "exact rational coefficient cancellation",
        "schur_inequality_rational_examples": exact_cases,
        "hidden_negative_direction_rational_examples": 100,
        "strip_narrowing_rational_examples": 101,
        "finite_chain_sizes": [1, 64],
        "finite_chain_random_examples": 3200,
        "finite_chain_status": "floating-point sanity checks, not proof",
        "max_sine_eigenvector_residual": worst_eigenvector_residual,
        "max_correlation_bound_excess": worst_correlation_excess,
        "lean_kernel_check": "not performed",
        "riemann_hypothesis_proved": False
    }, indent=2))


if __name__ == "__main__":
    main()
