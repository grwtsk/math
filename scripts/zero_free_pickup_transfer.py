#!/usr/bin/env python3
"""Exact parameter certificates for a conditional zero-free pickup transfer.

Human mathematical direction: R.A. Jacob Martone.
Written derivation and implementation assistance: OpenAI ChatGPT. MIT.

This script checks rational algebra, NOT complex analysis or zeta nonvanishing.
The external seven-eighths theorem remains an explicit input. Exponential
constants stay symbolic: finite diagnostics never become a Lean/RH receipt.

Run: python3 -B scripts/zero_free_pickup_transfer.py --sigma 2/5
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction
import json
from typing import Any

SEED = Fraction(7, 8)


def exact(value: int | Fraction) -> Fraction:
    """Reject floats and booleans rather than silently approximate a rate."""
    if isinstance(value, bool) or not isinstance(value, (int, Fraction)):
        raise TypeError("rate must be an exact integer or Fraction")
    return Fraction(value)


def require(condition: bool, message: str) -> None:
    """Runtime validation remains active with Python -O."""
    if not condition:
        raise ValueError(message)


@dataclass(frozen=True)
class Parameters:
    """The written transfer is restricted to 3/8 < sigma <= 1/2."""

    sigma: Fraction

    def __post_init__(self) -> None:
        object.__setattr__(self, "sigma", exact(self.sigma))
        require(Fraction(3, 8) < self.sigma <= Fraction(1, 2),
                "need 3/8 < sigma <= 1/2; the seven-eighths seed does not pay 1/3")

    @property
    def a(self) -> Fraction:
        return self.sigma + Fraction(1, 2)

    @property
    def delta(self) -> Fraction:
        return self.a - SEED

    @property
    def r(self) -> Fraction:
        return 2 - self.a

    @property
    def R(self) -> Fraction:
        return 2 - SEED - self.delta / 2

    @property
    def outer(self) -> Fraction:
        return 2 - SEED - self.delta / 4

    @property
    def eta(self) -> Fraction:
        return 4 * self.delta / 9

    @property
    def growth_constant(self) -> Fraction:
        return 18 / self.delta

    @property
    def threshold_base(self) -> Fraction:
        return 36 / self.delta

    @property
    def threshold_power(self) -> int:
        v = 1 / self.eta
        return -(-v.numerator // v.denominator)

    @property
    def energy_prefactor(self) -> Fraction:
        # B = prefactor / pi * exp(60/delta + L), L = base**power.
        return 72 * (1 / (self.sigma ** 2 * self.a ** 2) + Fraction(1, 2))

    def certificate(self) -> dict[str, Any]:
        d, r, R, R2 = self.delta, self.r, self.R, self.outer
        checks = {
            "positive_gap": d > 0,
            "gap_at_most_one_eighth": d <= Fraction(1, 8),
            "nested_radii": Fraction(1, 2) < r < R < R2 < Fraction(9, 8),
            "outer_disk_strictly_zero_free": 2 - R2 == SEED + d / 4,
            "high_BC_M_coefficient": 2 * R / (R2 - R) <= 9 / d,
            "high_BC_center_coefficient": (R2 + R) / (R2 - R) <= 9 / d,
            "low_BC_M_coefficient": 2 * r / (R2 - r) <= 3 / d,
            "low_BC_center_coefficient": (R2 + r) / (R2 - r) <= 3 / d,
            "log_interpolation_gap_lower_bound": (R - r) / R >= self.eta,
            "log_denominator_below_one_input": 2 * R <= Fraction(9, 4),
            "threshold_base_gt_one": self.threshold_base > 1,
            "threshold_power_covers_inverse_eta": self.threshold_power * self.eta >= 1,
            "threshold_base_is_twice_C": self.threshold_base == 2 * self.growth_constant,
            "high_height_growth": Fraction(2) + Fraction(9, 8) <= 4,
            "high_disk_avoids_pole": 4 - Fraction(9, 8) > 1,
            "low_regularizer_majorant": 7 * (1 + 6 / SEED) < 64,
            "K_multiplier_covers_low_height": 6 >= 5,
            "K_multiplier_covers_sqrt_twelve": 6 ** 2 >= 12,
        }
        require(all(checks.values()), "internal rational certificate failure")
        base, power = str(self.threshold_base), self.threshold_power
        return {
            "sigma": str(self.sigma), "zeta_line": str(self.a),
            "zero_free_seed": str(SEED), "delta": str(d),
            "radii": {"inner": "1/2", "target": str(r),
                       "BC_output": str(R), "outer": str(R2)},
            "eta": str(self.eta), "C": str(self.growth_constant),
            "L": {"base": base, "integer_power": power},
            "K": {"multiplier": "6", "exp_offset": str(30 / d),
                  "exp_L_coefficient": "1/2"},
            "energy_bound": {
                "prefactor_divided_by_pi": str(self.energy_prefactor),
                "exp_offset": str(60 / d), "exp_L_coefficient": "1"},
            "rational_checks": checks,
            "assumptions_not_checked_by_this_script": [
                "actual zeta has no zeros in Re(s)>7/8, away from its pole",
                "analytic logarithms, Schwarz/Borel-Caratheodory and three-circles steps",
                "pole regularization, literal pickup transform, contour shift and Plancherel"],
            "lean_replay": "NOT_RUN", "one_third_bound_proved": False,
            "RH_proved": False,
        }


def toy_line_mass(a: int | Fraction, b: int | Fraction,
                  sigma: int | Fraction) -> dict[str, str | bool]:
    """Exact negative control: F(z)=1/(z-a)-1/(z+b), a,b,sigma>0.

    The returned line mass is (2*pi)^-1 integral_R |F(sigma+it)|^2 dt,
    computed from the explicit two-sided inverse transform. Below the pole,
    it is finite although the causal source's weighted energy is infinite.
    This is an algebraic test model, not a model of the actual Mobius source.
    """
    a, b, sigma = exact(a), exact(b), exact(sigma)
    require(a > 0 and b > 0 and sigma > 0, "need positive toy parameters")
    require(sigma != a, "the proposed line passes through a pole")
    if sigma < a:
        mass = 1 / (2 * (a - sigma)) + 1 / (2 * (b + sigma))
    else:
        mass = (1 / (2 * (sigma - a)) - 2 / (2 * sigma + b - a)
                + 1 / (2 * (sigma + b)))
    require(mass > 0, "nonpositive toy mass")
    return {"line_mass": str(mass), "causal_weighted_energy_finite": sigma > a,
            "inverse_has_negative_time_support": sigma < a,
            "crossed_pole_residue_coefficient": "1" if sigma < a else "0"}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sigma", type=Fraction, action="append")
    args = parser.parse_args()
    try:
        records = [Parameters(s).certificate()
                   for s in (args.sigma or [Fraction(2, 5), Fraction(7, 16), Fraction(1, 2)])]
    except (TypeError, ValueError) as error:
        parser.exit(2, f"error: {error}\n")
    print(json.dumps({"schema": "zero-free-pickup-parameter-certificate-v1",
                      "scope": "exact rational parameter checks; analytic transfer is written only",
                      "records": records,
                      "crossed_pole_negative_control": toy_line_mass(
                          Fraction(2, 5), Fraction(1, 2), Fraction(1, 3))}, indent=2))


if __name__ == "__main__":
    main()
