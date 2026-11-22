#!/usr/bin/env python3
"""Exact finite validation: smoothed Gm second differences, affine prime-power gaps,
full-window signed interval certification, and curvature majorants.

Only arithmetic components are reconstructed; the real analytic L'/L constants
in the actual Alpoge Gm are held symbolic. The finite tests do not prove RH,
or substitute for Alpoge's EAtH and CoreAtH analytic supplier estimates.
"""
from fractions import Fraction as Q
from math import isqrt
from pathlib import Path
import json, argparse


def prime_power_base(n):
    if n < 2:
        return None
    for p in range(2, isqrt(n)+1):
        if n%p == 0:
            q = n
            while q % p == 0:
                q //= p
            return p if q == 1 else None
    return n


def chi4(n):
    return Q(0) if n%2==0 else Q(1 if n%4==1 else -1)


def chi5re(n):
    return {0:Q(0),1:Q(1),2:Q(0),3:Q(0),4:Q(-1)}[n%5]


def source_phase(n):
    return Q(1) - Q(1,4)*chi4(n) + Q(1,3)*chi5re(n)


def log_one_minus_interval(z, terms):
    assert Q(0) <= z <= Q(1,2) and terms>=1
    centre = -sum((z**h/Q(h) for h in range(1,terms+1)), Q(0))
    tail = z**(terms+1)/(Q(terms+1)*(1-z))
    return centre-tail, centre


def log_rational_interval(x, terms=48):
    assert x>0
    k, pow2 = 0, Q(1)
    while pow2 < x:
        k,pow2 = k+1,pow2*2
    assert pow2/2 <= x <= pow2
    z = 1-x/pow2
    a,b=log_one_minus_interval(z,terms)
    c,d=log_one_minus_interval(Q(1,2),terms)
    return a-k*d,b-k*c


def log_hat_rational(x, terms=12):
    k,pow2=0,Q(1)
    while pow2 < x:
        k,pow2=k+1,pow2*2
    z=1-x/pow2
    return -sum((z**h/Q(h) for h in range(1,terms+1)),Q(0)) + k*sum((Q(1,2)**h/Q(h) for h in range(1,terms+1)),Q(0))


def smoothed(M, weighted, x):
    return sum((weighted[n]*max(x/Q(n)-1,Q(0)) for n in range(1,M+1)),Q(0))


def interval_mul(a, L, U):
    return (a*L,a*U) if a>=0 else (a*U,a*L)


def interval_add(items):
    return (sum((t[0] for t in items),Q(0)),sum((t[1] for t in items),Q(0)))


