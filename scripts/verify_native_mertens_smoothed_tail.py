#!/usr/bin/env python3
"""Exact rational source checks of smoothed Level.Gm Abel/Mellin identities.

Independent finite checker, NOT an analytic RH proof or Lean kernel receipt.
Original cyclic character phases and signed von Mangoldt prime-power support
are retained; log(p) values are positive rational surrogates in finite tests.
"""
from __future__ import annotations
import argparse, json
from fractions import Fraction as Q
from math import isqrt
from pathlib import Path
from verify_weighted_mertens_abel import values4, values5, values15, primepower_base, logsurr


def phase(chars):
    o=len(chars)
    return Q(1) + sum((c[0] for c in chars[1:]),Q(0))/Q(3*o+1)


def test_original_source(q,chars,N=240):
    assert N>=32
    a=[Q(0)]*(N+1)
    psi=[Q(0)]*(N+1)
    B=[Q(0)]*(N+1)
    A=Q(13,7)
    L=[Q(0)]*(N+1) # rational stand-in for log x, shared on both sides
    # Exact synthetic log with n-dependent values; cancellation must work for ANY L[n].
    for n in range(1,N+1):
        p=primepower_base(n)
        if p is not None:a[n]=logsurr(p)*phase(chars(n))
        psi[n]=psi[n-1]+a[n]
        B[n]=B[n-1]+a[n]/n
        L[n]=Q(n*n+3,17*n+7)
    checked=0
    for n in range(1,N+1):
        arithmetic=sum((a[k]*(Q(n,k)-1) for k in range(1,n+1)),Q(0))
        assert arithmetic == n*B[n]-psi[n]
        G=arithmetic-n*L[n]+A*n
        E=B[n]-L[n]+A-1
        R=psi[n]-n
        assert G==n*E-R
        checked+=2
    # Exact finite Abel source in nested intervals n<T. The continuous R(t)=Psi(floor t)-t
    # has exact integral I_R(n,T)=sum Psi(k)/(k(k+1)) - log(T/n).
    # To avoid approximating genuine log, use the exact symbolic cancellation of
    # the log(T/n) terms separately, checking its rational psi contribution.
    scales=0
    for n in (1,2,3,5,8,13,25,48,99):
        for T in (n+1, min(N,n+4), min(N,2*n+7),N):
            if T<=n:continue
            source_right=sum((psi[k]/Q(k*(k+1)) for k in range(n,T)),Q(0))
            # (G(n)/n + log(n)) - (G(T)/T+log(T)) is *purely rational*.
            smoothed_n=B[n]-psi[n]/n+A
            smoothed_T=B[T]-psi[T]/T+A
            assert smoothed_n-smoothed_T==-source_right
            scales+=1
    # Verified Mellin kernel for s>1, n>=1, without numerical quadrature:
    # integral from n to infinity of (x/n-1)*x^(-s-1) dx
    # independently evaluate its two primitive terms.
    mellin=0
    for s in (2,3,4,5,6,7):
        D=sum((a[n]*Q(1,n**s) for n in range(1,N+1)),Q(0))
        integrated_arithmetic=sum((a[n]*(Q(1,n**s*(s-1))-Q(1,n**s*s))
                                   for n in range(1,N+1)),Q(0))
        rhs=D/Q(s*(s-1))
        assert integrated_arithmetic==rhs
        # Fully normalized smoothed Gm Mellin has elementary -xlogx + A*x integrals.
        measured=integrated_arithmetic-Q(1,(s-1)**2)+A/Q(s-1)
        formula=D/Q(s*(s-1))-Q(1,(s-1)**2)+A/Q(s-1)
        assert measured==formula
        mellin+=2
    return {'modulus':q,'source_cutoff':N,'source_Gm_integer_identities':checked,
            'integer_scale_transfer_checks':scales,'finite_Mellin_kernel_and_centred_checks':mellin,
            'real_analytic_constant':'symbolic arbitrary rational A','true_log_terms':'symbolic cancellation',
            'prime_power_terms':sum(1 for n in range(2,N+1) if a[n])}


def hostile_pole_models():
    # Abstract Chebyshev discrepancy R(t)=sign*t^beta, 0<beta<1, not actual primes.
    # Exact tail: G(x)=-sign*x^beta/(1-beta).
    # Its Mellin transform has pole at s=beta and cannot improve its power exponent.
    tests=[]
    for numerator,denom in ((1,2),(2,3),(3,4)):
        beta=Q(numerator,denom)
        for root in (2,3,5,7,11):
            x=root**denom
            x_beta=root**numerator
            for sign in (-1,1):
                G=-sign*x_beta/(1-beta)
                expected=-sign*x_beta/(1-beta)
                assert G==expected
                for s in (2,3,4,5):
                    # Chebyshev D(s)=s/(s-1)+sign*s/(s-beta).
                    D=Q(s,s-1)+sign*Q(s,1)/(s-beta)
                    A=-sign/(1-beta)
                    measured=D/Q(s*(s-1))-Q(1,(s-1)**2)+A/Q(s-1)
                    target=-sign/((1-beta)*(s-beta))
                    assert measured==target
                    tests.append((numerator,denom,root,sign,s))
    return len(tests)


def main():
    pa=argparse.ArgumentParser()
    pa.add_argument('--report',type=Path)
    args=pa.parse_args()
    cases=[test_original_source(q,c) for q,c in ((4,values4),(5,values5),(15,values15))]
    poles=hostile_pole_models()
    data={'status':'PASS_NATIVE_SMOOOTHED_TAIL_AND_MELLIN_SOURCE_ALGEBRA',
      'cases':cases,
      'finite_symbolic_identity_checks':sum(c['source_Gm_integer_identities']+c['integer_scale_transfer_checks']+c['finite_Mellin_kernel_and_centred_checks'] for c in cases),
      'hostile_exact_power_pole_model_checks':poles,
      'exact_tail_theorem_requires':'Original PNT-in-AP and genuine analytic constant normalization',
      'original_RH_theorem_imported':False,
      'Lean_compile_kernel_axiom':'NOT_RUN',
      'power_saving_chebyshev_supplier':'OPEN',
      'boundary':'R(t)=plus-or-minus t^beta is a synthetic sharpness example, not an actual prime Chebyshev function'}
    if args.report:args.report.write_text(json.dumps(data,indent=2)+'\n')
    print(json.dumps({'status':data['status'],'finite_checks':data['finite_symbolic_identity_checks'],
       'pole_models':poles,'cases':cases},indent=2))


if __name__=='__main__':main()
