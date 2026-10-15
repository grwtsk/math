#!/usr/bin/env python3
"""Finite, source-preserving Laguerre discrepancy energies with rational bounds.

Direction: grwtsk contributors. Derivation and implementation: OpenAI ChatGPT.
MIT. No zero table, numerical zeta routine, global positivity assumption,
network operation, repository write, or all-depth acceptance is used.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
from functools import lru_cache
import hashlib
import json
from math import comb, factorial, isqrt
from pathlib import Path
import arithmetic_quotient_sections as source

I = source.I
SOURCE_SHA256 = 'efc700c5aca9223b4ca07743e69e6469f61e6dd55aed53ee7e5f550a80d5580e'
GRID = 160


def require(condition, message):
    if not condition:
        raise ValueError(message)


def pinned_source():
    require(hashlib.sha256(Path(source.__file__).read_bytes()).hexdigest() == SOURCE_SHA256,
            'source hash mismatch: review changed mathematics and replay')


def checked_prefix(h):
    require(bool(h) and len(h) <= 128, 'complete jet of length 1..128 required')
    return [x if isinstance(x,I) else source.exact(x) for x in h]


def compose(h):
    h=checked_prefix(h)
    return [h[0]] + [sum((2**j*comb(k-1,j-1)*h[j] for j in range(1,k+1)),0)
                      for k in range(1,len(h))]


def inverse_filter(p):
    p=checked_prefix(p)
    u=[]
    for x in p:
        u.append((-2*x-(u[-1] if u else 0))/3)
    return u


def direct_moments(n=128, bits=768, cutoff=128, order=64):
    """Form p=1/(s-1)+zeta'/zeta in h, then compose; no Xi-quotient inverse.

    The cancellation precedes both composition and absolute-value error bounds.
    Only zeta(3/2), independently enclosed away from zero, is inverted.
    """
    source.integer(n,'coefficient count',1,128)
    source.integer(bits,'working bits',256,1536)
    pinned_source()
    z, remainder = source.zeta_h_jet(n+1,cutoff,order,bits)
    require(z[0].lo>0,'initial zeta denominator unresolved')
    dz=[(k+1)*z[k+1] for k in range(n)]
    quotient=source.conv(dz,source.inverse(z,n),n)
    pole=source.inverse_affine(Q(1,2),1,1,n,bits)
    p=compose([x+y for x,y in zip(quotient,pole)])
    u=inverse_filter(p)
    return u, p, {'zeta_circle_remainder':str(remainder),
                  'circle_radius':'1/4','s_center':'3/2',
                  'zeta_at_center':z[0].record(),
                  'Xi_quotient_inverse_used':False,'gamma_subtraction_needed':False}


def alternate_moments(n=128, bits=768, cutoff=128, order=64):
    """Consistency check via separately assembled full Xi and gamma jets.

    Both paths share the original zeta evaluator; this is not an independent
    analytic proof of that evaluator's remainder theorem.
    """
    a,_=source.logarithmic_xi_jet(n,cutoff,order,bits)
    psi,_=source.psi_h_jet(n,cutoff,order,bits)
    inv_s=source.inverse_affine(Q(3,2),1,1,n,bits)
    r=[psi[k]/2+inv_s[k] for k in range(n)]
    pi=source.pi_box(bits)
    logpi=I(source.log_q(pi.lo,bits).lo,source.log_q(pi.hi,bits).hi,bits)
    r[0]-=logpi/2
    rw=compose(r)
    return inverse_filter([x-y for x,y in zip(a,rw)])


def clean(x,bits=GRID):
    return I.outward(x.lo,x.hi,bits)


def energy(prefix):
    require(bool(prefix) and all(isinstance(x,I) for x in prefix),'nonempty interval prefix required')
    bits=prefix[0].bits
    require(all(x.bits==bits for x in prefix),'mixed precision')
    return sum((x.square() for x in prefix),I.point(0,bits))


def tail_budget_squared(n):
    """Written Cauchy tail at X_N=2^(11N); finite exact constant evaluation."""
    source.integer(n,'energy size',1,4096)
    c=Q(91*n,45)+Q(910,891)
    return n*c*c*Q(36,49)**n


def laguerre(k,scale=Q(1)):
    source.integer(k,'Laguerre degree',0,128)
    scale=source.exact(scale)
    return [Q((-1)**j*comb(k,j),factorial(j))*scale**j for j in range(k+1)]


def polynomial(c,x):
    value=0
    for coefficient in reversed(c):
        value=value*x+coefficient
    return value


def exponential_tail_polynomial(c,rate):
    """A(t) such that integral_L^infinity e^-rate*t p(t)dt=e^-rate*L A(L)."""
    rate=source.exact(rate)
    require(rate>0,'positive decay rate required')
    require(bool(c) and len(c)<=129,'complete polynomial of length 1..129 required')
    a=[Q(0)]*len(c)
    for j in range(len(c)-1,-1,-1):
        a[j]=(source.exact(c[j])+((j+1)*a[j+1] if j+1<len(c) else 0))/rate
    return a


def prime_power_inventory(x):
    """Return every n<=x with Lambda(n)=log(p), not only primes."""
    source.integer(x,'prime cutoff',1,65536)
    is_prime=[True]*(x+1)
    if x>=0:is_prime[0]=False
    if x>=1:is_prime[1]=False
    for p in range(2,isqrt(x)+1):
        if is_prime[p]:
            for m in range(p*p,x+1,p):is_prime[m]=False
    out=[]
    for p in range(2,x+1):
        if is_prime[p]:
            n=p
            while n<=x:
                out.append((n,p));n*=p
    return sorted(out)


def trial_prime_base(n):
    source.integer(n,'factorization index',2,65536)
    m=n;divisor=None
    for p in range(2,isqrt(n)+1):
        if m%p==0:
            divisor=p
            while m%p==0:m//=p
            break
    if divisor is None:return n
    return divisor if m==1 else None


def finite_head(n=8,cutoff=1024,bits=256):
    """Exact antiderivative formula for the literal finite prime head.

    Prime terms use J_k(log m)-J_k(log X); the touching endpoint is exact zero.
    This preserves both the cutoff endpoint and all continuum contributions.
    """
    source.integer(n,'finite head degree count',1,16)
    source.integer(cutoff,'finite prime cutoff',1,65536)
    source.integer(bits,'finite head bits',128,1024)
    inventory=prime_power_inventory(cutoff)
    indexed=dict(inventory)
    for m in range(2,cutoff+1):
        actual=trial_prime_base(m)
        expected=indexed.get(m)
        require(actual==expected,'independent factorization mismatch')
    L=source.log_q(Q(cutoff),bits)
    root=I.point(Q(1,cutoff),bits).sqrt()
    r3=root/cutoff
    powers={m:source.log_q(Q(m),bits) for m,_ in inventory}
    masses={p:source.log_q(Q(p),bits) for _,p in inventory}
    boxes=[]
    endpoints=[]
    for k in range(n):
        c=laguerre(k,Q(2))
        p3=exponential_tail_polynomial(c,Q(3,2))
        p1=exponential_tail_polynomial(c,Q(1,2))
        tail3=r3*polynomial(p3,L)
        # -integral e^-t/2 L_k(2t)dt + integral e^-3t/2 L_k(2t)dt.
        background=-I.point(p1[0],bits)+root*polynomial(p1,L)+p3[0]-tail3
        prime=I.point(0,bits)
        for m,p in inventory:
            if m==cutoff:
                term=I.point(0,bits)
            else:
                start=I.point(Q(1,m),bits).sqrt()/m*polynomial(p3,powers[m])
                term=masses[p]*(start-tail3)
            prime+=term
        # The integration interval is empty at X=1. Avoid dependency widening
        # of equal rational antiderivative endpoint values there.
        boxes.append(I.point(0,GRID) if cutoff==1 else clean(prime+background))
        endpoints.append(clean(tail3))
    return {'cutoff':cutoff,'coefficient_count':n,'prime_power_count':len(inventory),
            'factorization_checked_through':cutoff,'touching_prime_power':dict(inventory).get(cutoff),
            'endpoint_retained':True,'prime_powers_retained':True,
            'moments':[x.record() for x in boxes], 'energy':energy(boxes).record(),
            'global_tail_added':False,'claim':'FINITE_SIGNED_HEAD_ONLY'}


def dissipation_generator(n):
    source.integer(n,'generator dimension',1,128)
    return [[Q(1 if i==j else 2 if i>j else 0) for j in range(n)] for i in range(n)]


def report(n=128,bits=768,with_head=True):
    u,p,analytic=direct_moments(n,bits)
    alternate=alternate_moments(n,bits)
    require(all(max(a.lo,b.lo)<=min(a.hi,b.hi) for a,b in zip(u,alternate)),
            'full-source comparison mismatch')
    u=[clean(x) for x in u]
    cumulative=[]
    total=I.point(0,GRID)
    for k,x in enumerate(u):
        total+=x.square()
        cumulative.append({'size':k+1,**total.record()})
    D=total.hi; E=tail_budget_squared(n); B=Q(21,100)
    gap=B-D-E
    large_head={'prime_cutoff_power_of_two':11*n,'tail_error_squared_upper':str(E),
                'energy_upper_target':str(B),'comparison_gap':str(gap),
                'squared_comparison_margin':str(gap*gap-4*D*E),
                'certified':gap>0 and gap*gap>4*D*E,
                'prime_range_enumerated':False}
    return {'schema':'laguerre-discrepancy-energy-v1','coefficient_count':n,
            'working_bits':bits,'output_grid_bits':GRID,'cutoff':128,'em_order':64,
            'source_sha256':SOURCE_SHA256,'analytic':analytic,
            'alternative_full_source_boxes_compared':n,
            'moments':[x.record() for x in u], 'cumulative_energy':cumulative,
            'large_finite_head':large_head,
            'tail_schedule':{'prime_cutoff_power_of_two':'11N','squared_error_formula':
                 'N*(91*N/45+910/891)^2*(36/49)^N',
                 'rational_comparison':{'fourteen_power_26':str(14**26),
                                        'two_power_99':str(2**99)},
                 'written_proof_not_infinite_computation':True},
            'finite_heads':[finite_head(8,256),finite_head(8,1024)] if with_head else [],
            'RH_proved':False,'all_depth_bound':False,'native_Lean_admission':False,
            'new_zero_exclusion':False,'proof_grade':'FINITE_RATIONAL_WITH_WRITTEN_ANALYTIC_REMAINDER'}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--bits',type=int,default=768)
    p.add_argument('--count',type=int,default=128)
    p.add_argument('--skip-head',action='store_true')
    args=p.parse_args()
    print(json.dumps(report(args.count,args.bits,not args.skip_head),sort_keys=True,indent=2))


if __name__=='__main__':main()
