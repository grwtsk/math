#!/usr/bin/env python3
"""Source-bound diagnostics for the complete centered Vaughan Type-II packet.

This is an additive diagnostic layer over the immutable sampled-return input
closure.  It verifies that closure before use, reconstructs the two center
identities, and expands every retained sample into its atomic, continuum, and
endpoint pieces before taking the six-term quadratic sum.  All reported
acceptance values use the inherited directed integer intervals.

The finite diagnostics do not establish the all-scale packet bound or RH.
"""
from __future__ import annotations

from pathlib import Path
import argparse
import json
import math

from check_sampled_return import verify_inputs
from sampled_source import (
    C,
    CONE,
    CZERO,
    I,
    ONE,
    SCALE,
    TWO,
    ArithmeticModel,
    EnergyAccumulator,
    background_sample,
    cis_minus,
    evaluate,
    factor,
    inverse,
    log_int,
    need,
    pi_interval,
    sqrt_interval,
)


COMPONENTS = ("atomic_atomic", "continuum_continuum", "endpoint_endpoint",
              "atomic_continuum", "atomic_endpoint", "continuum_endpoint")


def complex_real_pair(x: C, y: C) -> I:
    """Real part of x * conjugate(y), with directed interval arithmetic."""
    return x.re * y.re + x.im * y.im


def report_interval(x: I, digits: int = 24) -> dict:
    return x.report(digits)


def interval_abs(x: I) -> I:
    return I(0 if x.lo <= 0 <= x.hi else min(abs(x.lo), abs(x.hi)),
             max(abs(x.lo), abs(x.hi)))


def sum_integral_remainders(X: int, scale: int) -> tuple[I, I, I, I]:
    """Return e0,e1,d0,d1 for Y=X/scale on (Y,2Y]."""
    lo = X // scale + 1
    hi = (2 * X) // scale
    harmonic = I.rat(0)
    log_harmonic = I.rat(0)
    log_sum = I.rat(0)
    for r in range(lo, hi + 1):
        lr = log_int(r)
        harmonic = harmonic + I.rat(1, r)
        log_harmonic = log_harmonic + lr.div(r)
        log_sum = log_sum + lr
    h = log_int(2)
    log_y = log_int(X) - log_int(scale)
    y = I.rat(X, scale)
    count = I.rat(max(0, hi - lo + 1))
    e0 = harmonic - h
    e1 = log_harmonic - h * log_y - h.square().div(2)
    d0 = count - y
    d1 = log_sum - y * (log_y + h.scale(2) - ONE)
    return e0, e1, d0, d1


def type_i_center_remainders(X: int, model: ArithmeticModel) -> tuple[I, I, I]:
    """Exact rho0,rho1 and their elementary common upper bound."""
    q = model.cutoff
    rho0 = I.rat(0)
    rho1_numerator = I.rat(0)
    for d in range(1, q + 1):
        mu = model.mu[d]
        if not mu:
            continue
        _, e1, _, d1 = sum_integral_remainders(X, d)
        rho0 = rho0 + e1.div(d).scale(mu)
        rho1_numerator = rho1_numerator + d1.scale(mu)
        for m in range(2, q + 1):
            factors_m = model.small_factors[m]
            if len(factors_m) != 1:
                continue
            prime = next(iter(factors_m))
            mangoldt = log_int(prime)
            e0, _, d0, _ = sum_integral_remainders(X, d * m)
            rho0 = rho0 - (mangoldt * e0).div(d * m).scale(mu)
            rho1_numerator = rho1_numerator - (mangoldt * d0).scale(mu)
    rho1 = rho1_numerator.div(X)
    bound = log_int(X).scale(3) * inverse(sqrt_interval(I.rat(X))).div(2)
    need(interval_abs(rho0).hi <= bound.lo, "rho0 elementary bound failed")
    need(interval_abs(rho1).hi <= bound.lo, "rho1 elementary bound failed")
    return rho0, rho1, bound


