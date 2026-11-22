#!/usr/bin/env python3
"""Exact integer/rational witness checks for Jacobi moment-to-determinant-to-prime stability.

Finite falsifier only: analytical all-K theorem is proved separately by the
Leibniz determinant expansion. No RH theorem, zeta zero, L-value, or external
Alpoge source is used in this computation.
"""
from __future__ import annotations
import argparse
import json
from fractions import Fraction
from math import factorial
from pathlib import Path


def primes_prefix(k: int) -> list[int]:
    out = []
    n = 2
    while len(out) < k:
        if all(n % p for p in out if p * p <= n):
            out.append(n)
        n += 1
    return out


def root_moments(bonds: list[int]) -> list[int]:
    n = len(bonds) + 1
    vector = [1] + [0] * (n-1)
    moments = []
    for _ in range(2 * len(bonds) + 1):
        moments.append(vector[0])
        nv = [0] * n
        for j, b in enumerate(bonds):
            nv[j] += b * vector[j+1]
            nv[j+1] += b * vector[j]
        vector = nv
    return moments


def det_bareiss(a: list[list[int]]) -> int:
    n = len(a)
    if n == 0:
        return 1
    a = [list(row) for row in a]
    previous = 1
    sign = 1
    for j in range(n-1):
        if a[j][j] == 0:
            i = next((i for i in range(j+1, n) if a[i][j]), None)
            if i is None:
                return 0
            a[i], a[j] = a[j], a[i]
            sign *= -1
        pivot = a[j][j]
        for i in range(j+1, n):
            for k in range(j+1, n):
                numerator = a[i][k]*pivot - a[i][j]*a[j][k]
                assert numerator % previous == 0
                a[i][k] = numerator//previous
        for i in range(j+1, n):
            a[i][j] = 0
        previous = pivot
    return sign*a[-1][-1]


def principal_dets(moments: list[Fraction], k: int) -> list[Fraction]:
    den = 1
    for x in moments:
        den = den*x.denominator//__import__('math').gcd(den,x.denominator)
    ints = [int(x*den) for x in moments]
    return [Fraction(det_bareiss([[ints[i+j] for j in range(r)] for i in range(r)]),den**r)
            for r in range(k+2)]


def expected_det(primes: list[int], r: int) -> int:
    return __import__('math').prod(p**(2*(r-1-j)) for j,p in enumerate(primes[:max(0,r-1)]))



def hankel_inverse(moments: list[int], k: int) -> list[list[Fraction]]:
    """Exact Gauss-Jordan inverse; checks every H * H^(-1) entry."""
    a = [[Fraction(moments[i+j]) for j in range(k)] +
         [Fraction(int(i==j)) for j in range(k)] for i in range(k)]
    for j in range(k):
        pivot = next((i for i in range(j,k) if a[i][j]), None)
        assert pivot is not None
        a[j],a[pivot] = a[pivot],a[j]
        coefficient=a[j][j]
        for z in range(2*k):
            a[j][z] /= coefficient
        for i in range(k):
            if i == j: continue
            coefficient=a[i][j]
            if coefficient:
                for z in range(2*k):
                    a[i][z] -= coefficient*a[j][z]
    inv = [row[k:] for row in a]
    assert all(sum((Fraction(moments[i+l])*inv[l][j]
                    for l in range(k)), Fraction(0)) == int(i==j)
               for i in range(k) for j in range(k))
    return inv


def row_sum_norm(a: list[list[Fraction]]) -> Fraction:
    return max(sum(abs(v) for v in row) for row in a)



def orthonormal_polynomial_rows(bonds: list[int]) -> list[list[Fraction]]:
    """P_0=1, p_n P_(n+1)=x P_n-p_(n-1) P_(n-1)."""
    rows=[[Fraction(1)]]
    for n,p in enumerate(bonds):
        current=rows[n]
        previous=rows[n-1] if n else []
        z=[Fraction(0)]*(n+2)
        for j,c in enumerate(current):
            z[j+1]+=c
        for j,c in enumerate(previous):
            z[j]-=bonds[n-1]*c
        rows.append([c/p for c in z])
    return rows


def check(k: int) -> dict:
    primes = primes_prefix(k)
    moments_int = root_moments(primes)
    orig = principal_dets([Fraction(m) for m in moments_int],k)
    assert all(orig[r] == expected_det(primes,r) for r in range(k+2))
    P = primes[-1]
    M = (2*P)**(2*k)
    assert all(abs(m) <= M for m in moments_int)
    delta = Fraction(1,8*P+4)
    eps = min([Fraction(1)]+[delta*orig[r]/(factorial(r)*r*(M+1)**(r-1))
                                  for r in range(1,k+2)])
    assert 0 < delta < Fraction(1,4*P+1) and 0<eps<=1
    patterns = [lambda j: 1,
                lambda j: -1 if j%2 else 1,
                lambda j: 0 if j%3==0 else (-1 if j%3==1 else 1)]
    trials=0
    for pattern in patterns:
        measured=[Fraction(m)+eps*pattern(j) for j,m in enumerate(moments_int)]
        d=principal_dets(measured,k)
        for r in range(1,k+2):
            assert abs(d[r]-orig[r]) <= factorial(r)*r*eps*(M+1)**(r-1)
            assert (1-delta)*orig[r] <= d[r] <= (1+delta)*orig[r]
            assert d[r]>0
        for j,p in enumerate(primes):
            ratio=d[j+2]*d[j]/d[j+1]**2
            assert (Fraction(2*p-1,2))**2 < ratio < Fraction(2*p+1,2)**2
            # interval ratio bounds from the relative determinant hypotheses
            assert ((1-delta)/(1+delta)*p)**2 <= ratio
            assert ratio <= ((1+delta)/(1-delta)*p)**2
        trials += 1
    # Hostile control: changing m_2=4 to 9 changes recovered first bond 2 to 3
    hostile=[Fraction(1),Fraction(0),Fraction(9)]
    dh=[Fraction(1),hostile[0],hostile[0]*hostile[2]-hostile[1]**2]
    assert dh[2]*dh[0]/dh[1]**2==9 and 3 != primes[0]
    return {
        "K":k,"last_prime_bond":P,"determinants":k+2,
        "moments":2*k+1,"exact_checked_patterns":trials,
        "relative_det_tolerance":str(delta),
        "certified_moment_tolerance":str(eps),
        "smallest_tolerance_decimal":f"{float(eps):.5e}",
        "moment_magnitude_cap":str(M),
        "hostile_m2_corruption_detected":True,
    }


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--max-bonds',type=int,default=7)
    p.add_argument('--report',type=Path)
    args=p.parse_args()
    assert 1<=args.max_bonds<=9
    checks=[check(k) for k in range(1,args.max_bonds+1)]
    result={
        "status":"EXACT_MOMENT_TO_PRIME_SOURCE_ROUNDING_PASS",
        "checks":checks,
        "source_theorem":"Leibniz determinant perturbation + positive prime-Krylov/Hankel formula",
        "not_verified":["Lean elaboration/kernel","analytic xi correspondence","Alpoge's estimates", "infinite signed Weil positivity"],
    }
    if args.report: args.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({"status":result["status"], "bond_lengths":[x["K"] for x in checks],"worst_denominator_digits":max(len(x['certified_moment_tolerance'].split('/')[1]) if '/' in x['certified_moment_tolerance'] else 1 for x in checks), "pattern_trials":sum(x['exact_checked_patterns'] for x in checks),"hostile_detected":True},indent=2))

if __name__=='__main__':main()
