#!/usr/bin/env python3
"""Finite algebra for written ALL-DEGREE Jacobi bounds, not a uniform energy proof.

Human mathematical direction: grwtsk contributors.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

The companion evidence text proves |d_n|<=16*n^(-5/6) and, conditional on
MertensLogSquareBound, |d_n|<=6400*n^(-5/6)/(1+log(n))^2. Neither gives the
requested unweighted all-degree energy bound. This script checks only finite
rational identities. It does not make the written analytic proof a Lean proof.
"""
from __future__ import annotations

import argparse
from fractions import Fraction as Q
import hashlib
import json
from pathlib import Path
from typing import Sequence

ALPHA = Q(1, 6)
REFERENCE_SHA256 = 'aa6c8962a10ef4c78e7bb3bd54043f59aeb321fa2ca1263a5bbcbaea75a83b17'


def degree(n: int) -> int:
    if type(n) is not int or not 0 <= n <= 512:
        raise ValueError('degree must be an integer in [0,512]')
    return n


def exact(x: int | Q) -> Q:
    if type(x) is not int and not isinstance(x, Q):
        raise TypeError('expected exact integer or Fraction')
    return Q(x)


def rising(x: int | Q, n: int) -> Q:
    if type(n) is not int or not 0 <= n <= 513:
        raise ValueError('rising-factorial length must be an integer in [0,513]')
    x = exact(x)
    out = Q(1)
    for j in range(n):
        out *= x + j
    return out


def trim(a: Sequence[Q]) -> list[Q]:
    out = [exact(x) for x in a] or [Q(0)]
    while len(out) > 1 and out[-1] == 0:
        out.pop()
    return out


def add(a: Sequence[Q], b: Sequence[Q]) -> list[Q]:
    return trim([(a[i] if i < len(a) else Q(0)) +
                 (b[i] if i < len(b) else Q(0))
                 for i in range(max(len(a), len(b)))])


def scale(a: Sequence[Q], c: int | Q) -> list[Q]:
    return trim([exact(c) * x for x in a])


def multiply(a: Sequence[Q], b: Sequence[Q]) -> list[Q]:
    if not a or not b:
        return [Q(0)]
    out = [Q(0)] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            out[i + j] += x * y
    return trim(out)


def derivative(a: Sequence[Q]) -> list[Q]:
    return trim([i * a[i] for i in range(1, len(a))])


def evaluate(a: Sequence[Q], x: int | Q) -> Q:
    x = exact(x)
    out = Q(0)
    for v in reversed(a):
        out = out * x + v
    return out


def jacobi(n: int) -> list[Q]:
    """Independent exact expansion P_n^(0,1/6)(2y-1), not a zeta estimate."""
    degree(n)
    first = Q((-1) ** n)
    for k in range(1, n + 1):
        first *= (ALPHA + k) / k
    out = [first]
    for j in range(n):
        out.append(out[-1] * (-n + j) * (n + ALPHA + 1 + j)
                   / ((ALPHA + 1 + j) * (j + 1)))
    return out


def sturm_residual(n: int) -> list[Q]:
    degree(n)
    p = jacobi(n)
    return add(add(multiply([Q(0), Q(1), Q(-1)], derivative(derivative(p))),
                   multiply([Q(7, 6), Q(-13, 6)], derivative(p))),
               scale(p, n * (n + Q(7, 6))))


def beta_pairing(n: int, lam: int | Q) -> Q:
    """Integral_0^1 y^(lam-1)P_n(y)dy, evaluated as a FINITE sum."""
    degree(n)
    lam = exact(lam)
    if lam <= 0:
        raise ValueError('beta exponent must be positive')
    return sum((v / (lam + j) for j, v in enumerate(jacobi(n))), Q(0))


def beta_closed(n: int, lam: int | Q) -> Q:
    degree(n)
    lam = exact(lam)
    if lam <= 0:
        raise ValueError('beta exponent must be positive')
    return (-1) ** n * rising(Q(7, 6) - lam, n) / rising(lam, n + 1)


def weighted_square(p: Sequence[Q], exponent: int | Q) -> Q:
    exponent = exact(exponent)
    if exponent <= -1:
        raise ValueError('weight exponent must exceed minus one')
    return sum((v / (j + exponent + 1)
                for j, v in enumerate(multiply(p, p))), Q(0))


