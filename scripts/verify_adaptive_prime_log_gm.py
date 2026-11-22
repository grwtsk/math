#!/usr/bin/env python3
"""Exact rational verification of source-prime adaptive log and Gm error budget.

All logs are enclosed by independent finite geometric-series intervals;
no floating approximation is used as a theorem oracle. This verifies
finite computations only, not Lean statements or analytic Gm estimates.
"""
from __future__ import annotations
from fractions import Fraction as Q
from math import isqrt
from pathlib import Path
import argparse, json


def log_one_minus_hat(bits: int, x: Q) -> Q:
    assert bits >= 0 and Q(0) <= x <= Q(1, 2)
    return -sum((x**h / h for h in range(1, bits + 1)), Q(0))


def log_one_minus_interval(terms: int, x: Q) -> tuple[Q, Q]:
    assert terms > 0 and Q(0) <= x <= Q(1, 2)
    centre = log_one_minus_hat(terms, x)
    tail = x**(terms+1) / ((terms+1) * (1-x))
    return centre-tail, centre


def log_scale(n: int) -> int:
    assert n > 0
    return n.bit_length()


def log_hat(bits: int, n: int) -> Q:
    k = log_scale(n)
    x = 1-Q(n, 2**k)
    return log_one_minus_hat(bits, x)-k*log_one_minus_hat(bits, Q(1,2))


def log_interval(n: int, terms: int) -> tuple[Q,Q]:
    k = log_scale(n)
    x = 1-Q(n, 2**k)
    a,b=log_one_minus_interval(terms,x)
    c,d=log_one_minus_interval(terms,Q(1,2))
    return a-k*d,b-k*c


def exact_prime_power(n: int) -> tuple[int,int] | None:
    if n < 2:
        return None
    for p in range(2,isqrt(n)+1):
        if n%p==0:
            q=n
            h=0
            while q%p==0:
                q//=p
                h+=1
            return (p,h) if q==1 else None
    return n,1


def character_mod4(n:int)->Q:
    return Q(0) if n%2==0 else Q(1 if n%4==1 else -1)


def character_mod5_real(n:int)->Q:
    return {0:Q(0),1:Q(1),2:Q(0),3:Q(0),4:Q(-1)}[n%5]


def phase(n:int)->Q:
    return Q(1)+Q(-1,4)*character_mod4(n)+Q(1,3)*character_mod5_real(n)


def test():
    sample_n=[1,2,3,4,5,7,11,16,31,41,67,101,251,503,1024,1296]
    sample_bits=[0,1,2,4,8,12,24,48,80]
    log_checks=0
    for n in sample_n:
        for bits in sample_bits:
            v=log_hat(bits,n)
            lower,upper=log_interval(n,bits+20)
            bound=Q(log_scale(n)+1,2**bits)
            assert lower<=upper
            assert v-lower<=bound and upper-v<=bound
            log_checks+=1
    atom_checks=0
    for n in range(1,1300):
        atom=exact_prime_power(n)
        if atom is None:
            continue
        p,_=atom
        for bits in (4,12,24):
            v=log_hat(bits,p)
            low,high=log_interval(p,bits+20)
            bound=Q(log_scale(p)+1,2**bits)
            assert v-low<=bound and high-v<=bound
            atom_checks+=1
    budgets=[]
    for base in (2,3,4,5,6):
        X=base**4
        margin=Q(base**3-base**2)
        terms=[]
        for n in range(1,X+1):
            atom=exact_prime_power(n)
            if atom is None:
                continue
            p,_=atom
            a=Q(X,n)-1
            assert a>=0
            terms.append((p,n,a,phase(n)))
        chosen=None
        for bits in range(0,50):
            err=sum((Q(log_scale(p)+1,2**bits)*a*abs(w)
                     for p,n,a,w in terms),Q(0))
            if err <= margin:
                chosen=(bits,err)
                break
        assert chosen is not None
        bits,err=chosen
        # Endpoints of each exact log interval independently enclose
        # the unknown full signed Gm arithmetic readout.
        residual=Q(0)
        for p,n,a,w in terms:
            v=log_hat(bits,p)
            low,high=log_interval(p,bits+20)
            residual += max(abs(v-low),abs(v-high))*a*abs(w)
        assert residual<=err<=margin
        budgets.append({'cutoff':X,'window_base':base,'prime_power_terms':len(terms),
                        'bits_sufficient':bits,'error_budget':str(err),
                        'exponent_margin':str(margin)})
    # Hostile all-window scenario: a fixed uniform error cannot protect
    # sublinear power bounds merely by the triangle inequality.
    X=2**128
    eps=Q(1,2**24)
    lower=eps*sum((Q(X,n)-1 for n in range(1,33)),Q(0))
    assert lower > 2**96 # X^(3/4)
    return {'status':'EXACT_ADAPTIVE_PRIME_LOG_AND_GM_ERROR_PASS',
            'geometric_log_enclosures':log_checks,'prime_power_log_enclosures':atom_checks,
            'weighted_complex_character_phase':'quadratic mod4 and real part of order-4 mod5',
            'adaptive_budgets':budgets,
            'hostile_fixed_24bit_uniform_error_cannot_certify_global_x_3over4':True,
            'hostile_x':'2^128','hostile_lower_bound':str(lower),
            'lean_elaboration':'NOT_RUN','mathlib_kernel':'NOT_RUN',
            'upstream_coreGm_EAtH_CoreAtH':'NOT_SUPPLIED',
            'does_not_assume_RH':True}


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--report',type=Path)
    args=parser.parse_args()
    result=test()
    if args.report:
        args.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':result['status'],
                     'log_checks':result['geometric_log_enclosures'],
                     'prime_power_checks':result['prime_power_log_enclosures'],
                     'budgets':result['adaptive_budgets'],
                     'hostile_fixed_bits':True},indent=2))


if __name__=='__main__':main()
