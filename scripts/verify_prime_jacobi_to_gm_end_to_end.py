#!/usr/bin/env python3
"""Exact source-only prime-Jacobi moments -> true primes -> signed Gm check.

No zeta zero, RH assumption, synthetic eigenvalue table, or Alpoge
final theorem. The only analytic Gm source requirements remain open
and are NOT supplied by this finite check.
"""
from __future__ import annotations
import argparse, json
from fractions import Fraction as Q
from math import isqrt
from pathlib import Path

from verify_prime_jacobi_moment_to_source_stability import (
    primes_prefix, root_moments, principal_dets)
from verify_adaptive_prime_log_gm import (
    exact_prime_power, log_scale, log_hat, log_interval,
    character_mod4, character_mod5_real)


def nearest_integer_root(q: Q) -> int:
    assert q > 0
    root = isqrt(q.numerator // q.denominator)
    hits = [p for p in (root, root+1) if p >= 1 and
            Q(2*p-1,2)**2 < q < Q(2*p+1,2)**2]
    assert len(hits) == 1
    return hits[0]


def verify() -> dict:
    K = 8
    expected = primes_prefix(K)
    moments = root_moments(expected)
    D = principal_dets([Q(x) for x in moments], K)
    P = expected[-1]
    delta = Q(1,8*P+4)
    eps = delta / ((2**(K+1)-1) * (K+1)**2)
    observed_moments = [Q(x)+ (eps if j%2==0 else -eps)
                        for j,x in enumerate(moments)]
    measured_D = principal_dets(observed_moments,K)
    assert all(D[j]>0 and abs(measured_D[j]-D[j])<=delta*D[j]
               for j in range(1,K+2))
    recovered = [nearest_integer_root(
        measured_D[j+2]*measured_D[j]/measured_D[j+1]**2)
        for j in range(K)]
    assert recovered == expected

    X = 16
    weights = (Q(-1,4), Q(1,3))
    def prime_base(n):
        for p in recovered:
            u = n
            while u>1 and u%p==0: u//=p
            if u==1 and n>=p: return p
        return None
    atoms = [(n,prime_base(n)) for n in range(1,X+1)]
    atoms = [(n,p) for n,p in atoms if p is not None]
    assert len(atoms)==len([n for n in range(1,X+1)
                            if exact_prime_power(n)])
    def phase(n):
        return Q(1)+weights[0]*character_mod4(n)+\
                   weights[1]*character_mod5_real(n)

    margin = Q(4)  # X^(3/4)-X^(1/2) = 8-4, for X=16.
    selected=None
    for bits in range(1,40):
        e = sum((Q(log_scale(p)+1,2**bits) *
                 (Q(X,n)-1)*abs(phase(n))
                 for n,p in atoms),Q(0))
        if e<=margin:
            selected=(bits,e)
            break
    assert selected is not None
    bits,ledger=selected
    signed=Q(0)
    base=Q(0)
    chi4=Q(0)
    chi5=Q(0)
    enclosure=Q(0)
    for n,p in atoms:
        a=Q(X,n)-1
        v=log_hat(bits,p)
        lo,hi=log_interval(p,bits+20)
        delta_log=v-(lo+hi)/2
        base+=delta_log*a
        chi4+=delta_log*a*character_mod4(n)
        chi5+=delta_log*a*character_mod5_real(n)
        signed+=delta_log*a*phase(n)
        enclosure+=max(abs(v-lo),abs(v-hi))*a*abs(phase(n))
    assert signed==base+weights[0]*chi4+weights[1]*chi5
    assert abs(signed)<=enclosure<=ledger<=margin
    return {
        'status':'EXACT_END_TO_END_PRIME_JACOBI_TO_GM_SOURCE_PASS',
        'source_bonds':expected,
        'moment_count':len(moments),
        'relative_det_tolerance':str(delta),
        'prime_gap_moment_precision':str(eps),
        'recovered_primes_identical':True,
        'finite_cutoff':X,'prime_power_terms':len(atoms),
        'adaptive_log_bits':bits,
        'source_family_weights':[str(x) for x in weights],
        'signed_delta_enclosure':str(enclosure),
        'certified_absolute_ledger':str(ledger),
        'power_exponent_margin':str(margin),
        'true_analytic_log_derivatives':'held fixed, cancel algebraically',
        'independent_of_Alpoge_final_result':True,
        'lean_kernel_check':'NOT_RUN',
        'native_EAtH_CoreAtH':'UNSUPPLIED'
    }


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--report',type=Path)
    args=parser.parse_args()
    result=verify()
    if args.report: args.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':result['status'],
        'source_bonds':result['source_bonds'],
        'finite_cutoff':result['finite_cutoff'],
        'prime_power_terms':result['prime_power_terms'],
        'adaptive_log_bits':result['adaptive_log_bits'],
        'margin':result['power_exponent_margin']},indent=2))


if __name__=='__main__':main()
