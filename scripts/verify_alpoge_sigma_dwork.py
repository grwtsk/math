#!/usr/bin/env python3
"""Independent exact Frobenius/Dwork B4 jet checks for the genuine
lemniscatic elliptic sigma beta of Rubinstein §III.5; not full B4 or RH.
Uses only stdlib Fraction, combinatorics and Gaussian rational arithmetic.
"""
from fractions import Fraction as Q
from math import comb, factorial
from functools import lru_cache
N=24
ZERO=(Q(0),Q(0)); ONE=(Q(1),Q(0))

def add(z,w):return(z[0]+w[0],z[1]+w[1])
def mul(z,w):return(z[0]*w[0]-z[1]*w[1],z[0]*w[1]+z[1]*w[0])
def scale(z,s):return(z[0]*s,z[1]*s)
def power_z(z,n):
 out=ONE
 for _ in range(n):out=mul(out,z)
 return out

def vp_scalar(x,p):
 if not x:return 10**9
 num=abs(x.numerator);den=x.denominator;v=0
 while num%p==0:num//=p;v+=1
 while den%p==0:den//=p;v-=1
 return v

def vp(z,p):return min(vp_scalar(z[0],p),vp_scalar(z[1],p))

def wp_coeffs(nmax):
 # wp=z^-2*A(u), wp'=-2z^-3*B(u), u=z^4,
 # B=A-2uA', so the elliptic equation is B²=A³-u A
 a=[Q(1)]
 for n in range(1,nmax+1):
  b=lambda i:(1-2*i)*a[i]
  b_known=sum(b(i)*b(n-i) for i in range(1,n))
  cub_known=sum(a[i]*a[j]*a[n-i-j]
     for i in range(n+1) for j in range(n-i+1)
     if i<n and j<n and n-i-j<n)
  a.append((b_known-cub_known+a[n-1]) / (4*n+1))
 return a

def log_unit(h):
 # log(1+sum h_n u^n), h[0]=1
 out=[Q(0)]
 for n in range(1,len(h)):
  out.append(h[n] - sum((k*out[k]*h[n-k] for k in range(1,n)),Q(0))/n)
 return out

def sigma_moments(nmax):
 a=wp_coeffs(nmax)
 b=[(1-2*i)*v for i,v in enumerate(a)]
 la,lb=log_unit(a),log_unit(b)
 # log sigma - log z = -sum a_n z^(4n)/(4n(4n-1))
 m=[Q(0)]
 for n in range(1,nmax+1):
  m.append(-a[n]/(4*n*(4*n-1))-la[n]+lb[n])
 return m

def padd(a,b):
 out=a.copy()
 for key,value in b.items():
  val=add(out.get(key,ZERO),value)
  if val==ZERO:out.pop(key,None)
  else:out[key]=val
 return out

def pmul(a,b,n):
 out={}
 for (i,j,k),v in a.items():
  for (i2,j2,k2),w in b.items():
   if i+j+k+i2+j2+k2>n:continue
   key=(i+i2,j+j2,k+k2)
   out[key]=add(out.get(key,ZERO),mul(v,w))
 return {k:v for k,v in out.items() if v!=ZERO}

