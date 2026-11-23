#!/usr/bin/env python3
"""Independent exact-rational checks of the formal height-two torus filtration.

The mathematical W(rho,eta) theorem applies conditionally to the actual
exp(Delta beta) o L being integral. These finite tests use toy integral E(T)
only; they do NOT verify actual theta-kernel hypothesis (B4) or (M).
"""
from fractions import Fraction as Q
from math import factorial
from itertools import product


def add(a, b, n):
    out = dict(a)
    for k, v in b.items():
        if k <= n:
            out[k] = out.get(k, Q(0)) + v
            if not out[k]:
                del out[k]
    return out


def mul(a, b, n):
    out = {}
    for k, v in a.items():
        for j, w in b.items():
            if k + j <= n:
                out[k + j] = out.get(k + j, Q(0)) + v*w
    return {k:v for k,v in out.items() if v}


def power(a, e, n):
    out = {0:Q(1)}
    while e:
        if e & 1:
            out = mul(out, a, n)
        e >>= 1
        if e:
            a = mul(a, a, n)
    return out


def inv_height_two(p, n):
    g = {1:Q(1)}
    term_exps=[]
    e = 1
    while p**(2*e) <= n:
        term_exps.append((e, p**(2*e)))
        e += 1
    for iteration in range(n+1):
        nxt = {1: Q(1)}
        for e,m in term_exps:
            neg = {k: -v/Q(p**e) for k,v in power(g,m,n).items()}
            nxt=add(nxt, neg,n)
        if g == nxt:
            return g,iteration
        g=nxt
    raise AssertionError('truncated formal recursion did not stabilize')


def log_one_plus(y,n):
    total={}
    P={0:Q(1)}
    for k in range(1,n+1):
        P=mul(P,y,n)
        if not P:
            break
        total=add(total, {d: Q((-1)**(k+1),k)*v for d,v in P.items()}, n)
    return total


def val_p_int(x,p):
    if not x:
        return 10**9
    e=0
    while x%p==0:
        e+=1; x//=p
    return e


def val_p(x,p):
    return val_p_int(x.numerator,p)-val_p_int(x.denominator,p)


def verify_case(p,n):
    rho=Q(1,p*p-1)
    eta=Q(1,p-1)
    g,steps=inv_height_two(p,n)
    # Truly verify the formal inverse L(g(X))=X through degree n.
    reconstructed={}
    e=0
    while p**(2*e)<=n:
        reconstructed=add(reconstructed,{k:v/Q(p**e) for k,v in power(g,p**(2*e),n).items()},n)
        e+=1
    assert reconstructed=={1:Q(1)}
    assert all(val_p(c,p)>=-(j-1)*rho for j,c in g.items())
    # A deliberately integral torus-invariant E(T)=1+T^(p+1).
    Y=power(g,p+1,n)
    Delta=log_one_plus(Y,n)
    assert Delta
    assert all((j%(p+1)==0) for j in Delta)
    assert all(val_p(c,p)>=eta-j*rho for j,c in Delta.items())
    assert Delta[p+1]==1 and val_p(Delta[p+1],p)==eta-(p+1)*rho
    # Without the torus restriction E(T)=1+T, the target W gain FAILS.
    hostile=log_one_plus(g,n)
    assert val_p(hostile[1],p)==0 and eta-rho>0
    print(f'prime={p}, degree={n}, inverse coefficients={len(g)}, iterations={steps}, delta terms={len(Delta)}, sharp at degree={p+1}: PASS')


def verify_torus(p,d):
    assert d%2==0
    mod=p**d-1
    weight=lambda s:(-1)**s*p**s
    assert all((p*p*weight((s-2)%d)-weight(s))%mod==0 for s in range(d))
    assert all((weight(s)-1)%(p+1)==0 for s in range(d))
    # Nontrivial finite coefficient supports invariant under the full torus.
    for exps in product(range(3),repeat=d):
        wt=sum(weight(s)*exps[s] for s in range(d))
        if wt%mod==0:
            assert sum(exps)%(p+1)==0


if __name__=='__main__':
    cases=((2,80),(3,100),(5,140),(7,100))
    for p,n in cases:
        verify_case(p,n)
        for d in (2,4):
            verify_torus(p,d)
    print('PASS: formal-height-two inverse, torus-degree filter, sharp weighted bound, hostile noninvariant source')
    print('NOT PROVED: theta kernel integrality (B4), all-scale inequality (M), RH or self-adjoint Xi operator')
