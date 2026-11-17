#!/usr/bin/env python3
"""Exact-integer diagnostic for the source-preserving q=3, radius-one 32-grid.

Only the existing script's integer arithmetic functions are reused, not
its analytic conclusions. Assertions here ARE NOT a Lean kernel proof.
Attribution: grwtsk contributors; AI-assisted implementation.
"""
import json
from verify_odd_three_sine_hs import (
    S, GRID, RADIUS, PI_LO, PRIME, gamma_lower, trig,
)

COARSE_GRID = 32
GROUP = GRID // COARSE_GRID
FINE_COUNT = RADIUS * GRID
COARSE_COUNT = RADIUS * COARSE_GRID


def original_fine_prices():
    """Exactly the existing 128-grid cell-price formula, before clipping."""
    result = []
    for k in range(FINE_COUNT):
        midpoint = -133 * S // 1000 + gamma_lower(2 * k + 1, 2 * GRID) - S // 10**6
        for _, r, w in PRIME:
            midpoint += 2 * w * trig(r * (2 * k + 1) // (2 * GRID)) // S
        raw = S - midpoint + 9 * S // (2 * GRID)
        result.append(max(raw, 0))
    return result


def coarse_certificate():
    assert GRID == 128 and COARSE_GRID == 32 and GROUP == 4
    assert S % COARSE_GRID == 0
    fine = original_fine_prices()
    assert sum(v > 0 for v in fine) == 1381
    assert max(i for i, v in enumerate(fine) if v > 0) == 20275
    coarse = [max(fine[GROUP * i: GROUP * (i + 1)]) for i in range(COARSE_COUNT)]
    retained = [(i, price) for i, price in enumerate(coarse) if price > 0]
    assert len(retained) == 352 and retained[-1][0] == 5068

    # sinc32(n) is the existing sincEntry(4*n), not a new approximation.
    sinc = [S]
    for j in range(1, 2 * retained[-1][0] + 2):
        fine_index = GROUP * j
        sinc.append(trig(fine_index * S // GRID, sine=True) * GRID // fine_index)
    variation = 2 * (500 * GRID + 1) + S // COARSE_GRID
    numerator = 0
    for offset, (i, a) in enumerate(retained):
        major = abs(S - sinc[2 * i + 1]) + variation
        numerator += a * a * major * major
        for j, b in retained[:offset]:
            major = abs(sinc[i - j] - sinc[i + j + 1]) + variation
            numerator += 2 * a * b * major * major
    denominator = S * S * COARSE_GRID * COARSE_GRID * PI_LO * PI_LO
    expected_numerator = 8697122502276302315122217776404148413005475681632975
    expected_denominator = 10106474906710399543890863104000000000000000000000000
    assert numerator == expected_numerator
    assert denominator == expected_denominator
    assert numerator < denominator
    return {
        'status': 'FINITE_INTEGER_ASSERTIONS_PASS_NOT_LEAN',
        'source': 'scripts/verify_odd_three_sine_hs.py',
        'original_cells': FINE_COUNT,
        'coarse_cells': COARSE_COUNT,
        'positive_coarse_cells': len(retained),
        'last_positive_cell': retained[-1][0],
        'numerator': str(numerator),
        'denominator': str(denominator),
        'strict_margin': str(denominator - numerator),
        'upper_bound_approx': repr(numerator / denominator),
        'scope': 'exact finite integer replay; cell envelope source return and Lean checking separate',
    }


if __name__ == '__main__':
    print(json.dumps(coarse_certificate(), indent=2, sort_keys=True))
