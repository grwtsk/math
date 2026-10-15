#!/usr/bin/env python3
"""Exact finite sectors of the localized Mobius Gram, not an RH proof.

Human mathematical direction: grwtsk contributors.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

For m<n<4m, retain the finite recording cutoff and the ordered-pair factor 2.
The disjoint sectors are divisible rays, other large-gcd pairs, short gaps,
and the remaining core. The written global bounds are -10c<=rays<=0 for
actual Mobius, |large_gcd|<=45c, |short_gap|<=14c, and diagonal<=5c/2.
The core upper bound remains UNPAID. General bounds are written mathematics;
finite interval consistency is not a Lean admission or an equality proof.
"""
from __future__ import annotations

import argparse
from bisect import bisect_right
from fractions import Fraction as Q
from math import gcd, isqrt
import json
from typing import Sequence

from one_third_energy import Interval as I, moebius_coefficients, sixth_root
from dyadic_pickup_localization import (
    Exact, atom_gram, exact, localized_energy, positive_index, precision, source,
)

SECTORS = ("prime_rays", "large_gcd", "short_gap", "core")


def pair_sector(m: int, n: int) -> str:
    """Classify all strict pairs by integer predicates, before any coefficient test."""
    positive_index(m)
    positive_index(n)
    if m >= n:
        raise ValueError("require m<n; the factor two restores the other order")
    if n >= 4 * m:
        return "disjoint"
    if n % m == 0:
        return "prime_rays"  # Quotient is exactly 2 or 3 inside the support.
    g = gcd(m, n)
    if g * g >= m:
        return "large_gcd"
    if (n - m) ** 2 <= m:
        return "short_gap"
    return "core"


def primitive_sector(a: int, b: int, g: int) -> str:
    """Independent primitive-coordinate version of the four predicates."""
    for n in (a, b, g):
        positive_index(n)
    if not a < b < 4 * a or gcd(a, b) != 1:
        raise ValueError("require coprime a<b<4a")
    if a == 1:
        return "prime_rays"
    if g >= a:
        return "large_gcd"
    if g * (b - a) ** 2 <= a:
        return "short_gap"
    return "core"


def primitive_coefficient(a: int, b: int, g: int, mu: Sequence[int]) -> int:
    """mu(ga)mu(gb)=mu(a)mu(b)mu(g)^2*1_(g,ab)=1, when (a,b)=1."""
    for n in (a, b, g):
        positive_index(n)
    if gcd(a, b) != 1:
        raise ValueError("primitive pair must be coprime")
    if max(a, b, g) >= len(mu):
        raise ValueError("Mobius table is too short")
    return mu[a] * mu[b] * mu[g] ** 2 if gcd(g, a * b) == 1 else 0


def _read_interval(value: dict[str, str]) -> I:
    return I(Q(value["lower"]), Q(value["upper"]))


