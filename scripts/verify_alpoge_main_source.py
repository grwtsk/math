#!/usr/bin/env python3
"""Finite source regression for Alpoge's (M) prime-cell ledger, NOT an RH test.

Reconstructs the exact finite prime-power side of II.4--II.5 of the
Rubinstein et al. 21 Nov 2026 zeta exposition for q=3,d=23,N=16,
T=T2={[1]}, a=10000, b=10, ordinary cell weight=1/20.
Also checks the density projector, the dangerous low-weight cutoff,
and the unnormalized-to-normalized algebra of (II.15)--(II.16).
Only standard-library Python; no zeta zeros or external RH endpoint.
"""

from fractions import Fraction as Q
from itertools import combinations
from math import log

A = 10000
B = 10
LOW = Q(1, 20)
H = (1, 3, 5, 7)
LIMIT = A * LOW.denominator


def primes_through(limit: int) -> list[int]:
    flag = bytearray([1]) * (limit + 1)
    flag[:2] = b"\x00\x00"
    for p in range(2, int(limit**0.5) + 1):
        if flag[p]:
            flag[p * p : limit + 1 : p] = bytes(len(flag[p * p : limit + 1 : p]))
    return [p for p in range(2, limit + 1) if flag[p]]


def quadratic_symbol(r: int, p: int) -> int:
    if r % p == 0:
        return 0
    return 1 if pow(r % p, (p - 1) // 2, p) == 1 else -1


def representative(r: int) -> int:
    assert r % 2 == 1
    return min(r % 16, (-r) % 16)


def group_product(x: int, y: int) -> int:
    return representative(x * y)


def source_atoms():
    for p in primes_through(LIMIT):
        if p in (2, 3):  # exact source exclusions
            continue
        r, exponent = p, 1
        while r <= LIMIT:
            coefficient = 1 - quadratic_symbol(r, 23)
            if coefficient:
                row = 1 if quadratic_symbol(r, 3) == 1 else 0
                yield p, r, exponent, coefficient, row, representative(r)
            exponent += 1
            r *= p


def weight(row: int, col: int, u: int) -> Q:
    return Q(B) if row == 1 and col == u else LOW


def direct_sum(atoms, u: int) -> float:
    return sum(coef * log(p) * max(float(Q(A, r) - weight(row, col, u)), 0.0)
               for p, r, _, coef, row, col in atoms)


def cell_sum(atoms, u: int) -> float:
    total = 0.0
    for row in (0, 1):
        for col in H:
            w = weight(row, col, u)
            s_cell = sum(coef * log(p) * max(float(Q(A, 1) / w / r - 1), 0.0)
                         for p, r, _, coef, ro, co in atoms if (ro, co) == (row, col))
            total += float(w) * s_cell
    return total


def verify_character_projector(atoms):
    # Exact group combinatorics: for every s and every T2, there are
    # precisely |T2| translations u for which s is in u*T2.
    for count in range(len(H) + 1):
        for subset in combinations(H, count):
            for s in H:
                matching = [u for u in H if any(group_product(u, z) == s for z in subset)]
                assert len(matching) == len(subset), (subset, s, matching)
    for _, r, _, _, row, col in atoms:
        chi_q = quadratic_symbol(r, 3)
        assert chi_q in (-1, 1)
        assert sum(int(row == 1 and col == u) for u in H) == (1 + chi_q) // 2


def verify_source_error_algebra():
    # u=x^eps. Since x^(-eps)=1/u, the third unnormalized term
    # h2*k*b*u/[n*(n/u)] has h2=n*delta. No rpow is substituted in M.
    for seed in range(1, 65):
        h, m, b = Q(seed + 1), Q(seed + 3), Q(seed + 5)
        delta, n = Q(seed + 2, seed + 9), Q(seed + 7)
        k, u, ae = Q(seed + 11), Q(seed + 13, 7), Q(seed + 17)
        bracket = (h * ae * (1 + m*m/k) +
                   m * (2*n*m*b*u + n*delta*k*b*u/(n*(n/u))))
        norm = h*m*b*delta/2
        parsed = (2*ae/(m*b*delta)*(1 + m*m/k) +
                  4*n*m*u/(h*delta) + 2*k*u*u/(h*n))
        assert bracket / norm == parsed


def run():
    atoms = list(source_atoms())
    verify_character_projector(atoms)
    verify_source_error_algebra()
    reported = {1: 95461.6156, 3: 95812.6718, 5: 95315.2090, 7: 95239.8106}
    obtained = {}
    for u in H:
        p = direct_sum(atoms, u)
        other = cell_sum(atoms, u)
        assert abs(p - other) < 1e-8
        assert abs(p - reported[u]) < 5.1e-5
        obtained[u] = p
    # Below-unit weights allow p^h > a to survive the positive part.
    # The original (III.121) distinguishes V_infinity from a finite V.
    missing = sum(coef * log(p) * max(float(Q(A, r) - weight(row, col, 1)), 0.0)
                  for p, r, exponent, coef, row, col in atoms
                  if r > A and p ** (exponent - 1) > A)
    assert abs(missing - 0.309064) < 0.000001
    # Published centering uses independent gamma and chi23 constants.
    gamma_e = 0.5772156649015329
    c_chi23 = -0.422120948038  # rounded published character correction
    mean_log_weight = (log(B) + 7*log(float(LOW))) / 8
    main = A*(log(A) - 1 - gamma_e + c_chi23 - mean_log_weight)
    excess = sum(obtained.values()) / 4 - main
    assert abs(main - 95444.4636) < 0.0001
    assert abs(excess - 12.863118) < 0.0001
    print('PASS: exact finite-group translation projector (all 16 subsets)')
    print('PASS: 64 exact-rational unnormalized-M error identities')
    print('PASS: original prime-power cells, each direct == cell-by-cell')
    for u in H:
        print(f'  translate [{u}]: P={obtained[u]:.6f}')
    print(f'PASS: published M={main:.6f}, mean excess={excess:.6f}')
    print(f'PASS: hostile omitted large-power contribution={missing:.9f}')
    print('NOT_PROVED: (M), genuine theta-lift/lattice/trace/Galois inputs, RH')


if __name__ == '__main__':
    run()
