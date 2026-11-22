#!/usr/bin/env python3
"""Rational certificate examples for native nonprincipal L'/L(1,chi).

All exact arithmetic. Analytic tail inequalities follow independently by
zero character mean in complete conductor periods + Abel summation.
The script checks finite entries and interval inequalities; it is not a
Lean proof or a certificate of EAtH/CoreAtH.
"""
from __future__ import annotations
from fractions import Fraction as F
from pathlib import Path
from math import gcd
from functools import lru_cache
import json, argparse
from verify_adaptive_prime_log_gm import log_hat, log_interval, log_scale

ZERO=(F(0),F(0)); ONE=(F(1),F(0))
def add(a,b):return (a[0]+b[0],a[1]+b[1])
def sub(a,b):return (a[0]-b[0],a[1]-b[1])
def mul(a,b):return (a[0]*b[0]-a[1]*b[1],a[0]*b[1]+a[1]*b[0])
def sc(a,s):return (a[0]*s,a[1]*s)
def div(a,b):
    d=b[0]**2+b[1]**2
    assert d>0
    return ((a[0]*b[0]+a[1]*b[1])/d,(a[1]*b[0]-a[0]*b[1])/d)
def norm_lo(a):return max(abs(a[0]),abs(a[1]))
def norm_hi(a):return abs(a[0])+abs(a[1])
def payload(a):return {'re':str(a[0]),'im':str(a[1])}
def rational_str(a):return f'{float(a):.12g}'

CHAR4={0:ZERO,1:ONE,2:ZERO,3:(F(-1),F(0))}
CHAR5={0:ZERO,1:ONE,2:(F(0),F(1)),3:(F(0),F(-1)),4:(F(-1),F(0))}


def certificate(q, char, cutoff, bits):
    assert cutoff%q==0 and cutoff>=3
    assert set(char)==set(range(q))
    assert sum((x[0] for x in char.values()),F(0))==0
    assert sum((x[1] for x in char.values()),F(0))==0
    assert all(x[0]**2+x[1]**2<=1 for x in char.values())
    S=ZERO; T=ZERO; errlog=F(0)
    for n in range(1,cutoff+1):
        chi=char[n%q]
        if chi==ZERO:continue
        S=add(S,sc(chi,F(1,n)))
        # T approximates the exact derivative L'(1,chi) = -sum chi(n)*log(n)/n.
        T=sub(T,sc(chi,log_hat(bits,n)/n))
        errlog += F(log_scale(n)+1,2**bits*n)
    radL=F(q,cutoff)
    loglo,loghi=log_interval(cutoff,bits+16)
    assert loglo>0
    radDeriv=F(q,cutoff)*loghi + errlog
    absS_lo=norm_lo(S)
    d=absS_lo-radL
    assert d>0, (q,cutoff,absS_lo,radL)
    # L1 is within radL of exact finite S by periodic Abel summation.
    # Derivative L' within radDeriv of exact rational T.
    ratio=div(T,S)
    ratio_rad=radDeriv/d + norm_hi(T)*radL/(d*absS_lo)
    abs_log_deriv_bound=(norm_hi(T)+radDeriv)/d
    assert ratio_rad>=0 and abs_log_deriv_bound>=0
    assert norm_hi(ratio)<=abs_log_deriv_bound+ratio_rad # harmless consistency
    return {
       'modulus':q,'partial_sum_cutoff':cutoff,'precision_bits':bits,
       'period_zero_mean_exact':True,
       'S_N_exact':payload(S),
       'T_N_rational_log_derivative_center':payload(T),
       'L1_tail_norm_le':str(radL),
       'L1_lower_abs_certified':str(d),
       'Lprime_tail_plus_log_error_le':str(radDeriv),
       'log_derivative_ratio_center':payload(ratio),
       'log_derivative_ratio_error_le':str(ratio_rad),
       'log_derivative_abs_upper':str(abs_log_deriv_bound),
       'ratio_center_re_decimal':rational_str(ratio[0]),
       'ratio_re_radius_decimal':rational_str(ratio_rad),
       'proof_obligation':'Abel summation plus zero-mean q-periodicity; no RH; Lean formalization NOT_RUN',
       '_center_re':ratio[0], '_rad':ratio_rad
    }


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--report',type=Path,default=Path('/mnt/data/native_gm_analytic_constant_certificates.json'))
    args=p.parse_args()
    cases=[certificate(4,CHAR4,256,28),certificate(5,CHAR5,250,28)]
    # Source Euler constant bounds: Real.eulerMascheroniSeq_lt_eulerMascheroniConstant
    # and Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' at n>0.
    N=256
    harmonic=sum((F(1,j) for j in range(1,N+1)),F(0))
    lnN=log_interval(N,44)
    lnN1=log_interval(N+1,44)
    gammaLo=harmonic-lnN1[1]
    gammaHi=harmonic-lnN[0]
    assert F(1,2)<gammaLo<gammaHi<F(2,3)
    # This is an explicitly labelled illustrative family, NOT a formally
    # realized original Level.Nt/Level.wt structure.
    weights=[F(-1,4),F(1,3)]
    Acent=F(1)+(gammaLo+gammaHi)/2+sum((w*c['_center_re'] for w,c in zip(weights,cases)),F(0))
    Arad=(gammaHi-gammaLo)/2+sum((abs(w)*c['_rad'] for w,c in zip(weights,cases)),F(0))
    assert Arad>0
    for c in cases:
        del c['_center_re'];del c['_rad']
    out={
      'status':'EXACT_NATIVE_NONPRINCIPAL_ANALYTIC_CONSTANT_CERTIFICATES_PASS',
      'character_cases':cases,
      'Mathlib_Euler_gamma_lower_real':str(gammaLo),
      'Mathlib_Euler_gamma_upper_real':str(gammaHi),
      'illustrative_not_a_realized_Level_weights':[str(w) for w in weights],
      'illustrative_A_level_center':str(Acent),
      'illustrative_A_level_radius':str(Arad),
      'illustrative_A_level_center_decimal':rational_str(Acent),
      'illustrative_A_level_radius_decimal':rational_str(Arad),
      'genuine_source_constant_needs_actual_Level_Nt_Level_wt_enumeration':True,
      'true_analytical_tail_proof':'For nontrivial q-periodic chi, each period sums to zero; partial sums bounded by q. Abel: |L(1)-S_N|<=q/N; |Lprime(1)-T_N_exact|<=q log(N)/N for N multiple q >=3.',
      'uncertainties':['Lean kernel NOT_RUN','numerical checks finite only','actual Level.Nt family not instantiated','EAtH and CoreAtH not supplied'],
      'RH_used':False
    }
    args.report.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'cases':[{k:v for k,v in c.items() if k in ('modulus','partial_sum_cutoff','L1_lower_abs_certified','log_derivative_abs_upper','ratio_center_re_decimal','ratio_re_radius_decimal')} for c in cases],
    'A_example_approx':out['illustrative_A_level_center_decimal'],'A_example_radius':out['illustrative_A_level_radius_decimal']},indent=2))

if __name__=='__main__':main()
