"""Certify exact feasibility of a finite Bernoulli logarithmic moment program.

Run with Python 3.8+ using only its standard library. Each logarithm and ratio
is enclosed by directed integer operations. The witness gives only rational
support points, so no approximate LP solution or decimal weights are trusted.
"""

import argparse
import json
from fractions import Fraction
from decimal import Decimal, localcontext
from functools import lru_cache
from math import comb, factorial
from pathlib import Path


BITS = 400
SCALE = 1 << BITS
TERMS = 135


def require(condition, message):
    if not condition:
        raise ValueError(message)


def ceildiv(a, b):
    return -(-a // b)


def atanh_log(a, b):
    """Return scaled lower and upper bounds for 2 atanh(a/b)."""
    require(0 <= 3 * a <= b and b > 0, "atanh argument outside [0,1/3]")
    lower, upper = a * SCALE // b, ceildiv(a * SCALE, b)
    square_lo = lower * lower // SCALE
    square_hi = ceildiv(upper * upper, SCALE)
    sum_lo = sum_hi = 0
    for i in range(TERMS):
        odd = 2 * i + 1
        sum_lo += 2 * lower // odd
        sum_hi += ceildiv(2 * upper, odd)
        lower = lower * square_lo // SCALE
        upper = ceildiv(upper * square_hi, SCALE)
    # Dropping all remaining odd denominators gives the geometric bound.
    tail = ceildiv(3 * SCALE, 3 ** (2 * TERMS + 1))
    return sum_lo, sum_hi + tail


LOG_TWO = atanh_log(1, 3)


@lru_cache(None)
def log_interval(a, b=1):
    """Scaled enclosure of log(a/b). Normalize into [1,2)."""
    require(a > 0 and b > 0, "logarithm requires a positive input")
    power = a.bit_length() - b.bit_length()
    below = a < (b << power) if power >= 0 else (a << -power) < b
    if below:
        power -= 1
    if power >= 0:
        b <<= power
    else:
        a <<= -power
    require(b <= a < 2 * b, "binary range reduction failed")
    lower, upper = atanh_log(a - b, a + b)
    terms = (power * LOG_TWO[0], power * LOG_TWO[1])
    return lower + min(terms), upper + max(terms)


def positive_ratio(numerator, denominator):
    """Directed scaled enclosure of a nonnegative interval ratio."""
    low, high = numerator
    den_low, den_high = denominator
    require(0 <= low <= high and 0 < den_low <= den_high, "nonpositive ratio input")
    return low * SCALE // den_high, ceildiv(high * SCALE, den_low)


def moments(stage):
    bernoulli = [Fraction(1)]
    for n in range(1, 2 * stage + 1):
        total = sum(comb(n + 1, k) * value for k, value in enumerate(bernoulli))
        bernoulli.append(-total / (n + 1))
    return [Fraction(6 * 10 ** n * factorial(n), factorial(2 * n))
            * abs(bernoulli[2 * n + 2]) for n in range(stage)]


def coordinates(j, node, denominator):
    if node == -1:
        return 0, 0
    width = 2 * (j - 1) * (2 * j + 1)
    if node == 0:
        ratio = (SCALE * width // 10, ceildiv(SCALE * width, 10))
    else:
        ratio = positive_ratio(log_interval(denominator + width * node, denominator),
                               log_interval(denominator + 10 * node, denominator))
    offset = (j - 1) * SCALE
    return ratio[0] - offset, ratio[1] - offset


def midpoint(interval):
    return Fraction(sum(interval), 2 * SCALE)


def radius(interval):
    return Fraction(interval[1] - interval[0], 2 * SCALE)


def invert(matrix):
    """Gauss-Jordan inversion over the rationals."""
    size = len(matrix)
    rows = [row[:] + [Fraction(i == j) for j in range(size)]
            for i, row in enumerate(matrix)]
    for j in range(size):
        pivot_row = next((i for i in range(j, size) if rows[i][j]), None)
        require(pivot_row is not None, "singular midpoint matrix")
        rows[j], rows[pivot_row] = rows[pivot_row], rows[j]
        pivot = rows[j][j]
        rows[j] = [value / pivot for value in rows[j]]
        for i in range(size):
            if i != j and rows[i][j]:
                factor = rows[i][j]
                rows[i] = [v - factor * p for v, p in zip(rows[i], rows[j])]
    return [row[size:] for row in rows]


def certified_preconditioner(matrix, rhs):
    """Construct a dyadic inverse candidate; certify its residual with integers."""
    n = len(matrix)
    raw = [[sum(interval) for interval in row] for row in matrix]  # denominator 2*SCALE
    with localcontext() as context:
        context.prec = BITS // 3 + 30
        rows = [[Decimal(v) / (2 * SCALE) for v in row]
                + [Decimal(int(i == j)) for j in range(n)] for i, row in enumerate(raw)]
        for j in range(n):
            pivot = max(range(j, n), key=lambda k: abs(rows[k][j]))
            rows[pivot], rows[j] = rows[j], rows[pivot]
            t = rows[j][j]
            require(t != 0, "preconditioner generation hit a zero pivot")
            rows[j] = [a / t for a in rows[j]]
            for i in range(n):
                if i != j:
                    t = rows[i][j]
                    rows[i] = [a - t*b for a, b in zip(rows[i], rows[j])]
        scaled = [[round(a * SCALE) for a in row[n:]] for row in rows]
    # The following bounds hold for *any* integer matrix scaled, independently
    # of the preceding Decimal calculations that selected it.
    unit = 2 * SCALE ** 2
    cols = list(zip(*raw))
    residual_norm = 0
    centers = []
    raw_rhs = [sum(interval) for interval in rhs]
    for i, row in enumerate(scaled):
        residual_row = sum(abs((unit if i == j else 0) - sum(a*b for a, b in zip(row, col)))
                           for j, col in enumerate(cols))
        residual_norm = max(residual_norm, residual_row)
        centers.append(Fraction(sum(a*b for a, b in zip(row, raw_rhs)), unit))
    norm = Fraction(max(sum(map(abs, row)) for row in scaled), SCALE)
    return centers, norm, Fraction(residual_norm, unit)


def scaled_decimal(value, places, *, upper):
    """One outward-rounded decimal endpoint."""
    base = 10 ** places
    q = value * base
    integer = ceildiv(q.numerator, q.denominator) if upper else q.numerator // q.denominator
    sign = '-' if integer < 0 else ''
    whole, part = divmod(abs(integer), base)
    return f'{sign}{whole}.{part:0{places}d}'


def certify(witness):
    global BITS, TERMS, SCALE, LOG_TWO
    stage, den, nodes = witness['stage'], witness['denominator'], witness['nodes']
    require(type(stage) is int and stage >= 3, "invalid stage")
    if stage >= 128:
        target_bits, target_terms = 1250, 420
    elif stage >= 64:
        target_bits, target_terms = 850, 285
    else:
        target_bits, target_terms = 400, 135
    if target_bits != BITS:
        BITS, TERMS = target_bits, target_terms
        SCALE = 1 << BITS
        LOG_TWO = atanh_log(1, 3)
        log_interval.cache_clear()
    require(type(den) is int and den > 0, "invalid support denominator")
    require(len(nodes) == stage - 1 and len(set(nodes)) == len(nodes) and -1 in nodes,
            "expected a square system with one slack column")
    require(all(type(x) is int and (x == -1 or 0 <= 9 * x <= 4 * den) for x in nodes),
            "support outside [0,4/9]")
    matrix = [[(SCALE, SCALE) for _ in nodes]]
    rhs = [(SCALE, SCALE)]
    source = moments(stage)
    require(source[:3] == [1, 1, Fraction(25, 21)], "Bernoulli normalization mismatch")
    for j in range(3, stage + 1):
        matrix.append([coordinates(j, x, den) for x in nodes])
        value = source[j - 1]
        rhs.append(positive_ratio(log_interval(value.numerator, value.denominator), LOG_TWO))

    if stage >= 64:
        center, inverse_norm, midpoint_defect = certified_preconditioner(matrix, rhs)
    else:
        inverse = invert([[midpoint(value) for value in row] for row in matrix])
        inverse_norm = max(sum(abs(entry) for entry in row) for row in inverse)
        center = [sum(a * midpoint(b) for a, b in zip(row, rhs)) for row in inverse]
        midpoint_defect = 0
    matrix_radius = max(sum(radius(value) for value in row) for row in matrix)
    target_radius = max(radius(value) for value in rhs)
    center_norm = max(map(abs, center))
    contraction = midpoint_defect + inverse_norm * matrix_radius
    require(contraction < 1, "perturbation too large for inversion")
    # With inverse candidate Q, x0=Q*b0 and ||I-Q*A|| <= contraction < 1,
    # Q*A is invertible and the exact solution obeys this componentwise bound.
    error = (inverse_norm * target_radius + contraction * center_norm) / (1 - contraction)
    lower = min(center) - error
    require(lower > 0, "could not prove every exact weight positive")
    slack = center[nodes.index(-1)]
    slack_low, slack_high = slack - error, slack + error
    require(0 < slack_low <= slack_high < 1, "failed to enclose slack strictly in (0,1)")
    cost_low = (1 - slack_high) * Fraction(LOG_TWO[0], SCALE)
    cost_high = (1 - slack_low) * Fraction(LOG_TWO[1], SCALE)
    budget = Fraction(253 if stage >= 128 else 229, 1000)
    require(cost_high < budget, "attested cost exceeds stage budget")
    require(contraction < Fraction(1, 10 ** 50) and error < Fraction(1, 10 ** 50),
            "witness stability falls short of reported precision")

    print(f'PASS stage={stage} equations={len(matrix)} support_points={len(nodes)-1} slack_columns=1')
    print(f'Directed integer logarithms: {BITS} fraction bits, {TERMS} atanh terms.')
    center_name = 'certified dyadic preconditioner solution' if stage >= 64 else 'rational midpoint solution'
    print(f'Neumann contraction < 1e-50; every exact weight differs from its {center_name} by < 1e-50.')
    print(f'Every exact weight >= {scaled_decimal(lower, 16, upper=False)} > 0.')
    print('Slack in [' + scaled_decimal(slack_low, 16, upper=False) + ', '
          + scaled_decimal(slack_high, 16, upper=True) + '].')
    print('Feasible measure cost in [' + scaled_decimal(cost_low, 16, upper=False) + ', '
          + scaled_decimal(cost_high, 16, upper=True) + f'] < {budget}.')
    print('The feasible cost bounds the optimum from above; the lower endpoint pertains to this witness.')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('witness', nargs='?', type=Path, default=Path(__file__).with_name('hull16.json'))
    certify(json.loads(parser.parse_args().witness.read_text(encoding='utf-8')))
