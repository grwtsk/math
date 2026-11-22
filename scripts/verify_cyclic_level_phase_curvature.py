#!/usr/bin/env python3
"""Exact cyclic Level.ofSub phase/curvature checks, RH-independent.

Character groups are genuine multiplicative moduli 4, 5, or products
from moduli 3 and 5. The primitive-source character values are retained,
including at nonunits of the ambient modulus. Rational arithmetic only.
"""
from fractions import Fraction as Q
from math import gcd, isqrt
from pathlib import Path
import argparse, json

ZERO=(Q(0),Q(0)); ONE=(Q(1),Q(0)); I=(Q(0),Q(1))
def add(a,b):return a[0]+b[0], a[1]+b[1]
def mul(a,b):return a[0]*b[0]-a[1]*b[1], a[0]*b[1]+a[1]*b[0]
def cpow(a,b):
    y=ONE
    for _ in range(b):y=mul(y,a)
    return y

def chi3(n):return {0:ZERO,1:ONE,2:(Q(-1),Q(0))}[n%3]
def chi4(n):return {0:ZERO,1:ONE,2:ZERO,3:(Q(-1),Q(0))}[n%4]
def chi5(n):return {0:ZERO,1:ONE,2:I,3:(Q(0),Q(-1)),4:(Q(-1),Q(0))}[n%5]

def unit_power_chi(generator, exp, n):
    return ONE if exp==0 else cpow(generator(n),exp)

def group4(n):return [unit_power_chi(chi4,a,n) for a in range(2)]
def group5(n):return [unit_power_chi(chi5,b,n) for b in range(4)]
def group15(n):return [mul(unit_power_chi(chi3,a,n),unit_power_chi(chi5,b,n)) for a in range(2) for b in range(4)]

def primepower(n):
    if n<2:return None
    for p in range(2,isqrt(n)+1):
        if n%p==0:
            q=n
            while q%p==0:q//=p
            return p if q==1 else None
    return n

def level_phase(values):
    o=len(values)
    assert values[0]==ONE
    z=Q(1)+sum((z[0] for z in values[1:]),Q(0))/Q(3*o+1)
    lo=Q(2*(o+1),3*o+1);hi=Q(4*o,3*o+1)
    assert Q(2,3)<lo<=z<=hi<Q(4,3)
    return z

def H_at(x,coeff,phase,A):
    return sum((coeff[k]*phase[k]*max(Q(x,k)-1,Q(0)) for k in coeff),Q(0))+A*x

def check_case(modulus,group,limit=1024):
    order=len(group(1))
    assert all(c[1]==0 for c in group(1))
    assert sum((c[0] for c in group(1)),Q(0))==order
    assert all(sum((c[0] for c in group(n)),Q(0)) in (Q(0),Q(order)) for n in range(1,modulus+1) if gcd(n,modulus)==1)
    phase={n:level_phase(group(n)) for n in range(1,limit+2)}
    is_unit={n:gcd(n,modulus)==1 for n in range(1,limit+2)}
    high=Q(4*order,3*order+1); mid=Q(3*order,3*order+1)
    for n in range(1,limit+2):
        if is_unit[n]: assert phase[n] in (mid,high)
    if modulus==15:
        assert phase[15]==1 and phase[15] not in (mid,high)
    # Store arbitrary positive rational prime power weights; true Lambda would be log p,
    # but this algebraic identity does not depend on their transcendental values.
    coeff={n:Q(primepower(n)**2+1,primepower(n)+7) for n in range(2,limit+1) if primepower(n)}
    a=Q(101,37)
    maxerr=Q(0)
    checks=0
    certified_detectors=0
    for k in range(2,limit):
        d=H_at(k+1,coeff,phase,a)-2*H_at(k,coeff,phase,a)+H_at(k-1,coeff,phase,a)
        assert k*d==coeff.get(k,Q(0))*phase[k]
        if k in coeff:
            assert coeff[k]== k*d/phase[k]
        # Coherent but arbitrary exact perturbations to the integer samples:
        errors={k-1:Q(1,10**6)*(1 if k%2 else -1),k:Q(1,10**6),k+1:Q(-1,10**6)}
        dd=errors[k+1]-2*errors[k]+errors[k-1]
        recovered=(k*(d+dd))/phase[k]
        bound=Q(3*k,2)*sum((Q(1,10**6)*mult for mult in (1,2,1)),Q(0))
        assert abs(recovered-coeff.get(k,Q(0)))<=bound
        maxerr=max(maxerr,abs(recovered-coeff.get(k,Q(0))))
        # Any three separate adjusted source samples of absolute error <=1/(48k)
        # have second-difference error <=1/(12k). Genuine Mangoldt prime-power
        # atoms exceed log(2)>1/2, so the actual curvature is >1/(3k).
        # This exact rational surrogate deliberately has coeff(p^h)>1/2.
        assert all(a>Q(1,2) for a in coeff.values())
        eps=Q(1,48*k)
        for signs in ((1,-1,1),(-1,1,-1),(1,1,-1)):
            obs=d+(signs[2]-2*signs[1]+signs[0])*eps
            detection=obs>Q(1,6*k)
            assert detection == (k in coeff)
            certified_detectors+=1
        checks+=1
    return {
        'modulus':modulus,'order':order,
        'all_n_phase_lower':str(Q(2*(order+1),3*order+1)),
        'all_n_phase_upper':str(high),
        'unit_residue_phase_low':str(mid),
        'unit_residue_phase_high':str(high),
        'values_on_unit_residues':{str(n):str(phase[n]) for n in range(1,modulus+1) if is_unit[n]},
        'nonunit_counterexample_15':str(phase[15]) if modulus==15 else None,
        'exact_curvature_inverse_checks':checks,
        'adversarial_three_sample_detection_checks':certified_detectors,
        'max_adversarial_recovery_error':str(maxerr)
    }

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--report',type=Path,default=Path('/mnt/data/cyclic_level_phase_curvature_report.json'))
    args=parser.parse_args()
    results=[check_case(4,group4),check_case(5,group5),check_case(15,group15)]
    # Actual exceptional-character weight one defeats the cyclic bound:
    assert 1+chi4(3)[0]==0
    outcome={
        'status':'EXACT_CYCLIC_PHASE_POSITIVITY_AND_CURVATURE_INVERSION_PASS',
        'records':results,
        'total_curvature_inverse_checks':sum(x['exact_curvature_inverse_checks'] for x in results),
        'total_three_sample_threshold_checks':sum(x['adversarial_three_sample_detection_checks'] for x in results),
        'exceptional_character_weight_one_phase_zero_at_prime_three':True,
        'nonunit_phase_not_binary_for_modulus_15':True,
        'actual_native_Level_ofSub_Lean_cardinality_replay':'NOT_RUN',
        'rational_Lambda_surrogate_test':'The arithmetic inversion is coefficient-linear; true log(p) changes no algebra. These checks use rational positive coefficients.',
        'original_Level_Gm_evaluation':'NORMALIZATION_REQUIRED',
        'RH_or_final_Alpoge_import':'NONE'
    }
    args.report.write_text(json.dumps(outcome,indent=2)+'\n')
    print(json.dumps({'status':outcome['status'],'total_curvature_checks':outcome['total_curvature_inverse_checks'],
        'phases':[{k:r[k] for k in ('modulus','order','all_n_phase_lower','all_n_phase_upper')} for r in results],
        'hostile_exceptional':True,'nonunit_mod15_nonbinary':True},indent=2))

if __name__=='__main__':main()