def critical_model(n: int) -> tuple[Q, Q]:
    """Exact coefficient and s_n for W_*=exp(t/3)-1, NOT the Mobius source."""
    degree(n)
    s = rising(Q(5, 12), n) / rising(Q(3, 4), n + 1)
    d = Q((-1) ** n, 2) * (1 / (n + Q(7, 12)) - s)
    return d, s


def critical_record(N: int) -> dict[str, object]:
    degree(N)
    if N == 512:
        raise ValueError('critical finite telescope requires degree at most 511')
    q, h, total_s, correction = (Q(0) for _ in range(4))
    for n in range(N + 1):
        d, s = critical_model(n)
        q += (4 * n + Q(7, 3)) * d * d
        h += 1 / (n + Q(7, 12))
        total_s += s
        correction += (n + Q(7, 12)) * s * s
    telescope = 3 * (1 - (N + Q(7, 4)) * critical_model(N + 1)[1])
    if total_s != telescope or q != h - 2 * total_s + correction:
        raise ArithmeticError('critical-model finite identity failed')
    if not h - 6 <= q <= h + Q(45, 2):
        raise ArithmeticError('critical-model finite bound failed')
    return {'degree': N, 'source': 'comparison exp(t/3)-1; NOT Mobius',
            'partial_energy': str(q), 'shifted_harmonic_sum': str(h),
            'lower_bound': str(h - 6), 'upper_bound': str(h + Q(45, 2)),
            'finite_telescope': str(total_s), 'identities_exact': True,
            'uniform_energy_bound': False}


def reference_check(path: Path) -> dict[str, object]:
    """Optional regression against the previous hash-bound 129 coefficients."""
    raw = path.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != REFERENCE_SHA256:
        raise ValueError('reference artifact hash mismatch')
    data = json.loads(raw)
    if data.get('sigma') != '1/3' or data.get('degree') != 128:
        raise ValueError('wrong reference damping or degree')
    rows = data['coefficients']
    if len(rows) != 129:
        raise ValueError('incomplete reference coefficient list')
    count = 0
    for n, row in enumerate(rows):
        if row['degree'] != n:
            raise ValueError('reference degree order changed')
        lo, hi = Q(row['d']['lower']), Q(row['d']['upper'])
        if lo > hi:
            raise ValueError('reversed reference enclosure')
        if n:
            # Sixth powers remove the rational exponent without any float.
            if max(abs(lo), abs(hi)) ** 6 * n ** 5 > 16 ** 6:
                raise ArithmeticError('finite enclosure violates AS1')
            count += 1
    return {'sha256': digest, 'nonzero_degrees_checked': count,
            'all_enclosures_inside_AS1': True,
            'scope': 'finite regression ONLY; not a proof of the all-degree bound'}


def scalar_parameters() -> dict[str, str]:
    qbound = Q(19, 12) ** 2 + Q(8, 81) + Q(1, 9)
    total = Q(36 * 544, 35) + Q(21 * 544, 2) + 105
    if qbound >= 3 or total >= 6400:
        raise ArithmeticError('written scalar constants failed')
    return {'transformed_potential_factor': str(qbound),
            'interior_derivative_factor': str(Q(57, 10) + Q(2, 5) + Q(3, 10)),
            'elementary_coefficient_factor': str(Q(48, 35) + 14 + Q(3, 35)),
            'logarithmic_coefficient_factor': str(total),
            'quadratic_comparison_factor': str(Q(97, 25)),
            'summable_bulk_budget': '4725'}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--degree', type=int, default=32)
    parser.add_argument('--reference', type=Path,
                        help='optional previous reciprocal_moment_energy_128.json')
    args = parser.parse_args()
    try:
        result = {'schema': 'jacobi-all-degree-bound-finite-check-v1',
                  'written_bounds': {'elementary': '|d_n|<=16*n^(-5/6), n>=1',
                     'logarithmic': '|d_n|<=6400*n^(-5/6)/(1+log(n))^2, n>=1',
                     'logarithmic_premise': 'MertensLogSquareBound, not admitted here'},
                  'scalars': scalar_parameters(),
                  'critical_control': critical_record(args.degree),
                  'target_uniform_weighted_sum_proved': False,
                  'lean_replay': 'NOT_RUN',
                  'scope': 'finite exact algebra; general analysis is written-only'}
        if args.reference is not None:
            result['reference_regression'] = reference_check(args.reference)
        print(json.dumps(result, indent=2))
    except (ValueError, TypeError, ArithmeticError, OSError) as error:
        parser.exit(2, f'error: {error}\n')


if __name__ == '__main__':
    main()
