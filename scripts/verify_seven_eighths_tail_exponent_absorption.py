#!/usr/bin/env python3
"""Exact rational check of the power-tail exponent step, NOT an OAI proof.

At beta=9/10, theta=15/16 and x=m^80:
 I(x) >= -(K/(1-beta)) x^(beta-1) = -10K/m^8,
 target >= -x^(theta-1) = -1/m^5 iff m^3 >= 10K.
The example is only rational exponent algebra; genuine OAI zero-free,
Perron Chebyshev transfer, and native Gm normalization are separate.
"""
import argparse
import json
from fractions import Fraction as Q
from pathlib import Path


def run():
    beta, theta = Q(9, 10), Q(15, 16)
    assert Q(7, 8) < beta < theta < 1
    assert theta - beta == Q(3, 80)
    cases = []
    initial_failures = 0
    for K in (Q(0), Q(1, 10), Q(1), Q(3), Q(7), Q(10), Q(23), Q(50), Q(100)):
        for m in (1, 2, 3, 4, 5, 6, 8, 10, 15):
            x = m ** 80
            lower = -(K / (1 - beta)) * Q(1, m ** 8)
            threshold = -Q(1, m ** 5)
            passes = lower >= threshold
            exact_rewrite = m ** 3 >= 10 * K
            assert passes == exact_rewrite
            if not passes: initial_failures += 1
            cases.append({"K": str(K), "m": m, "x_exponent": 80,
                          "certified_lower": str(lower), "target": str(threshold),
                          "passes": passes})
    assert initial_failures > 0
    # Pure exact improper-integral computation:
    # R(t) = -K t^beta => I(x) = -K/(1-beta) x^(beta-1).
    # At rational exponent power x=m^80, each side above is rational.
    # A power bound beta >= theta cannot be absorbed with a fixed K.
    for bad_beta in (theta, Q(19, 20)):
        assert not bad_beta < theta
        for m in (2, 8, 100):
            # explicit ratio (K/(1-beta))*x^(bad_beta-theta)
            exponent = (bad_beta-theta)*80
            assert exponent.denominator == 1
            ratio = Q(1, 1-bad_beta) * (Q(m) ** exponent.numerator)
            assert ratio >= Q(1)  # no uniform unit-coefficient improvement
    return {
        "status": "PASS_EXACT_SEVEN_EIGHTHS_EXPONENT_ABSORPTION",
        "beta": str(beta), "theta": str(theta),
        "power_exponents_x=m^80": {"beta-1": -8, "theta-1": -5},
        "cases_checked": len(cases), "hostile_small_scale_failures": initial_failures,
        "hostile_wrong_exponent_cases": 6,
        "all_cases": cases,
        "mathematical_scope": "Exact rational beta<theta power absorption only",
        "external_zero_free_theorem": "OAI published 7/8, NOT_REPLAYED_HERE",
        "original_Chebyshev_transfer": "NOT_PROVED_IN_LEAN",
        "original_Gm_tail_normalization": "NOT_PROVED_IN_LEAN",
        "Lean_kernel": "NOT_RUN",
        "RH_conclusion": "NONE"
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--report', type=Path, required=True)
    args = parser.parse_args()
    out = run()
    args.report.write_text(json.dumps(out, indent=2) + '\n')
    print(json.dumps({k:v for k,v in out.items() if k!='all_cases'}, indent=2))


if __name__ == '__main__':
    main()
