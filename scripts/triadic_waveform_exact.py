#!/usr/bin/env python3
"""Exact finite certificates for the triadic primitive additive/multiplicative interface.

Human mathematical direction: R.A. Jacob Martone.
Research architecture and implementation: OpenAI ChatGPT.
MIT. These calculations are exact finite algebra, not Lean acceptance or an RH proof.
"""
from __future__ import annotations

from dataclasses import dataclass
from fractions import Fraction as Q
from math import comb, gcd
import itertools
from pathlib import Path
from typing import Dict, Iterable, List, Mapping, Sequence, Tuple
import argparse
import json


@dataclass(frozen=True, order=True)
class GQ:
    """Gaussian rational."""

    re: Q
    im: Q = Q(0)

    def __add__(self, other: "GQ") -> "GQ":
        return GQ(self.re + other.re, self.im + other.im)

    def __sub__(self, other: "GQ") -> "GQ":
        return GQ(self.re - other.re, self.im - other.im)

    def __neg__(self) -> "GQ":
        return GQ(-self.re, -self.im)

    def __mul__(self, other: "GQ") -> "GQ":
        return GQ(self.re * other.re - self.im * other.im,
                  self.re * other.im + self.im * other.re)

    def scale(self, q: Q) -> "GQ":
        return GQ(q * self.re, q * self.im)

    def conj(self) -> "GQ":
        return GQ(self.re, -self.im)

    def norm_sq(self) -> Q:
        return self.re * self.re + self.im * self.im

    def to_json(self) -> Dict[str, str]:
        return {"re": qstr(self.re), "im": qstr(self.im)}


ZERO = GQ(Q(0), Q(0))
ONE = GQ(Q(1), Q(0))
I = GQ(Q(0), Q(1))


def qstr(x: Q) -> str:
    return str(x.numerator) if x.denominator == 1 else f"{x.numerator}/{x.denominator}"


def mobius(n: int) -> int:
    if n <= 0:
        raise ValueError("mobius expects a positive integer")
    value = 1
    p = 2
    m = n
    while p * p <= m:
        if m % p == 0:
            m //= p
            value = -value
            if m % p == 0:
                return 0
            while m % p == 0:
                m //= p
        p += 1 if p == 2 else 2
    if m > 1:
        value = -value
    return value


def totient(n: int) -> int:
    if n < 0:
        raise ValueError("totient expects n >= 0")
    if n == 0:
        return 0
    return sum(1 for a in range(n) if gcd(a, n) == 1)


def all_triples(X: int) -> List[Tuple[int, int, int]]:
    if X < 0:
        raise ValueError("X must be nonnegative")
    return [(a, b, a + b)
            for a in range(1, X + 1)
            for b in range(1, X + 1 - a)]


def primitive_triples(X: int) -> List[Tuple[int, int, int]]:
    return [t for t in all_triples(X) if gcd(t[0], t[1]) == 1]


def weight(t: Tuple[int, int, int], exponents: Tuple[int, int, int]) -> Q:
    a, b, c = t
    p, q, r = exponents
    if min(p, q, r) < 0:
        raise ValueError("exact finite checker supports nonnegative integer exponents")
    return Q(1, (a ** p) * (b ** q) * (c ** r))


def tornheim_all(X: int, exponents: Tuple[int, int, int]) -> Q:
    return sum((weight(t, exponents) for t in all_triples(X)), Q(0))


def tornheim_primitive(X: int, exponents: Tuple[int, int, int]) -> Q:
    return sum((weight(t, exponents) for t in primitive_triples(X)), Q(0))


