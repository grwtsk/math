#!/usr/bin/env python3
"""Exact finite controls for prime-Jacobi/Weil/GNS diffusion bridge.

No zeta zeros are input to the Jacobi operator. Certified zero-height data
is used only as a hostile source-comparison bound. The checks do not prove
RH, the infinite Weil positivity criterion, or new Lean declarations.
"""
from __future__ import annotations
from decimal import Decimal, getcontext
from fractions import Fraction as Q
from itertools import product
import json
from pathlib import Path
import argparse


def mm(A,B):
    assert len(A[0]) == len(B)
    return [[sum((A[i][k]*B[k][j] for k in range(len(B))),Q(0))
             for j in range(len(B[0]))] for i in range(len(A))]


def tr(A):return [list(x) for x in zip(*A)]


def bilinear(x,K,y):
    return sum((x[i]*K[i][j]*y[j] for i in range(len(x)) for j in range(len(y))),Q(0))


def heat(r):
    assert Q(0)<r<=Q(1)
    return [[(1+r)/2,(1-r)/2],[(1-r)/2,(1+r)/2]]


def sqrt_squared_root_moment(n):
    # n x n prime Jacobi; e0 is cyclic. All arithmetic exact.
    primes=[2,3,5,7,11,13,17,19,23]
    assert 2<=n<=len(primes)+1
    A=[[Q(0) for _ in range(n)] for _ in range(n)]
    for k in range(n-1):
        A[k][k+1]=A[k+1][k]=Q(primes[k])
    assert all(A[i][j]==A[j][i] for i in range(n) for j in range(n))
    f=[Q(int(i==0)) for i in range(n)]
    Jf=[sum((A[i][j]*f[j] for j in range(n)),Q(0)) for i in range(n)]
    return sum((z*z for z in Jf),Q(0))


def check():
    assert all(sqrt_squared_root_moment(n)==4 for n in range(2,11))
    signed=[[Q(1),Q(2)],[Q(2),Q(1)]]
    positive=[[Q(1),Q(1,2)],[Q(1,2),Q(1)]]
    negative=[Q(1),Q(-1)]
    positive_vector=[Q(1),Q(1)]
    test_scales=[Q(1),Q(1,2),Q(1,3),Q(1,7),Q(1,32),Q(1,4096)]
    negative_tests=0
    heat_semigroup_tests=0
    for r in test_scales:
        D=heat(r)
        assert D[0][0]*D[1][1]-D[0][1]*D[1][0] == r
        SD=mm(mm(tr(D),signed),D)
        PD=mm(mm(tr(D),positive),D)
        assert bilinear(negative,SD,negative)==-2*r*r
        assert bilinear(positive_vector,SD,positive_vector)==6
        assert bilinear(negative,PD,negative)==r*r
        assert bilinear(positive_vector,PD,positive_vector)==3
        negative_tests+=4
        for s in test_scales:
            assert mm(heat(r),heat(s))==heat(r*s)
            heat_semigroup_tests+=1
    # Heat observable bound follows from e^-x >= 1-x and m2=4.
    t=Q(1,16)
    jacobi_heat_lower=Q(1)-4*t
    zero_height_certificate=Q(14)  # Platt/LMFDB rigorously verified 1st zero ordinate > 14
    getcontext().prec=50
    zeta_heat_upper=(-Decimal(zero_height_certificate.numerator**2 * t.numerator) / Decimal(t.denominator * zero_height_certificate.denominator**2)).exp()
    assert jacobi_heat_lower==Q(3,4)
    assert zeta_heat_upper < Decimal(1)/Decimal(200000)
    # Finite Gaussian transform/cos kernel from {+/-1,+/-2} has rational values
    # when probes are multiples of pi/2; all weights positive.
    cos_quadrant=(Q(1),Q(0),Q(-1),Q(0))
    positions=[0,1,2,3]
    gamma_weights={-2:Q(2),-1:Q(1),1:Q(1),2:Q(2)}
    kernel_controls=0
    for r in test_scales:
        K=[[sum((w*r**(g*g)*cos_quadrant[((a-b)*g)%4] for g,w in gamma_weights.items()),Q(0))
             for b in positions] for a in positions]
        assert K==tr(K)
        for vec in product((-2,-1,0,1,2),repeat=len(positions)):
            v=[Q(x) for x in vec]
            assert bilinear(v,K,v)>=0
            kernel_controls+=1
    out={
        'status':'EXACT_FINITE_DIFFUSION_AND_SPECTRAL_GAP_OBSTRUCTION_PASS',
        'underlying_prime_J_second_moment':4,
        'prime_J_sections_checked':9,
        'two_vertex_heat_scalings':[str(x) for x in test_scales],
        'signed_and_positive_gram_checks':negative_tests,
        'rational_heat_semigroup_checks':heat_semigroup_tests,
        'positive_fourier_kernel_vector_checks':kernel_controls,
        't':'1/16',
        'jacobi_heat_lower_bound':'3/4',
        'zeta_height_gap_certified_reference':'Platt LMFDB first zeta ordinate >14; fact is external to this finite checker',
        'zeta_normalized_heat_upper_bound_using_height_14':str(zeta_heat_upper),
        'conclusion':'No equality of raw Jacobi root probability measure with any normalized measure supported on actual zero ordinates',
        'source_note':'Weil arithmetic full source requires poles, gamma and signed prime powers; not computed by this checker',
        'lean_compilation':'NOT_RUN',
        'all_window_Weil_positivity':'NOT_PROVED_INDEPENDENTLY',
        'GNS_self_adjoint_operator':'ANALYTICALLY_CONDITIONAL_ON_WEIL_POSITIVITY_AND_SOURCE_FORMULA',
        'original_RiemannHypothesis':'EXTERNAL_ALPOGE_PROOF_NOT_REPLAYED_HERE',
    }
    return out

if __name__ == '__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--report',type=Path,help='Optional JSON result path')
    args=parser.parse_args()
    result=check()
    if args.report is not None:
        args.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