def sigma_beta(p,c,m,N):
 # z,w elliptic uniformizing coordinates; beta is invariant part
 # of m(z+w)-m(z)-m(w) for torus (z,w)->(zeta*z,zeta^(-p)*w).
 coefficients={}
 for n in range(1,N//4+1):
  d=4*n
  for a in range(1,d):
   b=d-a
   if (a-p*b)%(p*p-1):continue
   coefficients[a,b]=scale(power_z(c,n),m[n]*comb(d,a))
 assert all(coefficients.get((b,a))==v for (a,b),v in coefficients.items())
 return coefficients

def d1_beta(beta):
 out={}
 for (a,b),coeff in beta.items():
  for j in range(1,a):
   key=(j,a-j,b)
   out[key]=add(out.get(key,ZERO),scale(coeff,comb(a,j)))
 return {k:v for k,v in out.items() if v!=ZERO}

def d2_beta(beta):
 out={}
 for (a,b),coeff in beta.items():
  for j in range(1,b):
   key=(a,j,b-j)
   out[key]=add(out.get(key,ZERO),scale(coeff,comb(b,j)))
 return {k:v for k,v in out.items() if v!=ZERO}


def substitute_height2(B,p,N):
 # L(T)=T+T^(p*p)/p+... ; N<=24 and p>=3, so e<=1
 q=p*p
 @lru_cache(None)
 def L_power(r):
  return [(r+(q-1)*j,Q(comb(r,j),p**j))
          for j in range(r+1) if r+(q-1)*j<=N]
 out={}
 for (a,b,c),val in B.items():
  for ia,qa in L_power(a):
   for ib,qb in L_power(b):
    for ic,qc in L_power(c):
     if ia+ib+ic>N:continue
     key=(ia,ib,ic)
     out[key]=add(out.get(key,ZERO),scale(val,qa*qb*qc))
 return {k:v for k,v in out.items() if v!=ZERO}

def formal_exp(g,N):
 E={(0,0,0):ONE};P=E
 for k in range(1,N//4+1):
  P=pmul(P,g,N)
  if not P:break
  E=padd(E,{m:scale(v,Q(1,factorial(k))) for m,v in P.items()})
 return E

def dwork_residual(g,p):
 # sigma on Z_p[i] is conjugation for p=3 (mod 4).
 out={key:scale(val,p) for key,val in g.items()}
 for mon,val in g.items():
  scaled=tuple(p*a for a in mon)
  if sum(scaled)>N:continue
  sg=(val[0],-val[1])
  out[scaled]=add(out.get(scaled,ZERO),scale(sg,-1))
 return {k:v for k,v in out.items() if v!=ZERO}

if __name__=='__main__':
 m=sigma_moments(N//4)
 print('sigma m(z) through degree 24:',[(4*j,str(m[j])) for j in range(1,len(m))])
 assert m[:4]==[Q(0),Q(-5,12),Q(-3,56),Q(-13,990)]
 for p,c in [(3,(Q(0),Q(-1))),(7,(Q(-1),Q(-1))),(11,(Q(0),Q(-1)))]:
  beta=sigma_beta(p,c,m,N)
  assert beta
  delta=d1_beta(beta)
  other=d2_beta(beta)
  assert { (k,v,j):coef for (j,v,k),coef in delta.items()} == other
  g=substitute_height2(delta,p,N)
  gother=substitute_height2(other,p,N)
  assert { (k,v,j):coef for (j,v,k),coef in g.items()} == gother
  E=formal_exp(g,N)
  Eother=formal_exp(gother,N)
  assert { (k,v,j):coef for (j,v,k),coef in E.items()} == Eother
  D=dwork_residual(g,p)
  bad_E=[(mon,v) for mon,v in E.items() if vp(v,p)<0]
  bad_D=[(mon,v) for mon,v in D.items() if vp(v,p)<1]
  assert not bad_E,(p,bad_E[:3]);assert not bad_D,(p,bad_D[:3])
  print('PASS',p,'c=',c,'beta',len(beta),'cob',len(delta),'E',len(E),'D',len(D),'min_v_E',min(vp(v,p) for v in E.values()),'min_v_D',min(vp(v,p) for v in D.values()))
  if p==3:
   assert beta[(3,1)]==(Q(0),Q(5,3))
   assert delta[(1,2,1)]==(Q(0),Q(5))
   assert delta[(2,1,1)]==(Q(0),Q(5))
 # Hostile B1/B2/B3 model: invariant beta=(1/p^2) X_even^p X_odd
 # at p=3, but B4 fails at its first degree-four coboundary.
 hostile={(3,1):(Q(1,9),Q(0))}
 hg=substitute_height2(d1_beta(hostile),3,N)
 he=formal_exp(hg,N)
 hd=dwork_residual(hg,3)
 assert any(vp(c,3)<0 for c in he.values())
 assert any(vp(c,3)<1 for c in hd.values())
 assert hg[(2,1,1)]==(Q(1,3),Q(0))
 print('PASS hostile invariant beta=(1/9) X^3 Y: B4 fails at degree four')
 print('PASS all B4 jets through total degree',N, 'in BOTH doubled directions by beta symmetry')
 print('NOT_PROVED: ALL-degree theta beta B4, all orbits / primes, inequality (M) or RH')
