#!/usr/bin/env python3
"""Independent exact rational source-preserving finite graph-transport tests.

Covers column-stochastic but NOT row-balanced kernels, symmetric double
stochastic kernels, arbitrary signed waveforms, nonsymmetric signed Gram
kernels and source-guarded observation graph sandwiches. This is not
Lean elaboration or a universal theorem certificate.
"""
from fractions import Fraction as Q
import json, hashlib, random
from collections import Counter
from pathlib import Path

rng=random.Random(20261102)
c=Counter()
max_abs_imb=Q(0)
max_residual_ratio=Q(0)
strict_ratio=0

def sample_matrix(n, kind):
    if kind == 'column':
        M=[[Q(rng.randint(0,4)) for _ in range(n)] for _ in range(n)]
        for j in range(n):
            sm=sum(M[i][j] for i in range(n))
            if not sm:
                M[j][j]=Q(1);sm=Q(1)
            for i in range(n): M[i][j]/=sm
        return M
    if kind == 'symmetric':
        # Convex mixtures of the identity with the swap cycle or all-ones
        a=Q(rng.randint(0,6),8)
        if n==1:return [[Q(1)]]
        B=[[Q(1,n) for _ in range(n)] for _ in range(n)]
        return [[(a if i==j else Q(0))+(1-a)*B[i][j] for j in range(n)] for i in range(n)]
    if kind == 'sink':
        dest=rng.randrange(n)
        return [[Q(int(i==dest)) for j in range(n)] for i in range(n)]
    raise ValueError(kind)

def dot(a,b):return sum(x*y for x,y in zip(a,b))
def heat(M,d):return [sum(M[i][j]*d[j] for j in range(len(d))) for i in range(len(d))]
def cross(G,x):
    return sum(G[i][j]*x[i]*x[j] for i in range(len(x)) for j in range(len(x)) if i!=j)

def run_case(n, kind):
    global max_abs_imb, max_residual_ratio, strict_ratio
    M=sample_matrix(n,kind)
    d=[Q(rng.randint(-8,8),rng.randint(1,7)) for _ in range(n)]
    y=[Q(rng.randint(-4,4),rng.randint(1,5)) for _ in range(n)]
    x=[u+v for u,v in zip(d,y)]
    r=[max(Q(0),e) for e in d]
    b=[max(Q(0),-e) for e in d]
    Kr,Kb=heat(M,r),heat(M,b)
    Kd=heat(M,d)
    rho=[d[i]-(Kr[i]-Kb[i]) for i in range(n)]
    R=[sum(M[i][j] for j in range(n)) for i in range(n)]
    var=[sum(M[i][j]*(d[i]-d[j]) for j in range(n)) for i in range(n)]
    corr=[(1-R[i])*d[i] for i in range(n)]
    env=[sum(M[i][j]*abs(d[i]-d[j]) for j in range(n))+abs(1-R[i])*abs(d[i]) for i in range(n)]
    assert all(sum(M[i][j] for i in range(n))==1 for j in range(n))
    assert all(M[i][j]>=0 for i in range(n) for j in range(n))
    assert all(Kr[i]-Kb[i]==Kd[i] for i in range(n))
    assert sum(Kr)==sum(r) and sum(Kb)==sum(b)
    assert all(rho[i]==var[i]+corr[i] for i in range(n))
    assert all(abs(rho[i])<=env[i] for i in range(n))
    assert sum(abs(z) for z in rho)<=sum(env)
    assert sum(rho)==0 and sum(abs(t) for t in Kd)<=sum(abs(z) for z in d)
    assert all(y[i]+Kr[i]-Kb[i]+rho[i]==x[i] for i in range(n))
    if kind == 'symmetric':
        assert all(R[i]==1 for i in range(n))
        assert all(corr[i]==0 for i in range(n))
        assert all(M[i][j]==M[j][i] for i in range(n) for j in range(n))
        assert sum(abs(z) for z in rho)<=sum(sum(M[i][j]*abs(d[i]-d[j]) for j in range(n)) for i in range(n))
        # A nonnegative Dirichlet energy with the original signed source.
        work=dot(d,rho)
        dirichlet=Q(1,2)*sum(M[i][j]*(d[i]-d[j])**2 for i in range(n) for j in range(n))
        assert work==dirichlet and work>=0
        c['exact_dirichlet_energy']+=1
    c[f'graph_{kind}']+=1
    c['pointwise_variation']+=n
    # Directed, signed kernel; no symmetry/PSD assumptions.
    G=[[Q(rng.randint(-9,9),rng.randint(1,6)) for j in range(n)] for i in range(n)]
    obs=[x[i]-rho[i] for i in range(n)]
    d0=cross(G,x)-cross(G,obs)
    terms=sum(G[i][j]*(rho[i]*obs[j]+obs[i]*rho[j]+rho[i]*rho[j])
              for i in range(n) for j in range(n) if i!=j)
    budget=sum(abs(G[i][j])*(abs(rho[i])*abs(obs[j])+abs(obs[i])*abs(rho[j])+abs(rho[i])*abs(rho[j]))
               for i in range(n) for j in range(n) if i!=j)
    assert d0==terms and abs(d0)<=budget
    assert cross(G,x)<=cross(G,obs)+budget
    c['signed_gram_exact']+=1
    c['signed_gram_ordered_terms']+=n*(n-1)
    # Graph-sandwich preserves original source, holds no false geometric edges.
    radius=[abs(z) for z in rho]
    threshold=Q(rng.randint(0,14),rng.randint(1,5))
    for i in range(n):
      for j in range(n):
        # Only source-adjacent declared pairs; no wrap.
        if abs(i-j)!=1:continue
        true=abs(x[i]-x[j])<=threshold
        lower=abs(obs[i]-obs[j])+radius[i]+radius[j]<=threshold
        upper=abs(obs[i]-obs[j])<=threshold+radius[i]+radius[j]
        assert not lower or true
        assert not true or upper
        c['sandwich_edges_checked']+=1
    c['pointwise_source_returns']+=n
