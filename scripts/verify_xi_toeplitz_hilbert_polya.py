#!/usr/bin/env python3
"""Source-faithful Xi Toeplitz / positive Hilbert-Polya gate checks.

Exact finite tests use Fraction ONLY, with no zero ordinates or RH theorem.
The optional --numeric-xi tests actual xi coefficients via two independent
Cauchy circles; these are EXPLORATORY, not certified all-minor positivity.
"""
from __future__ import annotations
import argparse
import json
from fractions import Fraction as Q
from functools import lru_cache
from itertools import combinations, permutations
from math import factorial
from pathlib import Path


@lru_cache(None)
def signed_permutations(k):
    return [(p, -1 if sum(p[i] > p[j] for i in range(k)
                          for j in range(i+1,k)) % 2 else 1)
            for p in permutations(range(k))]


def toeplitz_minor(a, rows, cols):
    value = a[0] * 0
    for perm, sign in signed_permutations(len(rows)):
        term = a[0]*0 + 1
        for i,j in enumerate(perm):
            gap = cols[j] - rows[i]
            if gap < 0 or gap >= len(a):
                term = 0
                break
            term *= a[gap]
        value += sign * term
    return value


def check_all(a, width=8, max_rank=4, tolerance=0):
    counts = []
    witness = None
    for k in range(1,max_rank+1):
        total=negative=unresolved=0
        for rows in combinations(range(width),k):
            for cols in combinations(range(width),k):
                x=toeplitz_minor(a,rows,cols)
                total+=1
                if x < -tolerance:
                    negative+=1
                    if witness is None:
                        witness = [list(rows),list(cols),str(x)]
                if -tolerance <= x <= tolerance:
                    unresolved+=1
        counts.append({"rank":k,"total":total,"negative":negative,
                       "zero_or_numerically_unresolved":unresolved})
    return counts,witness


def finite_exact():
    eigenvalues=(Q(1,2),Q(1,3),Q(1,5))
    a=[Q(1)]
    for lam in eigenvalues:
        nxt=a+[Q(0)]
        for k in range(1,len(nxt)):
            nxt[k]+=lam*a[k-1]
        a=nxt
    assert a == [Q(1),Q(31,30),Q(1,3),Q(1,30)]
    counts,bad=check_all(a)
    assert sum(x["total"] for x in counts)==8884
    assert bad is None
    # Exact Newton trace identities for K=diag(eigenvalues).
    assert a[1]==sum(eigenvalues)
    assert a[1]**2-2*a[2]==sum(x**2 for x in eigenvalues)
    assert a[1]**3-3*a[1]*a[2]+3*a[3]==sum(x**3 for x in eigenvalues)
    assert toeplitz_minor([Q(1),Q(1),Q(1)],
                          (0,1,2),(1,2,3))==-1
    positive_fourier=[Q(1)]+[Q(1,4*factorial(2*n)) for n in range(1,8)]
    hostile=toeplitz_minor(positive_fourier,(0,1,2),(1,2,3))
    assert hostile==-Q(7,23040)
    # Taylor truncation is NOT the positive-eigenfactor truncation.
    assert 3**2-4*3 == -3 # (1+w)^3 truncated after degree 2.
    # Prime-only Jacobi odd ranks have a forced eigenvalue at zero.
    primes=[]
    for candidate in range(2,100):
        if all(candidate % p for p in primes if p*p <=candidate):
            primes.append(candidate)
        if len(primes)>=20:break
    p_prevprev=1  # P_0(0)
    p_prev=0      # P_1(0)
    odd=even=0
    for rank in range(1,21):
        value=p_prev if rank==1 else -primes[rank-2]**2*p_prevprev
        if rank%2:
            assert value==0
            odd+=1
        else:
            assert value!=0
            even+=1
        if rank>1:
            p_prevprev,p_prev=p_prev,value
    assert odd==10 and even==10
    return {"status":"PASS_EXACT_RATIONAL_PF_AND_PARITY_FALSIFIERS",
            "trace_class_positive_model":["1/2","1/3","1/5"],
            "generating_coefficients":[str(x) for x in a],
            "all_finite_minors":counts,
            "total_exact_nonnegative_minors":8884,
            "positive_coefficients_not_PF_min":-1,
            "positive_fourier_measure_not_PF_minor":str(hostile),
            "Taylor_truncation_discriminant":-3,
            "Jacobi_odd_sections_forced_zero":odd,
            "Jacobi_even_sections_nonzero_at_origin":even}


def numeric_xi():
    import mpmath as mp
    mp.mp.dps=85
    def xi(t):
        s=mp.mpf("0.5")+t
        return s*(s-1)*mp.power(mp.pi,-s/2)*mp.gamma(s/2)*mp.zeta(s)/2
    def coeffs(R,M):
        C=xi(0)
        values=[xi(R*mp.e**(mp.j*2*mp.pi*j/M))/C for j in range(M)]
        return [sum(values[j]*mp.e**(-mp.j*2*mp.pi*2*n*j/M)
                    for j in range(M))/(M*R**(2*n)) for n in range(8)]
    a=coeffs(mp.mpf(4),64)
    b=coeffs(mp.mpf(3),96)
    delta=max(abs(x-y)/abs(y) for x,y in zip(a,b))
    assert delta < mp.mpf("1e-48")
    assert max(abs(x.imag) for x in a+b) < mp.mpf("1e-70")
    counts,bad=check_all([x.real for x in a],tolerance=mp.mpf("1e-67"))
    assert bad is None
    return {"status":"EXPLORATORY_ONLY_NOT_PROVEN",
            "actual_normalized_xi_coefficients":[mp.nstr(x.real,30) for x in a],
            "Cauchy_circles":["R=4 nodes=64","R=3 nodes=96"],
            "max_relative_circle_difference":mp.nstr(delta,15),
            "minor_counts":counts,
            "negative_beyond_numeric_tolerance":0,
            "xi_center":mp.nstr(xi(0),30),
            "traceK_candidate_a1":mp.nstr(a[1].real,30),
            "traceK2_candidate":mp.nstr((a[1]**2-2*a[2]).real,30),
            "all_rank_total_positivity":"UNPROVED"}


def main():
    p=argparse.ArgumentParser()
    p.add_argument("--numeric-xi",action="store_true")
    p.add_argument("--report",type=Path)
    args=p.parse_args()
    exact=finite_exact()
    numeric=numeric_xi() if args.numeric_xi else {"status":"NOT_RUN"}
    result={"exact":exact,"actual_xi":numeric,
            "logical_theorem":"Xi PF-infinity iff positive trace-class Fredholm Xi iff RH (Edrei + order 1/2)",
            "independent_all_minors":"UNPROVED",
            "Edrei_to_Fredholm_Lean":"NOT_RUN",
            "Lean_kernel":"NOT_RUN",
            "outside_Alpoge_RH_used":False}
    if args.report:args.report.write_text(json.dumps(result,indent=2)+"\n")
    print(json.dumps({"exact":exact,"numerical_status":numeric["status"],
                      "PF_infinity":"UNPROVED"},indent=2))


if __name__=="__main__":
    main()