def analyze_row(X: int) -> dict:
    need(isinstance(X, int) and not isinstance(X, bool) and X >= 16 and
         X & (X - 1) == 0, "dyadic X >= 16 required")
    J = X.bit_length() - 1
    q = 1 << (J // 4)
    K = math.isqrt(X)
    if K * K < X:
        K += 1

    model = ArithmeticModel.make(2 * X, q)
    ar, bx, _ = model.density(X)
    a = I.rat(ar.numerator, ar.denominator)
    c = bx - ONE
    type_i = EnergyAccumulator(-a, -bx)
    type_ii = EnergyAccumulator(a, c)
    original = EnergyAccumulator(I.rat(0), -ONE)
    atoms = [CZERO for _ in range(K + 1)]
    sum_v = I.rat(0)
    sum_lambda = I.rat(0)
    lgX = log_int(X)
    h = log_int(2)
    alpha = pi_interval() * inverse(h)

    for n in range(X + 1, 2 * X + 1):
        fi, fii, fl = model.forms(n)
        vi = evaluate(fi)
        vii = evaluate(fii)
        vl = evaluate(fl)
        sum_v = sum_v + vii
        sum_lambda = sum_lambda + vl
        y = I.rat(n, X)
        r = y - ONE
        ly = evaluate(factor(n, model.spf)) - lgX
        type_i.push(vi.div(n), r, y, ly)
        type_ii.push(vii.div(n), r, y, ly)
        original.push(vl.div(n), r, y, ly)

        if not fii:
            continue
        atom_weight = vii.div(n) * sqrt_interval(y)
        phase = alpha * ly
        base = C(I.rat(-1), I.rat(0)) if n == 2 * X else cis_minus(phase)
        power = CONE
        for k in range(K + 1):
            atoms[k] = atoms[k] + power.times(atom_weight)
            power = power * base
            # The exact phase has modulus one.  This intersection is a global
            # mathematical range bound, not a numerical renormalization.
            power = C(I(max(-SCALE, power.re.lo), min(SCALE, power.re.hi)),
                      I(max(-SCALE, power.im.lo), min(SCALE, power.im.hi)))

    i_parts = type_i.finish()
    ii_parts = type_ii.finish()
    original_parts = original.finish()
    m0 = ii_parts["mass0"]
    m1 = ii_parts["mass1"]

    center_mass_rhs = type_ii.mass + a * h.square().div(2) + c * h
    center_y_rhs = sum_v.div(X) + a * (h.scale(2) - ONE) + c
    original_y_rhs = sum_lambda.div(X) - ONE
    rho0, rho1, rho_bound = type_i_center_remainders(X, model)
    need(center_mass_rhs.overlaps(m0), "m0 identity failed")
    need(center_y_rhs.overlaps(m0 + m1), "m0+m1 identity failed")
    need(original_y_rhs.overlaps(original_parts["mass0"] + original_parts["mass1"]),
         "original-source moment identity failed")
    need((i_parts["mass0"] + m0).overlaps(original_parts["mass0"]),
         "mass source decomposition failed")
    need((i_parts["mass1"] + m1).overlaps(original_parts["mass1"]),
         "first-moment source decomposition failed")
    need(rho0.overlaps(i_parts["mass0"]), "Type-I mass remainder identity failed")
    need(rho1.overlaps(i_parts["mass0"] + i_parts["mass1"]),
         "Type-I y-moment remainder identity failed")
    need(m0.overlaps(original_parts["mass0"] - rho0),
         "Type-II weighted Mangoldt discrepancy identity failed")
    need((m0 + m1).overlaps(original_y_rhs - rho1),
         "Type-II dyadic Mangoldt discrepancy identity failed")

    pieces = {name: I.rat(0) for name in COMPONENTS}
    direct = I.rat(0)
    unweighted_bands: dict[int, I] = {}
    zero_square = None
    rt = sqrt_interval(TWO)

    for k, atomic in enumerate(atoms):
        continuum = background_sample(k, a, c)
        endpoint = C(-(m0 - m1) - rt.scale((-1) ** k) * m1, I.rat(0))
        residual = atomic + continuum + endpoint
        tau = alpha.scale(k)
        multiplicity = 1 if k == 0 else 2
        weight = (inverse(I.rat(1, 4) + tau.square()).scale(multiplicity) *
                  inverse(h.scale(2)))

        values = {
            "atomic_atomic": atomic.norm2(),
            "continuum_continuum": continuum.norm2(),
            "endpoint_endpoint": endpoint.norm2(),
            "atomic_continuum": complex_real_pair(atomic, continuum).scale(2),
            "atomic_endpoint": complex_real_pair(atomic, endpoint).scale(2),
            "continuum_endpoint": complex_real_pair(continuum, endpoint).scale(2),
        }
        for name, value in values.items():
            pieces[name] = pieces[name] + value * weight
        direct = direct + residual.norm2() * weight

        if k == 0:
            zero_square = residual.norm2()
        else:
            band = k.bit_length() - 1
            unweighted_bands[band] = unweighted_bands.get(band, I.rat(0)) + residual.norm2()

    reconstructed = I.rat(0)
    absolute_piece_sum = I.rat(0)
    for name in COMPONENTS:
        reconstructed = reconstructed + pieces[name]
        absolute_piece_sum = absolute_piece_sum + I(
            0 if pieces[name].lo <= 0 <= pieces[name].hi
            else min(abs(pieces[name].lo), abs(pieces[name].hi)),
            max(abs(pieces[name].lo), abs(pieces[name].hi)),
        )
    need(reconstructed.overlaps(direct), "six-term packet reconstruction failed")
    need(zero_square is not None, "zero sample missing")

    cancellation_ratio = None
    if direct.lo > 0:
        cancellation_ratio = (absolute_piece_sum * inverse(direct)).report(12)

    bands = []
    for band, value in sorted(unweighted_bands.items()):
        L = 1 << band
        normalized = value.scale(X).div(L * L)
        bands.append({
            "band": band,
            "k_min": L,
            "k_max": min(K, 2 * L - 1),
            "positive_frequency_unweighted_residual_square_sum": report_interval(value),
            "X_times_sum_over_2_to_2j": report_interval(normalized),
        })

    return {
        "X": X,
        "q": q,
        "K": K,
        "center_identities": {
            "m0_left": report_interval(m0),
            "m0_right": report_interval(center_mass_rhs),
            "m0_plus_m1_left": report_interval(m0 + m1),
            "m0_plus_m1_right": report_interval(center_y_rhs),
            "original_m0_plus_m1": report_interval(original_parts["mass0"] +
                                                     original_parts["mass1"]),
            "psi_difference_over_X_minus_one": report_interval(original_y_rhs),
            "type_I_center_energy": report_interval(i_parts["mass0"].square() +
                                                     i_parts["mass1"].square()),
            "type_I_mass_lattice_remainder_rho0": report_interval(rho0),
            "type_I_y_moment_lattice_remainder_rho1": report_interval(rho1),
            "elementary_common_rho_bound_3_log_X_over_2_sqrt_X":
                report_interval(rho_bound),
        },
        "zero_sample_residual_square": report_interval(zero_square),
        "sample_energy": report_interval(direct),
        "six_term_reconstruction": report_interval(reconstructed),
        "six_terms": {name: report_interval(pieces[name]) for name in COMPONENTS},
        "absolute_piece_sum_over_signed_total": cancellation_ratio,
        "unweighted_positive_frequency_bands": bands,
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", required=True, type=Path)
    parser.add_argument("--max-exponent", type=int, default=10)
    args = parser.parse_args()
    need(4 <= args.max_exponent <= 12, "diagnostic exponent range is 4 through 12")
    args.out.mkdir(parents=True, exist_ok=False)
    binding = verify_inputs()
    rows = []
    for exponent in range(4, args.max_exponent + 1):
        row = analyze_row(1 << exponent)
        rows.append(row)
        print("completed", 1 << exponent, flush=True)
    result = {
        "schema": "vaughan-typeii-complete-packet-analysis-v1",
        "status": "FINITE_COMPLETE_PACKET_IDENTITIES_CHECKED",
        "source_binding_schema": binding["schema"],
        "center_identities": "PROVED_BY_DIRECT_INTEGRATION_AND_CHECKED_FINITELY",
        "quadratic_decomposition": "EXACT_FINITE_IDENTITY_CHECKED_WITH_DIRECTED_INTERVALS",
        "all_scale_arithmetic_bound": "NOT_ESTABLISHED",
        "riemann_hypothesis": "NOT_PROVED",
        "rows": rows,
    }
    (args.out / "report.json").write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")


if __name__ == "__main__":
    main()
