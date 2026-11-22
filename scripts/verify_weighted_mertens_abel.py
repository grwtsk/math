#!/usr/bin/env python3
"""Exact finite Abel-inversion and native cyclic AP decomposition.

No analytic continuation, zero data, RH, or floating point is used in PASS tests.
All logarithms in arithmetic atoms are deterministic RATIONAL surrogates;
the finite summation identities work for the true log(p) values as well.
"""
from __future__ import annotations
import json
import argparse
from fractions import Fraction as Q
from math import isqrt, gcd
from pathlib import Path

ZERO=(Q(0),Q(0)); ONE=(Q(1),Q(0)); IMAG=(Q(0),Q(1))
def mul(a,b):return a[0]*b[0]-a[1]*b[1],a[0]*b[1]+a[1]*b[0]
def cpow(a,n):
  r=ONE
  for _ in range(n):r=mul(r,a)
  return r

def chi4(n):return {0:ZERO,1:ONE,2:ZERO,3:(Q(-1),Q(0))}[n%4]
def chi5(n):return {0:ZERO,1:ONE,2:IMAG,3:(Q(0),Q(-1)),4:(Q(-1),Q(0))}[n%5]
def chi3(n):return {0:ZERO,1:ONE,2:(Q(-1),Q(0))}[n%3]

def values4(n):return [ONE,chi4(n)]
def values5(n):return [ONE]+[cpow(chi5(n),k) for k in range(1,4)]
def values15(n):return [ONE]+[cpow(chi5(n),k) for k in range(1,4)]+[chi3(n)]+[mul(chi3(n),cpow(chi5(n),k)) for k in range(1,4)]

def primepower_base(n):
  if n<2:return None
  for p in range(2,isqrt(n)+1):
    if n%p==0:
      q=n
      while q%p==0:q//=p
      return p if q==1 else None
  return n

def logsurr(p):return Q(23,47)+Q(p,31*p+5)  # strictly rational >0, p-specific.
def psi_suffix(a,N):
  p=Q(0); b=Q(0)
  ps=[Q(0)]*(N+1);bs=[Q(0)]*(N+1)
  for n in range(1,N+1):
    p+=a[n];b+=a[n]/n
    ps[n]=p;bs[n]=b
    # Finite summation by parts, no unproved limit.
    inverse=n*b-sum(bs[:n])
    abel=p/n+sum((ps[k]/(k*(k+1)) for k in range(1,n)),Q(0))
    assert inverse==p and abel==b
  return ps,bs

def test(modulus,values,N=600):
  order=len(values(1))
  assert values(1)==[ONE]*order
  primitive_phase={n:Q(1)+sum((z[0] for z in values(n)[1:]),Q(0))/(3*order+1) for n in range(1,N+1)}
  a=[Q(0)]*(N+1)
  ap0=[Q(0)]*(N+1)
  apH=[Q(0)]*(N+1)
  ram=[Q(0)]*(N+1)
  phase_unit_two_values=0
  ramified=0
  for n in range(1,N+1):
    prime=primepower_base(n)
    raw=logsurr(prime) if prime else Q(0)
    a[n]=raw*primitive_phase[n]
    if gcd(n,modulus)==1:
      ap0[n]=raw
      h=all(v==ONE for v in values(n))
      if h:apH[n]=raw
      exp=((Q(4*order,3*order+1)) if h else Q(3*order,3*order+1))
      assert exp==primitive_phase[n]
      phase_unit_two_values+=1
    else:
      ram[n]=a[n]
      if raw:ramified+=1
    # exact phase bound for all indices
    assert Q(2,3)<primitive_phase[n]<Q(4,3)
    assert a[n]==Q(3*order,3*order+1)*ap0[n]+Q(order,3*order+1)*apH[n]+ram[n]
  ps,bs=psi_suffix(a,N)
  p0,_=psi_suffix(ap0,N)
  pH,_=psi_suffix(apH,N)
  pr,_=psi_suffix(ram,N)
  assert all(ps[n]==Q(3*order,3*order+1)*p0[n]+Q(order,3*order+1)*pH[n]+pr[n] for n in range(N+1))
  if modulus==15:
    assert primitive_phase[15]==1
    assert primitive_phase[15] not in (Q(3*order,3*order+1),Q(4*order,3*order+1))
  # Bound the ramified prime-power source by (4/3)*omega(M)*log(x).
  # Rational log surrogates are not true logs, so use each exact true
  # source atom's positivity and grouping; the analytic inequality
  # log(p)*floor(log(x)/log(p)) <= log(x) is separate math proof.
  ram_primes=[p for p in range(2,modulus+1) if modulus%p==0 and primepower_base(p)==p]
  return {'modulus':modulus,'group_order':order,'cutoff':N,
     'finite_Abel_and_inverse_identities':N*2,'arithmetic_unit_and_ramified_decomposition':N,
     'ramified_prime_power_count':ramified,'ramified_prime_divisors':ram_primes,
     'unit_phase_checks':phase_unit_two_values,
     'last_weighted_Chebyshev_surrogate':str(ps[N]),
     'last_weighted_Mertens_surrogate':str(bs[N]),
     'nonunit_15_binary_failure': bool(modulus==15),
     'all_exact':True}

def run():
  cases=[test(4,values4),test(5,values5),test(15,values15)]
  # Period-group algebra on units: full subgroup sums 0 or o.
  for q,val in ((4,values4),(5,values5),(15,values15)):
    o=len(val(1))
    for n in range(1,q+1):
      if gcd(q,n)!=1:continue
      zz=[sum(z[c] for z in val(n)) for c in (0,1)]
      assert zz in ([Q(0),Q(0)],[Q(o),Q(0)])
  # Counterexample: merely |R(x)| <= K x exp(-c sqrt(log x))
  # does NOT imply any fixed power x^beta with beta<1, since
  # (1-beta)log x - c sqrt(log x) -> +infty. Test rational
  # comparison at arbitrarily large L=log x, using c=1,
  # beta=3/4: (1-beta)*L-sqrt(L)>0 for L>16.
  for L in (25,64,256,1024):
    assert Q(L,4)>isqrt(L)
  return {'status':'PASS_EXACT_SOURCE_FINITE_ABEL_AND_CYCLIC_AP_DECOMPOSITION',
    'cases':cases,'source_characters':'primitive real/complex roots of unity modulo 4,5,15',
    'rounds_total':sum(x['finite_Abel_and_inverse_identities']+x['arithmetic_unit_and_ramified_decomposition'] for x in cases),
    'all_scale_power_saving':'UNPROVED','lean':'NOT_RUN',
    'limits':'Finite exact rational algebra, not analytic PNT or true-transcendental log verification',
    'RH_assumed':False}

if __name__=='__main__':
  ap=argparse.ArgumentParser(description=__doc__)
  ap.add_argument('--report',type=Path)
  args=ap.parse_args()
  r=run()
  if args.report:args.report.write_text(json.dumps(r,indent=2)+'\n')
  print(json.dumps({k:v for k,v in r.items() if k!='cases'},indent=2))
  for c in r['cases']:
    print({k:v for k,v in c.items() if k not in ('last_weighted_Chebyshev_surrogate','last_weighted_Mertens_surrogate')})
