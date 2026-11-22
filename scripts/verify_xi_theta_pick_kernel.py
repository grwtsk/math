#!/usr/bin/env python3
"""Exact rational two-point Xi Pick kernel algebra and hostile source.

The actual Xi two-point Pick kernel is NOT proved PSD. These tests
verify the spectral-factor Gram identity, multiplicity, and a rigorous
counterexample for generic positive theta-type measures.
"""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json, argparse
from verify_xi_theta_antipick_source import (
    ZERO, ONE, add, mul, scale, conj, norm1, power, evaluate,
    polynomial_derivative, antipick_numerator, finite_spectrum,
    positive_measure_hostile)


def sub(a,b):return a[0]-b[0],a[1]-b[1]

def abs2(a):return a[0]*a[0]+a[1]*a[1]

def factor(l,w):return add(ONE,scale(l,w))

def product_complex(arr):
    out=ONE
    for a in arr:out=mul(out,a)
    return out

def gram_kernel(lam,w,v):
    out=ZERO
    for j,l in enumerate(lam):
        pw=product_complex([factor(other,w) for k,other in enumerate(lam) if j!=k])
        pv=product_complex([factor(other,v) for k,other in enumerate(lam) if j!=k])
        out=add(out,scale(l*l,mul(pw,conj(pv))))
    return out

def source_F_coeff(lam):
    coeff=[Q(1)]
    for l in lam:
        nxt=coeff+[Q(0)]
        for i in range(1,len(nxt)):
            nxt[i]+=l*coeff[i-1]
        coeff=nxt
    return coeff

def two_point_numerator(coeff,w,v):
    Fw,Fv=evaluate(coeff,w),evaluate(coeff,v)
    dFw,dFv=polynomial_derivative(coeff,w),polynomial_derivative(coeff,v)
    return sub(mul(Fw,conj(dFv)),mul(dFw,conj(Fv)))

def run():
    lam=[Q(1,2),Q(1,3),Q(1,3),Q(1,5)]
    coeff=source_F_coeff(lam)
    wlist=[(x,y) for x in [Q(-1),Q(0),Q(1,2),Q(2),Q(5)] for y in [Q(1,100),Q(1,10),Q(1),Q(3)]]
    identities=0
    for w,v in product(wlist,wlist):
        numerator=two_point_numerator(coeff,w,v)
        denom=sub(w,conj(v))
        assert denom!=ZERO
        out=mul(denom,gram_kernel(lam,w,v))
        assert numerator==out,(w,v)
        identities+=1
    psd=0
    for start in range(0,20,4):
        ws=wlist[start:start+4]
        cs=[(Q(1),Q(2)),(Q(-1,2),Q(0)),(Q(2,3),Q(-1)),(Q(0),Q(3,5))]
        form=ZERO
        for i in range(len(ws)):
            for j in range(len(ws)):
                form=add(form,mul(conj(cs[i]),mul(gram_kernel(lam,ws[i],ws[j]),cs[j])))
        # PSD as sum of squares with EXACT rational entries, including repeats.
        features=[]
        for j,l in enumerate(lam):
            v=ZERO
            for c,w in zip(cs,ws):
                prod=product_complex([factor(x,w) for k,x in enumerate(lam) if k!=j])
                v=add(v,mul(conj(c),scale(l,prod)))
            features.append(v)
        sumsq=sum((abs2(x) for x in features),Q(0))
        assert form[0]==sumsq and form[1]==0 and form[0]>0
        psd+=1
    hostile=positive_measure_hostile()
    antipick_lower=Q(hostile['strict_positive_lower_bound'])
    # Diagonal Pick kernel is -B(w)/Im(w), which is negative here.
    assert antipick_lower>Q(1,2000)
    assert -antipick_lower/Q(1,10)<-Q(1,200)
    return {
        'status':'PASS_EXACT_XI_PICK_TWOPOINT_FACTOR_KERNEL_AND_HOSTILE_DIAGONAL',
        'finite_positive_spectrum':[str(l) for l in lam],
        'two_point_source_kernel_equalities':identities,
        'Gram_PSD_quadratic_checks':psd,
        'hostile_theta_positive_measure':'3/4 delta_0 + 1/4 delta_1',
        'hostile_point':'w=i/10',
        'hostile_antiPick_B_strict_lower':str(antipick_lower),
        'hostile_Pick_diagonal_strict_upper':str(-antipick_lower/Q(1,10)),
        'hostile_Pick_diagonal_less_than_minus_1_over_200':True,
        'original_Xi_two_point_kernel_PSD':'UNPROVED_INDEPENDENTLY',
        'full_rh_from_this_check':'NOT_INFERRED',
        'Lean_kernel':'NOT_RUN',
        'external_final_RH_imported':False,
    }

if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('--report',type=Path,required=True)
    x=a.parse_args();r=run();x.report.write_text(json.dumps(r,indent=2)+'\n')
    print(json.dumps({k:v for k,v in r.items() if k not in ('finite_positive_spectrum',)},indent=2))
