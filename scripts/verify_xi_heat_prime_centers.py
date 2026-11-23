"""Certify finite prime-mesh maxima and cutoff bounds in XiHeatPrimeCenterBounds.md.

Requires python-flint. Run with python -B scripts/verify_xi_heat_prime_centers.py.
"""
from math import isqrt

from flint import arb, ctx

from verify_xi_heat_wave import prime_powers


def check_uniform_bounds():
    height = 3 * 10**12
    last_row = isqrt(height - 1)
    assert last_row == 1_732_050
    assert 2 * last_row**2 < 2 * height - 1 < 2 * (last_row + 1)**2

    min_slope = (1 - 1 / arb(1).exp()) / 2
    tail_constant = 4 * (1 + 1 / min_slope)
    sqrt_pi = arb.pi().sqrt()
    row_cap = 22 * sqrt_pi + (17 + 2 * sqrt_pi + arb(7) / 2) / arb(3).log()
    assert tail_constant < 17 and row_cap < 61
    print("last complete row", last_row, "normalized cap", row_cap.str(12),
          "tail constant", tail_constant.str(12), flush=True)


def check_prime_mesh(n, lower, upper):
    cutoff = (arb(2 * n).exp() / n).floor().unique_fmpz()
    assert cutoff is not None, "could not certify the integer prime cutoff"
    terms = []
    for power, log_prime in prime_powers(int(cutoff)):
        log_power = arb(power).log()
        weight = log_prime * (-(log_power**2) / (4 * n)).exp() / arb(power).sqrt()
        terms.append((log_power / n, weight))

    indices = range(n, n**3 + 1)
    sqrt_n = arb(n).sqrt()
    scores = {}
    for j in indices:
        total = sum((weight * (phase * j).cos() for phase, weight in terms), arb(0))
        scores[j] = -total / (sqrt_n * (2 + arb(j) / n).log())

    # The positive part of each score enters the maximum. Comparing with zero
    # and with every competitor certifies the maximum even for overlapping losers.
    winner = scores[7]
    competitors = [arb(0)] + [score for j, score in scores.items() if j != 7]
    largest_competitor_upper = max(score.upper() for score in competitors)
    assert winner > largest_competitor_upper
    assert arb(lower) < winner < arb(upper)
    print("row", n, "cutoff", int(cutoff), "grid size", len(indices),
          "maximizing j", 7, "maximum", winner.str(15),
          "gap lower", (winner - largest_competitor_upper).lower().str(8), flush=True)


def check_corrected_cutoff(n, lower, upper):
    log_cutoff = 2 * n - 2 * arb(n).sqrt()
    slope = log_cutoff / (2 * n) - arb(1) / 2
    assert slope > 0
    phase_cost = n**2 + arb(1) / 2 + log_cutoff / (2 * n)
    integral_factor = 1 + phase_cost / slope + 1 / (2 * n * slope**2)
    log_bound = (
        arb("9.221").log() + arb(3) / 2 * log_cutoff.log()
        - arb("0.8476836") * log_cutoff.sqrt()
        + log_cutoff / 2 - log_cutoff**2 / (4 * n)
        + integral_factor.log()
    )
    assert arb(lower) < log_bound < arb(upper)
    print("corrected cutoff row", n, "log error upper", log_bound.str(13), flush=True)


if __name__ == "__main__":
    ctx.prec = 192
    check_uniform_bounds()
    check_prime_mesh(5, "0.758115713845976", "0.758115713845978")
    check_prime_mesh(6, "0.876067936349756", "0.876067936349758")
    check_prime_mesh(7, "0.973698146397573", "0.973698146397575")
    check_corrected_cutoff(10**4, "15.916", "15.917")
    check_corrected_cutoff(10**6, "-146.897", "-146.896")
