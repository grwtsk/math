#!/usr/bin/env python3
"""Exact rational finite-source Schur, Toeplitz and theta-atom regression.

This verifies finite determinant identities and hostile positivity examples.
It does NOT prove positivity of actual Xi at all partitions or any RH theorem.
"""
from argparse import ArgumentParser
from fractions import Fraction as Q
from itertools import permutations, product
from math import factorial
from pathlib import Path
import json

def determinant(matrix):
    n = len(matrix)
    result = Q(0)
    for sigma in permutations(range(n)):
        inversions = sum(sigma[i] > sigma[j] for i in range(n) for j in range(i + 1, n))
        term = Q(-1 if inversions & 1 else 1)
        for i in range(n):
            term *= matrix[i][sigma[i]]
        result += term
    return result

def coefficient(a, n):
    return a[n] if 0 <= n < len(a) else Q(0)

def schur(a, shape):
    return determinant([[coefficient(a, shape[i]-i+j)
                         for j in range(len(shape))] for i in range(len(shape))])

def toeplitz(a, rows, columns):
    return determinant([[coefficient(a, c-r) for c in columns] for r in rows])

def partitions(length, width):
    if length == 0:
        yield ()
        return
    for first in range(width, -1, -1):
        for tail in partitions(length-1, first):
            yield (first,) + tail

def atom_minor(atoms, rows, columns):
    mass = sum((weight for _, weight in atoms), Q(0))
    k = len(rows)
    out = Q(0)
    for choices in product(atoms, repeat=k):
        product_weight = Q(1)
        for u, weight in choices:
            product_weight *= weight
        matrix = [[u**(2*(c-r)) / factorial(2*(c-r)) if c >= r else Q(0)
                   for (u, _), c in zip(choices, columns)] for r in rows]
        out += product_weight * determinant(matrix) / mass**k
    return out

def main():
    eigen = [Q(1, 2), Q(1, 3), Q(1, 5)]
    a = [Q(1)]
    for lam in eigen:
        b = a + [Q(0)]
        for i in range(1, len(b)):
            b[i] += lam * a[i-1]
        a = b
    schur_cases = 0
    for k in range(1, 5):
        for shape in partitions(k, 4):
            value = schur(a, shape)
            assert value >= 0
            rows = list(range(k))
            cols = [shape[k-1-j] + j for j in range(k)]
            assert toeplitz(a, rows, cols) == value
            schur_cases += 1

    atoms = [(Q(0), Q(3, 4)), (Q(1), Q(1, 4))]
    moments = [sum((w*u**(2*n) for u, w in atoms), Q(0)) for n in range(10)]
    mu0 = moments[0]
    b = [moments[n] / (factorial(2*n)*mu0) for n in range(10)]
    shapes = [([0], [1]), ([0,1],[1,2]), ([0,1,2],[1,2,3]),
              ([0,1,2],[1,3,4]), ([0,1,2],[2,3,4])]
    for rows, cols in shapes:
        assert atom_minor(atoms, rows, cols) == toeplitz(b, rows, cols)
    assert schur(b,(1,1,1)) == -Q(7, 23040)
    assert b[1]**2 - 2*b[2] == -Q(1, 192)
    assert b[1]**3-3*b[1]*b[2]+3*b[3] == -Q(7, 7680)
    m0,m2,m4,m6 = moments[:4]
    assert b[1]**2-b[2] == (6*m2*m2-m0*m4)/(24*m0*m0)
    assert schur(b,(1,1,1)) == (
        90*m2**3-30*m0*m2*m4+m0*m0*m6)/(720*m0**3)
    assert b[1]**2-2*b[2] == (3*m2*m2-m0*m4)/(12*m0*m0)
    assert b[1]**3-3*b[1]*b[2]+3*b[3] == (
        30*m2**3-15*m0*m2*m4+m0*m0*m6)/(240*m0**3)
    result = {
        "status": "PASS_EXACT_XI_THETA_SCHUR_ALGEBRA_AND_HOSTILE_FALSIFIERS",
        "positive_finite_spectrum": [str(x) for x in eigen],
        "ordinary_schur_nonnegative": schur_cases,
        "ordinary_schur_equals_toeplitz": schur_cases,
        "exact_atomic_column_integral_matches": len(shapes),
        "positive_moments_negative_schur_three": "-7/23040",
        "positive_moments_negative_log_trace_two": "-1/192",
        "positive_moments_negative_log_trace_three": "-7/7680",
        "all_Xi_Schur_positivity": "NOT_PROVED",
        "theta_integral_formula": "mathematical source identity; Lean NOT_RUN",
        "real_Xi_zero_divisor": "NOT_INFERRED",
        "RH": "NOT_PROVED",
    }
    parser = ArgumentParser()
    parser.add_argument("--report", type=Path)
    args = parser.parse_args()
    if args.report:
        args.report.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))

if __name__ == "__main__":
    main()