def grouped_sectors(cutoff: Exact, bits: int = 64) -> dict[str, I]:
    """Exact finite gcd regrouping; no Euler product or full-atom substitution."""
    precision(bits)
    x = exact(cutoff, "cutoff")
    if x < 1:
        raise ValueError("cutoff must be at least one")
    N = x.numerator // x.denominator
    mu = moebius_coefficients(N)
    out = {k: I.point(0) for k in SECTORS}
    for a in range(1, N):
        for b in range(a + 1, min(4 * a, N + 1)):
            if gcd(a, b) != 1:
                continue
            for g in range(1, N // b + 1):
                k = primitive_sector(a, b, g)
                coefficient = primitive_coefficient(a, b, g, mu)
                if coefficient == 0:
                    continue
                # Moving physical cutoff x/g is essential, even at touching atoms.
                value = 2 * coefficient * sixth_root(Q(g), bits) ** -10
                value *= atom_gram(a, b, x / g, bits)
                out[k] = (out[k] + value).outward(bits + 16)
    return out


def sector_report(cutoff: Exact, bits: int = 64,
                  coefficients: Sequence[Exact] | None = None,
                  *, primitive_check: bool = False) -> dict[str, object]:
    """Retain all pair sectors; arbitrary test sequences do not inherit Mobius signs."""
    precision(bits)
    if type(primitive_check) is not bool:
        raise TypeError("primitive_check must be boolean")
    if primitive_check and coefficients is not None:
        raise ValueError("the primitive arithmetic check requires actual Mobius")
    x, coeff = source(cutoff, coefficients)
    N = len(coeff) - 1
    signed = {k: I.point(0) for k in SECTORS}
    absolute = {k: I.point(0) for k in SECTORS}
    counts = {k: 0 for k in (*SECTORS, "disjoint")}
    diagonal, positive_core = I.point(0), I.point(0)
    for m in range(1, N + 1):
        diagonal = (diagonal + coeff[m] ** 2 * atom_gram(m, m, x, bits)).outward(bits + 16)
        counts["disjoint"] += max(0, N - 4 * m + 1)
        for n in range(m + 1, min(4 * m, N + 1)):
            sector = pair_sector(m, n)
            counts[sector] += 1
            coefficient = 2 * coeff[m] * coeff[n]
            if coefficient == 0:
                continue  # Exact zero summand only; index membership was already recorded.
            G = atom_gram(m, n, x, bits)
            signed[sector] = (signed[sector] + coefficient * G).outward(bits + 16)
            absolute[sector] = (absolute[sector] + abs(coefficient) * G).outward(bits + 16)
            if sector == "core" and coefficient > 0:
                positive_core = (positive_core + coefficient * G).outward(bits + 16)
    independent = localized_energy(x, bits, coeff)
    gamma = _read_interval(independent["intervals"]["localized_energy"])
    c = atom_gram(1, 1, 4, bits)
    total = sum(signed.values(), diagonal)
    residuals = {"sector_energy_identity": gamma - total}
    if primitive_check:
        grouped = grouped_sectors(x, bits)
        residuals.update({"primitive_" + k: signed[k] - grouped[k] for k in SECTORS})
    values = {"localized_energy": gamma, "diagonal": diagonal,
              "positive_core": positive_core,
              **{k: v for k, v in signed.items()},
              **{"absolute_" + k: v for k, v in absolute.items()},
              "ray_absolute_slack": 10 * c - absolute["prime_rays"],
              "large_gcd_absolute_slack": 45 * c - absolute["large_gcd"],
              "short_gap_absolute_slack": 14 * c - absolute["short_gap"],
              **residuals}
    if coefficients is None:
        values["forward_core_slack"] = signed["core"] + Q(123, 2) * c - gamma
        values["reverse_core_slack"] = gamma + 69 * c - signed["core"]
    return {"cutoff": str(x), "horizon": f"log({x})", "closed_N": N,
            "source": "actual Mobius" if coefficients is None else "bounded test sequence",
            "mobius_ray_sign_theorem_applicable": coefficients is None,
            "ordered_pair_factor": 2, "pair_counts": counts,
            "intervals": {k: v.outward(bits).json() for k, v in values.items()},
            "consistency": {k: v.contains_zero() for k, v in residuals.items()}}


def prime_core_witness(X: int, bits: int = 64) -> dict[str, object]:
    """Finite prime-only lower certificate, with every count computable.

    The PNT is used only in the written infinite-range rejection, not here.
    Trial division is independent of the imported Mobius sieve. Complexity is
    deliberately bounded by the caller's finite X; this is not a fast sieve.
    """
    positive_index(X)
    precision(bits)
    if X < 4:
        raise ValueError("prime witness requires X>=4")
    upper = 5 * X // 4
    primes = [n for n in range(X + 1, upper + 1)
              if all(n % p for p in range(2, isqrt(n) + 1))]
    H = isqrt(upper)
    while 4 * H * H < 5 * X:
        H += 1
    # Count unordered prime pairs with difference >H, without quadratic enumeration.
    pairs = sum(len(primes) - bisect_right(primes, p + H) for p in primes)
    K = len(primes)
    combinatorial = max(0, K * (K - 1 - 2 * H))
    if 2 * pairs < combinatorial:
        raise ArithmeticError("prime pair counting lower bound failed")
    factor = sixth_root(Q(X), bits) ** -10 / 1296
    bound = 2 * pairs * factor
    return {"X": X, "recording_cutoff": 2 * X,
            "prime_interval": {"strict_lower": X, "closed_upper": str(Q(5 * X, 4))},
            "prime_count": K, "gap_cutoff": H, "unordered_separated_pairs": pairs,
            "ordered_pair_count_lower": combinatorial,
            "positive_core_lower_enclosure": bound.outward(bits).json(),
            "negative_recording_cutoff": 4 * X,
            "prime_twice_prime_pairs": K * (K - 1),
            "negative_core_lower_enclosure": (Q(K * (K - 1), 2880)
                * sixth_root(Q(X), bits) ** -10).outward(bits).json(),
            "count_gate_K_ge_4H_plus_2": K >= 4 * H + 2,
            "scope": "finite lower bounds for separate sign parts; not a lower bound for signed core"}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cutoff", type=Q, action="append")
    parser.add_argument("--bits", type=int, default=64)
    parser.add_argument("--primitive-check", action="store_true")
    parser.add_argument("--prime-X", type=int, action="append")
    args = parser.parse_args()
    try:
        records = [sector_report(x, args.bits, primitive_check=args.primitive_check)
                   for x in (args.cutoff or [Q(1), Q(17, 2), Q(16), Q(64)])]
        if any(not all(r["consistency"].values()) for r in records):
            raise ArithmeticError("incompatible finite enclosures")
        result = {"schema": "localized-mobius-pair-sectors-v1",
                  "scope": "finite exact arithmetic and outward enclosures; general proof written only",
                  "uniform_core_bound_proved": False, "lean_replay": "NOT_RUN",
                  "records": records,
                  "prime_witnesses": [prime_core_witness(X, args.bits) for X in (args.prime_X or [])]}
    except (ValueError, TypeError, ArithmeticError) as error:
        parser.exit(2, f"error: {error}\n")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
