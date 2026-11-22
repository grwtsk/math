#!/usr/bin/env python3
"""Independent exact prime-Jacobi polynomial/Krylov finite controls.

This checker is NOT a Lean proof and does not use any zeta zeros or
Alpoge's final RH theorem. It uses true prime bonds, direct root
matrix powers, and independently generated three-term polynomial
coefficients with Fraction arithmetic.
"""
from __future__ import annotations
import argparse
import json
from fractions import Fraction as F
from pathlib import Path


def primes(count: int) -> list[int]:
    out, x = [], 2
    while len(out) < count:
        if all(x % p for p in out if p*p <= x):
            out.append(x)
        x += 1
    return out


def apply_jacobi(v: list[F], bonds: list[int]) -> list[F]:
    out = [F(0) for _ in v]
    for j, p in enumerate(bonds):
        out[j] += p*v[j+1]
        out[j+1] += p*v[j]
    return out


def orthogonal_coeffs(bonds: list[int]) -> list[list[F]]:
    if not bonds:
        return [[F(1)]]
    rows = [[F(1)], [F(0), F(1, bonds[0])]]
    for n in range(len(bonds)-1):
        next_row = [F(0)]*(n+3)
        for j, c in enumerate(rows[n+1]):
            next_row[j+1] += c/bonds[n+1]
        for j, c in enumerate(rows[n]):
            next_row[j] -= F(bonds[n], bonds[n+1])*c
        rows.append(next_row)
    return rows


def check_dimension(n: int) -> dict:
    assert n >= 1
    bonds = primes(n-1)
    root = [F(int(i==0)) for i in range(n)]
    krylov = [root]
    for _ in range(n-1):
        krylov.append(apply_jacobi(krylov[-1], bonds))
    R = orthogonal_coeffs(bonds)
    assert len(R) == n

    envelope = [F(1)]
    if bonds:
        envelope.append(F(1, bonds[0]))
    for j in range(n-2):
        envelope.append(envelope[j+1]/bonds[j+1] +
                        F(bonds[j], bonds[j+1])*envelope[j])

    for row, coeff in enumerate(R):
        value = [sum((coeff[j]*krylov[j][i]
                      for j in range(len(coeff))),F(0))
                 for i in range(n)]
        assert value == [F(int(row==i)) for i in range(n)]
        assert sum(map(abs,coeff)) <= envelope[row] <= F(row+2,2)

    # The inverse Gram is computed independently from the polynomial rows,
    # not by assuming an arbitrary spectral inverse.
    gram_inverse = [
        [sum((R[q][i]*R[q][j]
              if i<len(R[q]) and j<len(R[q]) else F(0)
              for q in range(n)), F(0))
         for j in range(n)] for i in range(n)]
    largest_row_sum = max(sum(map(abs,row)) for row in gram_inverse)
    a_priori_bound = F(n*(n+1)**2,4)
    assert largest_row_sum <= a_priori_bound
    return {"dimension":n,"prime_bonds":n-1,
            "last_prime_bond":bonds[-1] if bonds else None,
            "basis_actions_checked":n,
            "inverse_row_l1_exact":str(largest_row_sum),
            "a_priori_bound":str(a_priori_bound),"passed":True}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--report",type=Path)
    args=parser.parse_args()
    dims=[1,2,3,4,8,12,20,30,41,61]
    checks=[check_dimension(n) for n in dims]

    # Deliberately mutate a physical bond but not its independently defined
    # polynomial recurrence. The polynomial-to-basis identity must fail.
    poly = orthogonal_coeffs([2])[1]
    mutated = apply_jacobi([F(1),F(0)], [3])
    assert [sum((poly[j]*(root_i if j==0 else mutated[i])
                 for j in range(len(poly))), F(0))
            for i,root_i in enumerate([F(1),F(0)])] != [F(0),F(1)]

    result={
      "status":"EXACT_PRIME_POLYNOMIAL_KRYLOV_CONTROL_PASS",
      "dimensions":dims,
      "basis_actions_verified":sum(c["basis_actions_checked"] for c in checks),
      "records":checks,
      "hostile_bond_mutation_detected":True,
      "source":"actual Nat.nth Nat.Prime values represented as exact integer bonds",
      "lean_compilation":"NOT_RUN",
      "lean_kernel_check":"NOT_RUN",
      "all_index_lean_coefficient_recurrence":"OPEN",
      "alpoge_final_RH_used":False,
    }
    if args.report is not None:
        args.report.write_text(json.dumps(result,indent=2)+"\n")
    print(json.dumps({"status":result["status"],
                      "checked_dimensions":dims,
                      "basis_actions":result["basis_actions_verified"],
                      "hostile_bond_mutation_detected":True},indent=2))


if __name__ == "__main__":
    main()