def scaling_reconstruction(X: int, exponents: Tuple[int, int, int]) -> Q:
    S = sum(exponents)
    return sum(
        (Q(1, d ** S) * tornheim_primitive(X // d, exponents)
         for d in range(1, X // 2 + 1)),
        Q(0),
    )


def mobius_reconstruction(X: int, exponents: Tuple[int, int, int]) -> Q:
    S = sum(exponents)
    return sum(
        (Q(mobius(d), d ** S) * tornheim_all(X // d, exponents)
         for d in range(1, X // 2 + 1)),
        Q(0),
    )


def primitive_count(X: int) -> int:
    return len(primitive_triples(X))


def totient_count(X: int) -> int:
    return sum(totient(c) for c in range(2, X + 1))


def pairwise_coprime_of_primitive(t: Tuple[int, int, int]) -> bool:
    a, b, c = t
    return gcd(a, b) == gcd(a, c) == gcd(b, c) == 1


def sym_anti(x: GQ, y: GQ) -> Tuple[GQ, GQ]:
    return ((x + y).scale(Q(1, 2)), (x - y).scale(Q(1, 2)))


def reflection_energy_identity(x: GQ, y: GQ) -> bool:
    s, a = sym_anti(x, y)
    return x.norm_sq() + y.norm_sq() == 2 * (s.norm_sq() + a.norm_sq())


def re_inner(x: GQ, y: GQ) -> Q:
    return (x * y.conj()).re


def triadic_energy(x: GQ, y: GQ, z: GQ) -> Q:
    return (x + y + z).norm_sq()


def triadic_energy_expansion(x: GQ, y: GQ, z: GQ) -> Q:
    return (
        x.norm_sq() + y.norm_sq() + z.norm_sq()
        + 2 * re_inner(x, y)
        + 2 * re_inner(x, z)
        + 2 * re_inner(y, z)
    )


def finite_difference_measure(order: int) -> Dict[int, int]:
    if order <= 0:
        raise ValueError("order must be positive")
    return {j: (-1) ** j * comb(order, j) for j in range(order + 1)}


def signed_moment(measure: Mapping[int, int], degree: int) -> int:
    return sum(mass * (x ** degree) for x, mass in measure.items())


def parity_distribution(even: bool) -> Dict[Tuple[int, int, int], Q]:
    points = []
    for x, y, z in itertools.product((-1, 1), repeat=3):
        parity = x * y * z
        if (parity == 1) == even:
            points.append((x, y, z))
    return {p: Q(1, len(points)) for p in points}


def distribution_moment(dist: Mapping[Tuple[int, int, int], Q], powers: Tuple[int, int, int]) -> Q:
    return sum(
        prob * (x ** powers[0]) * (y ** powers[1]) * (z ** powers[2])
        for (x, y, z), prob in dist.items()
    )


def full_lattice_translate(point: Tuple[int, int, int], u: int, v: int) -> Tuple[int, int, int]:
    a, b, c = point
    return a + u, b + v, c + u + v


def swap_ab(point: Tuple[int, int, int]) -> Tuple[int, int, int]:
    a, b, c = point
    return b, a, c


def difference_translate(point: Tuple[int, int, int], k: int) -> Tuple[int, int, int]:
    a, b, c = point
    return a + k, b - k, c


def semidirect_action(
    group_element: Tuple[int, int, int], point: Tuple[int, int, int]
) -> Tuple[int, int, int]:
    """(u,v,eps), eps in {1,-1}; eps=-1 swaps before translating."""
    u, v, eps = group_element
    if eps not in (-1, 1):
        raise ValueError("eps must be ±1")
    p = point if eps == 1 else swap_ab(point)
    return full_lattice_translate(p, u, v)


def semidirect_mul(
    g: Tuple[int, int, int], h: Tuple[int, int, int]
) -> Tuple[int, int, int]:
    u, v, eps = g
    x, y, eta = h
    if eps == 1:
        return u + x, v + y, eta
    return u + y, v + x, -eta


def projection_trace(X: int) -> int:
    """One channel per primitive additive triple."""
    return sum(1 for _ in primitive_triples(X))


def run_checks() -> Dict[str, object]:
    checks: List[Dict[str, object]] = []

    def record(name: str, passed: bool, detail: object = None) -> None:
        checks.append({"name": name, "passed": bool(passed), "detail": detail})
        if not passed:
            raise AssertionError(name)

    # Primitive lattice and totient count.
    count_rows = []
    for X in range(2, 65):
        lhs = primitive_count(X)
        rhs = totient_count(X)
        record(f"primitive-count-X={X}", lhs == rhs, {"count": lhs})
        count_rows.append({"X": X, "count": lhs})

    # Pairwise coprimality follows from a+b=c.
    for X in (8, 16, 32):
        ts = primitive_triples(X)
        record(
            f"pairwise-coprime-X={X}",
            all(pairwise_coprime_of_primitive(t) for t in ts),
            {"triples": len(ts)},
        )

    # Finite scaling and Möbius inversion with every floor retained.
    exponents_list = [(0, 0, 0), (1, 1, 1), (2, 1, 0), (1, 2, 3)]
    tornheim_rows = []
    for exponents in exponents_list:
        for X in (2, 3, 5, 8, 12, 20, 32):
            all_value = tornheim_all(X, exponents)
            primitive_value = tornheim_primitive(X, exponents)
            scale_value = scaling_reconstruction(X, exponents)
            mu_value = mobius_reconstruction(X, exponents)
            record(
                f"scaling-{exponents}-X={X}",
                all_value == scale_value,
                {"all": qstr(all_value), "reconstructed": qstr(scale_value)},
            )
            record(
                f"mobius-{exponents}-X={X}",
                primitive_value == mu_value,
                {"primitive": qstr(primitive_value), "reconstructed": qstr(mu_value)},
            )
            tornheim_rows.append({
                "X": X,
                "exponents": list(exponents),
                "all": qstr(all_value),
                "primitive": qstr(primitive_value),
            })

    # Three-channel complete energy and reflection split.
    gaussians = [
        GQ(Q(0), Q(0)), GQ(Q(1), Q(0)), GQ(Q(0), Q(1)),
        GQ(Q(1, 2), Q(-2, 3)), GQ(Q(-3, 5), Q(7, 4)),
    ]
    for i, x in enumerate(gaussians):
        for j, y in enumerate(gaussians):
            record(f"reflection-energy-{i}-{j}", reflection_energy_identity(x, y))
            for k, z in enumerate(gaussians):
                record(
                    f"triadic-energy-{i}-{j}-{k}",
                    triadic_energy(x, y, z) == triadic_energy_expansion(x, y, z),
                )

    # Fixed reflection slot retains multiplicity and has zero odd component.
    fixed = GQ(Q(7, 3), Q(-2, 5))
    sym, anti = sym_anti(fixed, fixed)
    record("reflection-fixed-slot", sym == fixed and anti == ZERO)

    # Signed square versus squared modulus.
    record(
        "signed-square-not-modulus",
        (I * I).re == -1 and I.norm_sq() == 1,
        {"signed_square": "-1", "modulus_square": "1"},
    )

    # Phase-only models lose amplitude.
    phase = I
    low = phase.scale(Q(1))
    high = phase.scale(Q(2))
    record(
        "phase-only-loses-amplitude",
        low.norm_sq() != high.norm_sq(),
        {"low_energy": qstr(low.norm_sq()), "high_energy": qstr(high.norm_sq())},
    )

    # Finite moments do not determine a signed measure.
    moment_controls = []
    for order in range(1, 9):
        measure = finite_difference_measure(order)
        values = [signed_moment(measure, k) for k in range(order)]
        record(
            f"finite-moment-indeterminacy-order={order}",
            all(v == 0 for v in values) and any(v != 0 for v in measure.values()),
            {"measure": measure, "moments": values},
        )
        moment_controls.append({"order": order, "measure": measure, "moments": values})

    # Pairwise moments do not determine the triadic interaction.
    even = parity_distribution(True)
    odd = parity_distribution(False)
    pair_powers = [(1, 0, 0), (0, 1, 0), (0, 0, 1),
                   (1, 1, 0), (1, 0, 1), (0, 1, 1)]
    record(
        "pairwise-does-not-determine-triple",
        all(distribution_moment(even, p) == distribution_moment(odd, p) for p in pair_powers)
        and distribution_moment(even, (1, 1, 1)) == 1
        and distribution_moment(odd, (1, 1, 1)) == -1,
        {
            "pairwise": [qstr(distribution_moment(even, p)) for p in pair_powers],
            "even_triple": "1",
            "odd_triple": "-1",
        },
    )

    # Full lattice reflection group and the one-dimensional dihedral fiber.
    points = [(0, 0, 0), (1, 2, 3), (-3, 5, 2)]
    for p in points:
        for k in (-3, -1, 0, 2, 4):
            lhs = swap_ab(difference_translate(swap_ab(p), k))
            rhs = difference_translate(p, -k)
            record(f"dihedral-relation-{p}-{k}", lhs == rhs)

    group_elements = [(0, 0, 1), (1, 2, 1), (-1, 3, -1), (4, -2, -1)]
    for g in group_elements:
        for h in group_elements:
            for p in points:
                record(
                    f"semidirect-action-{g}-{h}-{p}",
                    semidirect_action(semidirect_mul(g, h), p)
                    == semidirect_action(g, semidirect_action(h, p)),
                )

    # Positive primitive cone is not translation invariant.
    source = (1, 1, 2)
    translated = full_lattice_translate(source, 1, -1)
    record(
        "primitive-positive-cone-not-translation-invariant",
        translated[1] == 0 and translated[0] + translated[1] == translated[2],
        {"source": source, "translated": translated},
    )

    # Finite-rank counting precursor.
    for X in (2, 4, 8, 16, 32, 64):
        record(
            f"finite-rank-trace-X={X}",
            projection_trace(X) == totient_count(X),
            {"trace": projection_trace(X)},
        )

    return {
        "schema": "grl-twmk-exact-checks-v1",
        "status": "passed",
        "check_count": len(checks),
        "passed_count": sum(1 for c in checks if c["passed"]),
        "checks": checks,
        "primitive_counts": count_rows,
        "tornheim_examples": tornheim_rows,
        "moment_indeterminacy_controls": moment_controls,
        "nonclaims": {
            "Lean_compiled": False,
            "K_theory_pairing_formalized": False,
            "infinite_Tornheim_identity_kernel_checked": False,
            "RH": False,
            "all_height_zero_exclusion": False,
        },
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise FileExistsError(args.output)
    payload = run_checks()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


if __name__ == "__main__":
    main()
