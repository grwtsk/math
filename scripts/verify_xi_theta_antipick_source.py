#!/usr/bin/env python3
"""Exact rational anti-Pick source regression, not an RH proof.

A positive theta-like moment measure alone does not force
Im(F'(w) conj(F(w))) <= 0 on the upper half plane.
The point w=i/10 is certified by exact rational truncation plus
explicit factorial-series tails. By contrast finite positive spectra
obey the anti-Pick identity exactly, preserving multiplicities.
"""
from __future__ import annotations
from fractions import Fraction as Q
from math import factorial
from pathlib import Path
from argparse import ArgumentParser
import json

C = tuple[Q, Q]
ZERO: C = (Q(0), Q(0))
ONE: C = (Q(1), Q(0))

def add(x: C, y: C) -> C:
    return x[0] + y[0], x[1] + y[1]

def mul(x: C, y: C) -> C:
    return x[0]*y[0]-x[1]*y[1], x[0]*y[1]+x[1]*y[0]

def scale(q: Q, z: C) -> C:
    return q*z[0], q*z[1]

def conj(x: C) -> C:
    return x[0], -x[1]

def norm1(x: C) -> Q:
    return abs(x[0]) + abs(x[1])

def power(x: C, n: int) -> C:
    y = ONE
    for _ in range(n):
        y = mul(y, x)
    return y

def polynomial_derivative(coeff: list[Q], z: C) -> C:
    return sum_complex(scale(Q(k)*coeff[k], power(z,k-1))
                       for k in range(1,len(coeff)))

def sum_complex(xs) -> C:
    y = ZERO
    for x in xs:
        y = add(y,x)
    return y

def evaluate(coeff: list[Q], z: C) -> C:
    return sum_complex(scale(v, power(z,k)) for k,v in enumerate(coeff))

def antipick_numerator(coeff: list[Q], z: C) -> Q:
    F = evaluate(coeff,z)
    Fprime = polynomial_derivative(coeff,z)
    return mul(Fprime,conj(F))[1]

def finite_spectrum():
    lam = [Q(1,2), Q(1,3), Q(1,3), Q(1,5)]
    coeff=[Q(1)]
    for l in lam:
        nxt=coeff+[Q(0)]
        for k in range(1,len(nxt)):
            nxt[k] += l*coeff[k-1]
        coeff=nxt
    tests=0
    for real in [Q(-2),Q(-1,2),Q(0),Q(1,10),Q(3,2)]:
        for imag in [Q(1,100),Q(1,10),Q(1),Q(7,2)]:
            z=(real,imag)
            left=antipick_numerator(coeff,z)
            right=Q(0)
            for i,l in enumerate(lam):
                other=Q(1)
                for j,m in enumerate(lam):
                    if i != j:
                        val=add(ONE,scale(m,z))
                        other *= val[0]**2+val[1]**2
                right -= imag*l*l*other
            assert left==right
            assert left<0
            tests+=1
    # PF∞ factor product has two repeated roots at +-3,
    # and this exact identity does not deduplicate either root.
    return {"eigenvalues_lambda":[str(x) for x in lam],
            "exact_identity_checks":tests,"repeated_lambda_preserved":True}

def positive_measure_hostile(N: int = 8):
    # F(w)=3/4 + cosh(sqrt(w))/4
    # normalized positive measure 3/4 delta_0 + 1/4 delta_1.
    w=(Q(0),Q(1,10))
    coeff=[Q(1)]+[Q(1,4*factorial(2*k)) for k in range(1,N+1)]
    FN=evaluate(coeff,w)
    GN=polynomial_derivative(coeff,w)
    BN=mul(GN,conj(FN))[1]
    q=Q(1,10)
    firstF=Q(1,4)*q**(N+1)/factorial(2*N+2)
    ratioF=q/Q((2*N+4)*(2*N+3))
    tailF=firstF/(1-ratioF)
    firstG=Q(N+1,4)*q**N/factorial(2*N+2)
    ratioG=Q(N+2,N+1)*q/Q((2*N+4)*(2*N+3))
    tailG=firstG/(1-ratioG)
    assert 0<=ratioF<1 and 0<=ratioG<1
    # The 1-norm bounds complex modulus; product imaginary component
    # error <= ||GN||_1 tailF + tailG (||FN||_1 + tailF).
    uncertainty=norm1(GN)*tailF+tailG*(norm1(FN)+tailF)
    lower=BN-uncertainty
    assert lower>Q(1,2000)
    # This is a PROVED strict counterexample: the whole infinite
    # positive-Fourier-source F violates antiPick at w=i/10.
    return {"measure":[["0","3/4"],["1","1/4"]],
            "w":"i/10", "Taylor_degree":N,
            "rational_truncated_numerator":str(BN),
            "tail_F_1norm_upper":str(tailF),
            "tail_derivative_1norm_upper":str(tailG),
            "strict_positive_lower_bound":str(lower),
            "lower_bound_decimal":f"{float(lower):.14g}",
            "actual_infinite_source_antipick_violated":True,
            "source_sign_is_not_pointwise_inherited_from_positive_measures":True}

def main():
    p=ArgumentParser()
    p.add_argument('--report',type=Path,required=True)
    a=p.parse_args()
    result={"status":"PASS_EXACT_ANTIPICK_SPECTRUM_AND_STRICT_POSITIVE_MEASURE_FALSIFIER",
            "finite_positive_spectrum":finite_spectrum(),
            "positive_source_hostile":positive_measure_hostile(),
            "theorem":"If original F has order <1, is real entire, F(x)>0 for x>=0, and Im(F' conjugate(F))<=0 on all upper half-plane, then all F zeros are negative real; genus-zero positive determinant follows. Conversely it is necessary.",
            "original_Xi_universal_antipick_sign":"UNPROVED_INDEPENDENTLY",
            "Lean_elaboration":"NOT_RUN",
            "external_Alpoge_RH_used":False}
    a.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({"status":result["status"],
           "model_cases":result["finite_positive_spectrum"]["exact_identity_checks"],
           "hostile_strict_lower":result["positive_source_hostile"]["lower_bound_decimal"],
           "full_Xi_sign":result["original_Xi_universal_antipick_sign"]},indent=2))

if __name__=='__main__':
    main()
