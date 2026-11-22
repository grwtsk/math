#!/usr/bin/env python3
"""Exact rational character-source examples for Level.cyc, conditional on
matching the original PChar.of/Level.ofSub Lean implementation at its source pin.
All finite rational analytic inequalities are computed without RH.
"""
from __future__ import annotations
import json
from fractions import Fraction as F
from pathlib import Path
from verify_native_gm_log_derivative_certificates import (
    certificate, CHAR4, CHAR5, mul)
from verify_adaptive_prime_log_gm import log_interval

CHAR5SQUARE={a:mul(CHAR5[a],CHAR5[a]) for a in CHAR5}


def is_character_table(q,chi):
    assert chi[1] == (F(1),F(0)) and chi[0] == (F(0),F(0))
    for a in range(q):
        for b in range(q):
            assert chi[a*b%q] == mul(chi[a],chi[b])
    return True


def enumerate_cyclic_group(q,chi):
    ident={n:(F(1),F(0)) if __import__('math').gcd(n,q)==1 else (F(0),F(0)) for n in range(q)}
    chars=[ident]
    z=ident
    while True:
        z={n:mul(z[n],chi[n]) for n in range(q)}
        if z==ident:break
        assert z not in chars
        chars.append(z)
    return chars


def midpoint(a,b):return (a+b)/2

def main():
    for q,chi in ((4,CHAR4),(5,CHAR5),(5,CHAR5SQUARE)):
        assert is_character_table(q,chi)
    assert len(enumerate_cyclic_group(4,CHAR4))==2
    assert len(enumerate_cyclic_group(5,CHAR5))==4
    a4=certificate(4,CHAR4,256,28)
    a5=certificate(5,CHAR5,250,28)
    a5sq=certificate(5,CHAR5SQUARE,250,28)
    M=256
    harmonic=sum((F(1,j) for j in range(1,M+1)),F(0))
    gammaLo=harmonic-log_interval(M+1,44)[1]
    gammaHi=harmonic-log_interval(M,44)[0]
    gammaMid=midpoint(gammaLo,gammaHi)
    gammaErr=(gammaHi-gammaLo)/2
    w4=F(1,7)
    centre4=F(1)+gammaMid+w4*a4['_center_re']
    radius4=gammaErr+w4*a4['_rad']
    w5=F(1,13)
    centre5=F(1)+gammaMid+w5*(2*a5['_center_re']+a5sq['_center_re'])
    radius5=gammaErr+w5*(2*a5['_rad']+a5sq['_rad'])
    def output(c,r):
        return {'exact_centre':str(c),'exact_radius':str(r),
            'centre_decimal':f'{float(c):.12f}',
            'radius_decimal':f'{float(r):.12f}',
            'lower_decimal':f'{float(c-r):.12f}',
            'upper_decimal':f'{float(c+r):.12f}'}
    out={
     'status':'EXACT_NONPRINCIPAL_CYCLIC_LEVEL_CONSTANT_CERTIFICATES_PASS',
     'q4_two_element_cyclic_group':True,
     'q4_native_weight_formula':'1/(3*2+1)=1/7',
     'q4_single_nonprincipal_character_analytic_constant':output(centre4,radius4),
     'q5_four_element_cyclic_group':True,
     'q5_native_weight_formula':'1/(3*4+1)=1/13 for each of the three nonprincipal powers',
     'q5_order_four_character_ratio_re':{'center':str(a5['_center_re']),'radius':str(a5['_rad'])},
     'q5_quadratic_character_ratio_re':{'center':str(a5sq['_center_re']),'radius':str(a5sq['_rad'])},
     'q5_group_real_log_derivative':'2*Re(Lprime/L chi5)+Re(Lprime/L chi5^2)',
     'q5_cyclic_group_analytic_constant':output(centre5,radius5),
     'analytic_source':'periodic nonprincipal Dirichlet series L1 and Lprime tails plus Mathlib Euler gamma sequences',
     'formal_source_obligation':'instantiate primitive characters as PChar in original v4.33.1, prove cyclic KEPT/Nt/wt membership; source equality Lean NOT_RUN',
     'RH_used':False
    }
    import argparse
    parser=argparse.ArgumentParser()
    parser.add_argument('--report',type=Path,default=Path('native_gm_cyclic_level_certificates.json'))
    args=parser.parse_args()
    args.report.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'q4':out['q4_single_nonprincipal_character_analytic_constant']['centre_decimal'],'q4_radius':out['q4_single_nonprincipal_character_analytic_constant']['radius_decimal'],
      'q5':out['q5_cyclic_group_analytic_constant']['centre_decimal'],'q5_radius':out['q5_cyclic_group_analytic_constant']['radius_decimal']},indent=2))

if __name__=='__main__':main()
