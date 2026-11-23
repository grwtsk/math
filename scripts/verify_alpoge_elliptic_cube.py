#!/usr/bin/env python3
"""Exact arithmetic evidence for the elliptic-sigma / Honda cubical B4 bridge.

This checker confirms the finite-field Frobenius signs, truncated strict
Honda-to-elliptic coordinates, and unprojected cubical units for the three
curves in Rubinstein's November 2026 example. The all-degree proof uses
Lubin--Tate and the theorem of the cube; these tests are NOT that proof,
and they do not test Alpoge's full theta kernels, inequality (M), or RH.
Standard library only.
"""
from fractions import Fraction as Q
from math import comb, factorial

ONE=(Q(1),Q(0)); ZERO=(Q(0),Q(0))
def zmul(z,w):return(z[0]*w[0]-z[1]*w[1],z[0]*w[1]+z[1]*w[0])
def zadd(z,w):return(z[0]+w[0],z[1]+w[1])
def zpow(z,n):
 out=ONE
 for _ in range(n):out=zmul(out,z)
 return out
def vq(q,p):
 if not q:return 10000
 a,b=abs(q.numerator),q.denominator;v=0
 while a%p==0:a//=p;v+=1
 while b%p==0:b//=p;v-=1
 return v
def v(z,p):return min(vq(z[0],p),vq(z[1],p))

def points(p,c):
 el=[(a,b) for a in range(p) for b in range(p)]
 def mul(x,y):return((x[0]*y[0]-x[1]*y[1])%p,(x[0]*y[1]+x[1]*y[0])%p)
 def add(x,y):return((x[0]+y[0])%p,(x[1]+y[1])%p)
 def neg(x):return(-x[0]%p,-x[1]%p)
 c=(int(c[0]),int(c[1]));squares={}
 for y in el:
  yy=mul(y,y);squares[yy]=squares.get(yy,0)+1
 return 1+sum(squares.get(add(mul(mul(x,x),x),neg(mul(c,x))),0) for x in el)

def wp_ratio_and_sigma(nmax):
 # wp=z^-2 A(u), u=cz^4, B=A-2uA', and B^2=A^3-uA.
 a=[Q(1)]
 for n in range(1,nmax+1):
  b=lambda j:(1-2*j)*a[j]
  bprod=sum((b(j)*b(n-j) for j in range(1,n)),Q(0))
  cubic=sum((a[i]*a[j]*a[n-i-j] for i in range(n+1)
             for j in range(n-i+1) if max(i,j,n-i-j)<n),Q(0))
  a.append((bprod-cubic+a[n-1])/(4*n+1))
 b=[(1-2*n)*a[n] for n in range(nmax+1)]
 ratio=[Q(1)];lgA=[Q(0)];lgB=[Q(0)];sigma=[Q(0)]
 for n in range(1,nmax+1):
  ratio.append(a[n]-sum((b[k]*ratio[n-k] for k in range(1,n+1)),Q(0)))
  lgA.append(a[n]-sum((k*lgA[k]*a[n-k] for k in range(1,n)),Q(0))/n)
  lgB.append(b[n]-sum((k*lgB[k]*b[n-k] for k in range(1,n)),Q(0))/n)
  sigma.append(-a[n]/(4*n*(4*n-1))-lgA[n]+lgB[n])
 return ratio,sigma

def honda_L_power(p,r,N):
 # For N <= 140 and p>=3, only T,T^(p^2)/p,T^(p^4)/p^2 occur.
 q=p*p
 for j2 in range(r+1):
  for j1 in range(r-j2+1):
   deg=r+(q-1)*j1+(q*q-1)*j2
   if deg>N:break
   yield deg,Q(factorial(r),factorial(j1)*factorial(j2)*factorial(r-j1-j2)*p**(j1+2*j2))

def coordinate_h(p,c,N,ratio):
 out={}
 for n in range((N-1)//4+1):
  cc=zpow(c,n);r=4*n+1
  for deg,weight in honda_L_power(p,r,N):
   value=zmul(cc,(ratio[n]*weight,Q(0)))
   out[deg]=zadd(out.get(deg,ZERO),value)
 return {k:z for k,z in out.items() if z!=ZERO}

def poly_mul(f,g,N):
 out={}
 for a,z in f.items():
  for b,w in g.items():
   t=tuple(a[j]+b[j] for j in range(3))
   if sum(t)>N:continue
   out[t]=zadd(out.get(t,ZERO),zmul(z,w))
 return {k:z for k,z in out.items() if z!=ZERO}

def unprojected_cube(p,c,N,sigma):
 # Unprojected third difference D^3m, not the torus-projected beta.
 G={}
 for n in range(1,N//4+1):
  d=4*n;cc=zpow(c,n)
  for a in range(1,d-1):
   for b in range(1,d-a):
    k=d-a-b
    if k<1:continue
    coeff=zmul(cc,(sigma[n]*Q(factorial(d),factorial(a)*factorial(b)*factorial(k)),Q(0)))
    for ia,wa in honda_L_power(p,a,N):
     for ib,wb in honda_L_power(p,b,N):
      for ic,wc in honda_L_power(p,k,N):
       t=(ia,ib,ic)
       if sum(t)>N:continue
       G[t]=zadd(G.get(t,ZERO),zmul(coeff,(wa*wb*wc,Q(0))))
 G={k:z for k,z in G.items() if z!=ZERO}
 E={(0,0,0):ONE};power={(0,0,0):ONE}
 for k in range(1,N//3+1):
  power=poly_mul(power,G,N)
  if not power:break
  for t,z in power.items():
   E[t]=zadd(E.get(t,ZERO),(z[0]/factorial(k),z[1]/factorial(k)))
 assert all(v(z,p)>=0 for z in E.values())
 return len(E)

def check_tame_root(p,count=35):
 m=p*p-1;out=Q(1)
 for k in range(1,count+1):
  out*=Q(1,m)-(k-1)
  out/=k
  assert vq(out,p)>=0

if __name__=='__main__':
 for p,c,N in ((3,(Q(0),Q(-1)),120),
               (7,(Q(-1),Q(-1)),120),
               (11,(Q(0),Q(-1)),140)):
  pts=points(p,c)
  assert pts==(p-1)**2
  ratio,sigma=wp_ratio_and_sigma(max((N-1)//4,6))
  h=coordinate_h(p,c,N,ratio)
  assert h[1]==ONE and all(v(z,p)>=0 for z in h.values())
  cube_terms=unprojected_cube(p,c,24,sigma)
  check_tame_root(p)
  print(f'PASS p={p}, #E(Fp^2)={pts}, trace={p*p+1-pts}, '
        f'Honda h integral through degree {N} ({len(h)} terms), '
        f'cube through total degree 24 ({cube_terms} terms), tame root')
  if p==3:assert h[9]==(Q(1,5),Q(0))
 print('NOT PROVED computationally: the all-degree model/theta integrality; '
       'that argument uses Lubin-Tate and theorem of cube. '
       'Original automorphic theta B4, (M), RH and self-adjoint Hilbert-Polya remain OPEN.')
