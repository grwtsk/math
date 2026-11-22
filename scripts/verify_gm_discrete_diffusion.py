#!/usr/bin/env python3
"""Finite rational diffusion of native smoothed arithmetic discrete curvature.

The full finite Dirichlet boundary correction is retained. Not RH proof.
"""
from __future__ import annotations
from fractions import Fraction as Q
from pathlib import Path
from math import isqrt
import argparse, json


def primepow(n):
    if n<2:return None
    for p in range(2,isqrt(n)+1):
        if n%p==0:
            r=n
            while r%p==0:r//=p
            return p if r==1 else None
    return n


def mm(a,b):
    return [[sum((a[i][k]*b[k][j] for k in range(len(b))),Q(0))
             for j in range(len(b[0]))] for i in range(len(a))]


def mv(a,v):
    return [sum((x*y for x,y in zip(row,v)),Q(0)) for row in a]


def identity(n):
    return [[Q(int(i==j)) for j in range(n)] for i in range(n)]


def linspace_ops(n,t):
    L=[[Q(-2) if i==j else Q(1) if abs(i-j)==1 else Q(0)
        for j in range(n)] for i in range(n)]
    I=identity(n)
    D=[[I[i][j]+t*L[i][j] for j in range(n)] for i in range(n)]
    return L,D


def inverse(a):
    n=len(a)
    r=[row[:]+identity(n)[i] for i,row in enumerate(a)]
    for j in range(n):
        swap=next((i for i in range(j,n) if r[i][j]!=0),None)
        assert swap is not None
        r[j],r[swap]=r[swap],r[j]
        pivot=r[j][j]
        r[j]=[v/pivot for v in r[j]]
        for i in range(n):
            if i==j:continue
            factor=r[i][j]
            if factor:r[i]=[u-factor*v for u,v in zip(r[i],r[j])]
    return [row[n:] for row in r]


def smoothed(coeff,x):
    return sum((a*max(Q(x,n)-1,Q(0)) for n,a in coeff.items()),Q(0))


def maxabs(v):
    return max((abs(x) for x in v),default=Q(0))


def test(n,t,depth):
    assert n>=2 and 0<t<Q(1,4)
    L,D=linspace_ops(n,t)
    coeff={k:Q((-1)**k*(k%7+1),13) for k in range(2,n+1) if primepow(k)}
    A=Q(17,11)
    q=[smoothed(coeff,k)+A*k for k in range(n+2)]
    F=q[1:n+1]
    # c_k is a_k/k (hinge slope-jump coefficient), with no guess at k=1.
    c=[coeff.get(k,Q(0))/k for k in range(1,n+1)]
    edge=[-q[0]]+[Q(0)]*(n-2)+[-q[n+1]]
    assert mv(L,F)==[x+y for x,y in zip(c,edge)]
    assert mm(L,D)==mm(D,L)
    power=identity(n)
    for _ in range(depth):power=mm(power,D)
    assert mm(L,power)==mm(power,L)
    assert mv(L,mv(power,F))==mv(power,mv(L,F))
    assert mv(L,mv(power,F))==[x+y for x,y in zip(mv(power,c),mv(power,edge))]
    assert maxabs(mv(power,F))<=maxabs(F)
    invD=inverse(D)
    assert mm(D,invD)==identity(n)==mm(invD,D)
    # Rigorous entrywise infinity norm upper bound from the convergent
    # Neumann series (I+tL)^(-1)=sum_m(-tL)^m, since ||tL||inf<=4t<1.
    invnorm=max(sum(abs(x) for x in row) for row in invD)
    assert invnorm<=1/(1-4*t)
    invpower=identity(n)
    for _ in range(depth):invpower=mm(invpower,invD)
    assert mm(invpower,power)==identity(n)
    assert maxabs(mv(invpower,mv(power,F)))==maxabs(F)
    return {'n':n,'t':str(t),'depth':depth,
        'max_inverse_row_norm':str(invnorm),
        'boundary_correction_nonzero':edge[-1]!=0,
        'boundary_term_diffused_norm':str(maxabs(mv(power,edge)))}


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--report',type=Path)
    args=p.parse_args()
    checks=[test(n,t,d) for n in (2,3,5,8,13)
        for t in (Q(1,16),Q(1,8)) for d in (0,1,3,5)]
    result={'status':'EXACT_SIGNED_GM_CURVATURE_DIFFUSION_WITH_BOUNDARY_PASS',
        'cases':len(checks),'checks':checks,
        'boundary_correction':'Dirichlet truncated discrete second difference has edge vector -q(0)e_1 -q(N+1)e_N; do not discard',
        'source_symbol_effect':'L D^m f = D^m(L f), not uncorrected D^m(coefficient source)',
        'inverse_heat_norm_le':'(1-4t)^(-m), for t in (0,1/4)',
        'lean_checker':'NOT_RUN','RH':'NOT_INFERRED'}
    if args.report:args.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'tests':len(checks),
        'nonzero_boundary_tests':sum(x['boundary_correction_nonzero'] for x in checks)},indent=2))


if __name__=='__main__':main()