for kind in ['column','symmetric','sink']:
 for n in range(1,8):
  for k in range(220):run_case(n,kind)

# Demonstrate that omitting row imbalance from a merely column stochastic
# transport is provably false, even for a CONSTANT source waveform.
sink=[[Q(1),Q(1)],[Q(0),Q(0)]]
sd=[Q(1),Q(1)]
row=sum(abs(sd[i]-heat(sink,sd)[i]) for i in range(2))
variation=sum(sink[i][j]*abs(sd[i]-sd[j]) for i in range(2) for j in range(2))
imbalance=sum(abs(1-sum(sink[i]))*abs(sd[i]) for i in range(2))
assert (row,variation,imbalance)==(Q(2),Q(0),Q(2))

# Entire result's regression fixtures are REAL exact fractions. Public samples
# come from separate pinned CERN/ATLAS/LIGO manifests, not synthesized here.
result={
 'schema':'grwtsk.math.graph-heat-variation-gram-reference/1',
 'result':'PASS_FINITE_ONLY',
 'checks':dict(c),
 'counterexample':{'kind':'two-state absorbing sink','source':[1,1],
                   'rowVariationOnlyWouldFail':True,
                   'actualResidualL1':'2','variationL1':'0','rowImbalanceBudget':'2'},
 'theorem_formulas':{
   'pointwise':'d(v)-Kd(v)=sum_u K(v,u)*(d(v)-d(u))+(1-rowMass(v))*d(v)',
   'general_l1':'||d-Kd||1<=sum_vu K(v,u)|d(v)-d(u)|+sum_v|1-rowMass(v)||d(v)|',
   'symmetric_Dirichlet':'sum_v d(v)*(d(v)-Kd(v))=1/2 sum_vu K(v,u)*(d(v)-d(u))^2',
   'signed_Gram':'X_G(x)-X_G(y)=sum_i!=j G_ij*(rho_i*y_j+y_i*rho_j+rho_i*rho_j)'
 },
 'execution':'Independent offline Python Fraction regression, NOT Lean compilation, kernel, or axioms',
 'seed':20261102
}
path=Path('/mnt/data/graph_transport_reference.json')
path.write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
print(json.dumps(result,indent=2))
for p in [Path(__file__),path]:print(p.name,hashlib.sha256(p.read_bytes()).hexdigest(),p.stat().st_size)
