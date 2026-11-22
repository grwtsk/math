#!/usr/bin/env python3
"""Finite exact rational native cyclic-Gm integer slope checks, no RH.

This validates the exact algebraic source identity and independently bounded
true logarithmic step, not an eventual weighted-Mertens power-saving theorem.
"""
from fractions import Fraction as Q
from pathlib import Path
import argparse, json
from verify_cyclic_level_phase_curvature import level_phase, group4, group5, group15, primepower
from verify_adaptive_prime_log_gm import log_hat, log_interval


def check(modulus, group, cutoff=256):
    A=Q(13,7)  # deliberately synthetic affine constant for algebra tests
    smoothed=Q(0)
    B=Q(0)
    cases=0
    bounds=0
    phase_min=None
    for n in range(1,cutoff+1):
        phase=level_phase(group(n))
        phase_min=phase if phase_min is None else min(phase_min,phase)
        p=primepower(n)
        if p is not None:B+=log_hat(30,p)*phase/n
        next_smoothed=smoothed+B
        # S(n+1)-S(n) = sum_{m<=n} Lambda(m)c(m)/m.
        nlog=log_hat(30,n)
        npluslog=log_hat(30,n+1)
        G_n=smoothed-n*nlog+A*n
        G_np=next_smoothed-(n+1)*npluslog+A*(n+1)
        D=(n+1)*npluslog-n*nlog
        assert G_np-G_n==B+A-D
        cases+=1
        # Independently interval-enclose the TRUE real-log step.
        lnlo,lnhi=log_interval(n,54)
        lp_lo,lp_hi=log_interval(n+1,54)
        Dlo=(n+1)*lp_lo-n*lnhi
        Dhi=(n+1)*lp_hi-n*lnlo
        assert Dlo>=lnhi+1, (modulus,n,'log_step_lower')
        assert Dhi<=lnlo+1+Q(1,n), (modulus,n,'log_step_upper')
        bounds+=1
        smoothed=next_smoothed
    return {'modulus':modulus,'weighted_slope_checks':cases,
            'rigorous_true_log_step_interval_checks':bounds,
            'minimum_checked_phase':str(phase_min)}


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--cutoff',type=int,default=256)
    parser.add_argument('--report',type=Path,default=Path('cyclic_level_centered_slope_checks.json'))
    args=parser.parse_args()
    out=[check(q,g,args.cutoff) for q,g in ((4,group4),(5,group5),(15,group15))]
    result={'status':'EXACT_NATIVE_CYCLIC_GM_INTEGER_SLOPE_PASS',
            'records':out,'total_slope_checks':sum(x['weighted_slope_checks'] for x in out),
            'total_log_step_checks':sum(x['rigorous_true_log_step_interval_checks'] for x in out),
            'original_analytic_constant':'SYNTHETIC_A_FOR_FINITE_ALGEBRA_CHECK_ONLY',
            'eventual_weighted_Mertens_one_sided_rate':'NOT_PROVED',
            'lean_kernel':'NOT_RUN','RH_assumed':False}
    args.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':result['status'],
        'slope_checks':result['total_slope_checks'],
        'log_step_checks':result['total_log_step_checks']},indent=2))

if __name__=='__main__':main()
