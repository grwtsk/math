#!/usr/bin/env python3
"""Exact rational source-preserving positive-character gauge diffusion.

For original nonexceptional cyclic Level phases c>2/3, the conjugated
operator M_c^-1 D_t M_c is self-adjoint in the weighted c^2 inner product.
This is NOT a zeta-zero operator and proves neither RH nor Weil positivity.
"""
from fractions import Fraction as Q
from pathlib import Path
import json,argparse
from verify_cyclic_phase_diffusion_commutator import eye, matmul, mv, inf_norm
from verify_cyclic_level_phase_curvature import group4,group5,group15,level_phase
from verify_gm_discrete_diffusion import linspace_ops,inverse

def tr(a):return [list(x) for x in zip(*a)]
def matrix_eq(a,b):return all(x==y for x,y in zip(a,b))
def absmax(v):return max(map(abs,v)) if v else Q(0)
def check(mod,group,N,t,m):
    L,D=linspace_ops(N,t)
    c=[level_phase(group(k+1)) for k in range(N)]
    assert all(Q(2,3)<x<Q(4,3) for x in c)
    M=[[c[i] if i==j else Q(0) for j in range(N)] for i in range(N)]
    Mi=[[Q(1,c[i]) if i==j else Q(0) for j in range(N)] for i in range(N)]
    assert matmul(M,Mi)==eye(N)==matmul(Mi,M)
    T=matmul(matmul(Mi,D),M)
    P=eye(N);Qp=eye(N)
    for _ in range(m):P=matmul(P,D);Qp=matmul(Qp,T)
    assert matmul(M,Qp)==matmul(P,M)
    assert Qp==matmul(matmul(Mi,P),M)
    G=matmul(M,M)
    assert matmul(G,T)==matmul(tr(T),G)
    assert matmul(G,Qp)==matmul(tr(Qp),G)
    assert all(x>=0 for row in T for x in row)
    assert inf_norm(P)<=1
    assert inf_norm(Qp)<=2
    v=[Q((-1)**i*(i+1),N+9) for i in range(N)]
    assert absmax(mv(M,mv(Qp,v)))<=absmax(mv(M,v))
    assert mv(M,mv(Qp,v))==mv(P,mv(M,v))
    if t<Q(1,4):
        Di=inverse(D);Ti=matmul(matmul(Mi,Di),M)
        assert matmul(T,Ti)==eye(N)==matmul(Ti,T)
        assert matmul(M,Ti)==matmul(Di,M)
        assert inf_norm(Di)<=Q(1)/(1-4*t)
    return {'modulus':mod,'N':N,'t':str(t),'m':m,'weighted_selfadjoint':True,
      'exact_source_conjugacy':True,'weight_condition_number_bound':'<2',
      'weighted_forward_contraction':True,
      'native_phase_min':str(min(c)),'native_phase_max':str(max(c))}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--report',type=Path,default=Path('/mnt/data/cyclic_covariant_diffusion_report.json'))
    args=ap.parse_args()
    records=[check(q,g,N,t,m) for q,g in ((4,group4),(5,group5),(15,group15))
             for N in (2,3,5,8,13) for t in (Q(1,16),Q(1,8)) for m in (0,1,3,5)]
    assert len(records)==120
    out={'status':'EXACT_ORIGINAL_CYCLIC_PHASE_COVARIANT_DIFFUSION_PASS',
      'cases':len(records),'records':records,
      'source':'M D_(t,c)^m=D_t^m M, D_(t,c)=M^-1 D_t M',
      'weighted_Gram':'G=M^2, G T=T^T G',
      'condition_number':'||M||inf ||M^-1||inf <2',
      'nonexceptional_phase':True,'exceptional_level_inversion':'NOT_VALID_IF_PHASE_VANISHES',
      'boundary':'Dirichlet exterior source vector must still be retained',
      'not_established':'RH/GRH, native EAtH/CoreAtH power estimate, zeta spectral realization',
      'Lean_kernel':'NOT_RUN'}
    args.report.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'cases':len(records),'nonzero_phase_min':str(min(level_phase(group4(k)) for k in range(1,5)))},indent=2))

if __name__=='__main__':main()
