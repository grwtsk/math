#!/usr/bin/env python3
"""Exact interval evaluation of the declared dyadic prime-power Green energy.

Standard library only. Integer-directed arithmetic; no floating-point acceptance.
This computes finite intervals, not an all-scale arithmetic theorem or Lean proof.
"""
from __future__ import annotations
from dataclasses import dataclass
from functools import lru_cache
from fractions import Fraction as F
from pathlib import Path
import argparse, json, sys

BITS = 224
SCALE = 1 << BITS
TERMS = 60

def ceildiv(a: int, b: int) -> int:
    if b <= 0:
        raise ValueError("positive denominator required")
    return -((-a)//b)

@dataclass(frozen=True)
class I:
    lo: int
    hi: int
    def __post_init__(self):
        if self.lo > self.hi:
            raise ValueError("reversed interval")
    @staticmethod
    def rat(a: int, b: int = 1) -> 'I':
        if b <= 0:
            raise ValueError("positive denominator required")
        return I(a*SCALE//b, ceildiv(a*SCALE, b))
    def __add__(self, y: 'I') -> 'I':
        return I(self.lo+y.lo, self.hi+y.hi)
    def __neg__(self) -> 'I':
        return I(-self.hi, -self.lo)
    def __sub__(self, y: 'I') -> 'I':
        return self + (-y)
    def __mul__(self, y: 'I') -> 'I':
        vals = [self.lo*y.lo, self.lo*y.hi, self.hi*y.lo, self.hi*y.hi]
        return I(min(vals)//SCALE, ceildiv(max(vals), SCALE))
    def div(self, b: int) -> 'I':
        if b <= 0:
            raise ValueError("positive divisor required")
        return I(self.lo//b, ceildiv(self.hi, b))
    def scale(self, a: int) -> 'I':
        return I(a*self.lo, a*self.hi) if a >= 0 else I(a*self.hi, a*self.lo)
    def contains(self, x: F) -> bool:
        return F(self.lo, SCALE) <= x <= F(self.hi, SCALE)
    def overlaps(self, y: 'I') -> bool:
        return max(self.lo,y.lo) <= min(self.hi,y.hi)
    def square(self) -> 'I':
        lo = 0 if self.lo <= 0 <= self.hi else min(self.lo*self.lo,self.hi*self.hi)
        hi = max(self.lo*self.lo,self.hi*self.hi)
        return I(lo//SCALE, ceildiv(hi,SCALE))
    def report(self, places: int = 15) -> dict:
        den = 10**places
        def spell(v: int) -> str:
            sign = '-' if v < 0 else ''
            q, r = divmod(abs(v), den)
            return f'{sign}{q}.{r:0{places}d}'
        return {'lower_integer':str(self.lo), 'upper_integer':str(self.hi),
                'denominator':str(SCALE),
                'decimal_lower':spell(self.lo*den//SCALE),
                'decimal_upper':spell(ceildiv(self.hi*den,SCALE))}

ZERO=I.rat(0)
ONE=I.rat(1)
TWO=I.rat(2)

@lru_cache(None)
def atanh_log(a: int, b: int) -> I:
    """Enclose 2 atanh(a/b), 0 <= a/b <= 1/3, with a rigorous tail."""
    if not (0 <= 3*a <= b) or b <= 0:
        raise ValueError('atanh argument outside certified range')
    if a == 0:
        return ZERO
    z=I.rat(a,b)
    z2=z*z
    term=z
    total=ZERO
    for j in range(TERMS):
        total=total+term.div(2*j+1)
        term=term*z2
    # For z <= 1/3 the omitted positive tail is <=
    # 2 z^(2J+1) / ((2J+1)(1-z²)) <= 9/(4(2J+1)3^(2J+1)).
    tail=I.rat(9,4*(2*TERMS+1)*3**(2*TERMS+1))
    return total.scale(2)+I(0,tail.hi)

@lru_cache(None)
def log_int(n: int) -> I:
    if n <= 0:
        raise ValueError('log domain')
    if n == 1:
        return ZERO
    k=n.bit_length()-1
    p=1<<k
    return atanh_log(1,3).scale(k)+atanh_log(n-p,n+p)


def prime_powers(limit: int) -> dict[int, tuple[int,int]]:
    if limit < 2:
        return {}
    sieve=bytearray(b'\x01')*(limit+1)
    sieve[0:2]=b'\x00\x00'
    n=2
    while n*n <= limit:
        if sieve[n]:
            sieve[n*n:limit+1:n]=b'\x00'*(((limit-n*n)//n)+1)
        n+=1
    out={}
    for p in range(2,limit+1):
        if not sieve[p]:
            continue
        q=p; k=1
        while q <= limit:
            if q in out:
                raise RuntimeError('duplicate prime-power source')
            out[q]=(p,k)
            q*=p; k+=1
    return out


def source_energy(X: int) -> dict:
    if X < 2 or X & (X-1):
        raise ValueError('X must be a dyadic integer >= 2')
    inventory=prime_powers(2*X)
    events=[]
    lg2=log_int(2)
    lgX=lg2.scale(X.bit_length()-1)
    mass=ZERO; first=ZERO; prefix=ZERO; discrete=ZERO; cross=ZERO
    for m in sorted(inventory):
        if m <= X:
            continue
        p,k=inventory[m]
        w=log_int(p).div(m)
        r=I.rat(m-X,X)
        y=I.rat(m,X)
        ly=log_int(p).scale(k)-lgX
        events.append((m,p,k,w,r,y,ly))
        mass=mass+w
        first=first+w*r
        if m < 2*X:
            discrete=discrete + w.square()*r*(ONE-r) + (w*(ONE-r)*prefix).scale(2)
            v=(r*lg2).scale(2)-y*ly
            cross=cross+w*v
        prefix=prefix+w*r
    Q=discrete-cross.scale(2)+ONE-lg2.square().scale(2)
    mass0=mass-lg2
    mass1=first-(ONE-lg2)
    mean=mass0-mass1
    # Independent cell integration of the centered cumulative discrepancy.
    def primitive(y: I, ly: I, a: I) -> I:
        d=a-ly
        return y*(d.square()+d.scale(2)+TWO)
    cumulative=ZERO; left=ONE; logleft=ZERO; variance=ZERO
    for m,p,k,w,r,y,ly in events:
        a=cumulative-mean
        variance=variance+primitive(y,ly,a)-primitive(left,logleft,a)
        cumulative=cumulative+w
        left=y; logleft=ly
    if events[-1][0] < 2*X:
        a=cumulative-mean
        variance=variance+primitive(TWO,lg2,a)-primitive(left,logleft,a)
    if not Q.overlaps(variance):
        raise RuntimeError('Green/cell evaluation disagreement')
    # Both computations enclose the same proved quantity; intersection is safe.
    Q=I(max(Q.lo,variance.lo),min(Q.hi,variance.hi))
    if Q.lo < 0:
        raise RuntimeError('could not certify nonnegative finite energy')
    return {'X':X, 'prime_power_events_including_endpoint':len(events),
            'right_endpoint_is_prime_power':2*X in inventory,
            'green_energy':Q.report(), 'X_times_green_energy':Q.scale(X).report(),
            'augmented_energy':(Q+mass0.square()+mass1.square()).report(),
            'X_times_augmented_energy':(Q+mass0.square()+mass1.square()).scale(X).report(),
            'total_discrepancy_mass':mass0.report(),
            'first_moment_discrepancy':mass1.report(),
            'cumulative_center':mean.report(),
            'independent_cell_enclosure':variance.report(),
            'source_atoms':[{'m':m,'prime':p,'power':k} for m,p,k,*_ in events]}


def atomic_identity_check() -> int:
    # Exact signed examples: direct Green pairing versus cumulative variance.
    cases=[[(F(1,4),F(3,2)),(F(3,4),F(-2,3))],
           [(F(0),F(-1)),(F(1,2),F(2)),(F(1),F(5))],
           [(F(1),F(7))],[(F(1,3),F(-2)),(F(2,3),F(-1))]]
    for atoms in cases:
        g=sum((a*b*(min(x,y)-x*y) for x,a in atoms for y,b in atoms),F(0))
        cuts=sorted({F(0),F(1),*(x for x,_ in atoms)})
        mu=sum((a*(1-x) for x,a in atoms),F(0))
        vv=F(0)
        for l,r in zip(cuts,cuts[1:]):
            midpoint=(l+r)/2
            c=sum((a for x,a in atoms if x <= midpoint),F(0))
            vv+=(r-l)*(c-mu)**2
        if g != vv:
            raise RuntimeError('signed atomic Green identity failed')
    return len(cases)


def resolvent_checks() -> int:
    count=0
    for diag,b in [([F(0),F(1,4),F(3)],[F(0),F(2,3),F(-1)]),
                   ([F(0),F(1),F(2)],[F(1),F(-2),F(3)])]:
        for s in [F(1,8),F(1,2),F(3)]:
            for y in [[F(0),F(0),F(0)], [F(1,7),F(-2,3),F(4,5)]]:
                f=sum((z*z/(d+s) for d,z in zip(diag,b)),F(0))
                ell=sum((2*z*v-(d+s)*v*v for d,z,v in zip(diag,b,y)),F(0))
                r=[z-(d+s)*v for d,z,v in zip(diag,b,y)]
                correction=sum((x*x/(d+s) for d,x in zip(diag,r)),F(0))
                upper=ell+sum((x*x for x in r),F(0))/s
                if f != ell+correction or not ell <= f <= upper:
                    raise RuntimeError('shifted residual certificate failed')
                count+=1
    return count


def interval_checks() -> int:
    vals=[F(-7,3),F(-1,5),F(0),F(2,7),F(3)]
    count=0
    for a in vals:
        for b in vals:
            aa=I.rat(a.numerator,a.denominator); bb=I.rat(b.numerator,b.denominator)
            if not (aa+bb).contains(a+b) or not (aa*bb).contains(a*b):
                raise RuntimeError('interval containment failed')
            count+=1
    if not log_int(1).contains(F(0)):
        raise RuntimeError('log-one failed')
    return count


def main() -> None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--out',type=Path,required=True)
    args=ap.parse_args()
    if args.out.exists():
        raise SystemExit('output already exists; select a new path')
    report={'scope':'Exact finite enclosures; not an all-scale proof or Lean replay',
            'interval_denominator_power_two':BITS,'log_series_terms':TERMS,
            'checks':{'interval_pairs':interval_checks(),
                      'signed_atomic_identities':atomic_identity_check(),
                      'positive_height_residual_cases':resolvent_checks()},
            'octaves':[source_energy(x) for x in [16,64,256,1024,4096]]}
    args.out.parent.mkdir(parents=True,exist_ok=True)
    with args.out.open('x',encoding='utf-8') as out:
        json.dump(report,out,indent=2)
        out.write('\n')
    for row in report['octaves']:
        print(row['X'],row['green_energy']['decimal_lower'],row['green_energy']['decimal_upper'],
              row['X_times_green_energy']['decimal_lower'])
    print('CHECKS_PASSED',json.dumps(report['checks'],sort_keys=True))

if __name__=='__main__':
    main()