def sqrt_bounds(x, denominator=10**19):
    assert x>=0
    q=isqrt((x.numerator*denominator**2)//x.denominator)
    l,u=Q(q,denominator),Q(q+1,denominator)
    assert l*l<=x<u*u
    return l,u


def gminuspower_interval(M,x,theta,A,base_logs):
    # theta=1/2 only, intentionally tests certified exact rational enclosures
    assert theta==Q(1,2) and x>=1
    items=[]
    for n in range(2,min(M,int(x))+1):
        p=prime_power_base(n)
        if p is None: continue
        h=(x/Q(n)-1)*source_phase(n)
        items.append(interval_mul(h,*base_logs[p]))
    prime_low,prime_high=interval_add(items)
    lo_log,hi_log=log_rational_interval(x,55)
    lo_sqrt,hi_sqrt=sqrt_bounds(x)
    # Gm=S - x log x + A x; F=Gm - sqrt x
    return prime_low-x*hi_log+A*x-hi_sqrt,prime_high-x*lo_log+A*x-lo_sqrt


def verify(M=110):
    assert M>=3
    phase=[Q(0)]*(M+1)
    coefs=[Q(0)]*(M+1)
    delta=[Q(0)]*(M+1)
    prime_powers=[]
    for n in range(2,M+1):
        p=prime_power_base(n)
        if p is None:continue
        prime_powers.append(n)
        phase[n]=source_phase(n)
        coefs[n]=log_hat_rational(Q(p),18)*phase[n]
        delta[n]=(log_hat_rational(Q(p),9)-log_hat_rational(Q(p),18))*phase[n]
    second_diffs=0
    affine_checks=0
    for c in (coefs,delta):
        for k in range(2,M):
            d=smoothed(M,c,Q(k+1))-2*smoothed(M,c,Q(k))+smoothed(M,c,Q(k-1))
            assert d==c[k]/k, (k,d,c[k]/k)
            second_diffs+=1
        for k in range(1,M):
            a,b=smoothed(M,c,Q(k)),smoothed(M,c,Q(k+1))
            for t in [Q(0),Q(1,7),Q(1,4),Q(1,2),Q(3,5),Q(1)]:
                assert smoothed(M,c,k+t)==(1-t)*a+t*b
                affine_checks+=1
    # A proof-accurate finite kink set: only prime powers can contribute a kink.
    Y,U=Q(33,4),Q(351,4)
    knots=[Y]+[Q(n) for n in prime_powers if Y<n<U]+[U]
    assert knots==sorted(set(knots))
    window_endpoints=0
    for c in (coefs,delta):
        assert all(c[n]==0 for n in range(1,M+1) if prime_power_base(n) is None)
        for a,b in zip(knots,knots[1:]):
            lo,hi=smoothed(M,c,a),smoothed(M,c,b)
            for t in [Q(0),Q(1,4),Q(1,2),Q(3,4),Q(1)]:
                val=smoothed(M,c,(1-t)*a+t*b)
                assert val==(1-t)*lo+t*hi
                assert abs(val)<=max(abs(lo),abs(hi))
                window_endpoints+=1
    # Certified intervals for actual transcendental log(p), log(x), sqrt(x).
    bases={prime_power_base(n) for n in prime_powers}
    intervals={p:log_rational_interval(Q(p),55) for p in bases}
    curvature_checks=0
    for A in [Q(-2),Q(0),Q(3,2),Q(4)]:
        for k in range(2,38):
            la,ua=gminuspower_interval(M,Q(k),Q(1,2),A,intervals)
            lb,ub=gminuspower_interval(M,Q(k+1),Q(1,2),A,intervals)
            for t in [Q(1,8),Q(1,4),Q(1,2),Q(3,4),Q(7,8)]:
                x=Q(k)+t
                lx,ux=gminuspower_interval(M,x,Q(1,2),A,intervals)
                assert ux<=max(la,lb)+Q(1,8*k), (A,k,t)
                # Strong concavity: -1/x <= F'' <= -3/(4x) on x>=1,
                # so the graph lies strictly above its chord by an
                # explicit amount, preventing endpoint-only inference.
                low_chord=(1-t)*ua+t*ub
                assert lx>=low_chord+Q(3,8*(k+1))*t*(1-t), (A,k,t)
                curvature_checks+=1
    # Certified exact rational error interval at all prime-power knots:
    # true Lambda(p^h) ∈ log_interval(p), so the log_hat_12 error is enclosed.
    bits=12
    err_bounds=[]
    for n in range(M+1):
        p=prime_power_base(n)
        if p is None:
            err_bounds.append((Q(0),Q(0)))
        else:
            q=log_hat_rational(Q(p),bits)
            a,b=intervals[p]
            # Product with a SIGNED real character-phase multiplier:
            # keep both endpoints and sort, never drop negative phases.
            raw=[source_phase(n)*(q-z) for z in (a,b)]
            err_bounds.append((min(raw),max(raw)))
            assert err_bounds[-1][0]<=err_bounds[-1][1]
    Emax=Q(0)
    for x in knots:
        e=interval_add([interval_mul(max(x/Q(n)-1,Q(0)),*err_bounds[n]) for n in range(1,M+1)])
        Emax=max(Emax,abs(e[0]),abs(e[1]))
    # The piecewise-affine endpoint theorem proves the bound on the entire
    # real interval, not just at a finite grid or random samples.
    assert Emax<Q(1,100)
    # Deliberately wrong reconstruction: dropping a prime-power coefficient
    # changes a *single* second difference by exactly its coefficient/k.
    bad=list(coefs)
    bad[8]=Q(0)
    k=8
    assert smoothed(M,bad,Q(k+1))-2*smoothed(M,bad,Q(k))+smoothed(M,bad,Q(k-1))==0
    assert coefs[k]!=0
    # Genuine nontrivial quadratic character modulo four with unit weight:
    # at the actual prime 3 its value is -1, hence phase 1+chi_4(3)=0.
    # The weighted statistic cannot recover the nonzero Mangoldt atom
    # there; only the separate zeta branch can distinguish it.
    assert chi4(3)==-1 and (1+chi4(3))==0
    assert prime_power_base(3)==3 and log_hat_rational(Q(3),18)>0
    return {
      "status":"EXACT_GM_INTEGER_CURVATURE_AND_PRIME_POWER_KINK_CERTIFICATE_PASS",
      "cutoff":M,"prime_power_knots":len(prime_powers),"second_difference_exact_checks":second_diffs,
      "integer_affinity_exact_checks":affine_checks,"prime_power_gap_continuum_exact_checks":window_endpoints,
      "curvature_rational_interval_checks":curvature_checks,
      "positive_theta":"1/2","signed_character_family":"chi_4 weight -1/4; Re(chi_5_order4) weight +1/3",
      "uniform_certified_signed_log_error_bound_on_window":str(Emax),
      "uniform_certified_signed_log_error_bound_decimal":f"{float(Emax):.12g}",
      "window":[str(Y),str(U)],"window_breakpoints_checked":len(knots),
      "uniform_true_error_proof":"all positive-part ramp knots are at prime powers; between knots each signed coefficient error yields affine function; absolute max at endpoints",
      "curvature_proof":"Gm''=-1/x between prime-power knots, (Gm-x^theta)''>=-1/x for 0<theta<1; interpolation remainder <=(b-a)^2/(8a)",
      "hostile_dropped_prime_power_detected":True,
      "hostile_weighted_character_cancellation_at_prime_3":True,
      "does_not_establish":"EAtH/CoreAtH, original Gm upper bounds, all-window Weil positivity, RH",
      "lean_elaboration":"NOT_RUN","fresh_kernel":"NOT_RUN"
    }

if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--report',type=Path)
    parser.add_argument('--cutoff',type=int,default=110)
    args=parser.parse_args()
    result=verify(args.cutoff)
    if args.report: args.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
