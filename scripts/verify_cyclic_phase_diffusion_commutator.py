#!/usr/bin/env python3
"""Exact rational native cyclic character phase versus finite Gm heat commutator.

No RH/GRH, zeta zeros, or spectral surrogate. The user of the native
Level phase must source-prove phase bounds in the isolated environment.
"""
import argparse,json
from pathlib import Path
from fractions import Fraction as Q
from verify_cyclic_level_phase_curvature import group4,group5,group15,level_phase

def eye(n):return [[Q(int(i==j)) for j in range(n)] for i in range(n)]
def matmul(A,B):
    n=len(A);m=len(B[0]);k=len(B)
    return [[sum((A[i][h]*B[h][j] for h in range(k)),Q(0)) for j in range(m)] for i in range(n)]
def mv(A,v):return [sum((a*b for a,b in zip(row,v)),Q(0)) for row in A]
def inf_norm(A):return max(sum(abs(v) for v in row) for row in A)
def add(A,B):return [[a+b for a,b in zip(x,y)] for x,y in zip(A,B)]
def neg(A):return [[-x for x in row] for row in A]
def diff(A,B):return add(A,neg(B))
def case(modulus,group,n,t,depth):
    L=[[Q(-2) if i==j else Q(1) if abs(i-j)==1 else Q(0) for j in range(n)] for i in range(n)]
    D=[[Q(int(i==j))+t*L[i][j] for j in range(n)] for i in range(n)]
    p=[level_phase(group(k+1)) for k in range(n)]
    assert all(Q(2,3)<v<Q(4,3) for v in p)
    M=[[p[i] if i==j else Q(0) for j in range(n)] for i in range(n)]
    C=diff(matmul(D,M),matmul(M,D))
    for i in range(n):
        for j in range(n):
            assert C[i][j]== (t*(p[j]-p[i]) if abs(i-j)==1 else 0)
    assert inf_norm(C)<=Q(4,3)*t
    P=eye(n)
    for _ in range(depth):P=matmul(P,D)
    CP=diff(matmul(P,M),matmul(M,P))
    # Telescoping of the original commutator at each heat step.
    right=[[Q(0) for _ in range(n)] for _ in range(n)]
    powj=eye(n)
    pw=[eye(n)]
    for _ in range(depth):pw.append(matmul(pw[-1],D))
    for j in range(depth):
        right=add(right,matmul(matmul(pw[j],C),pw[depth-1-j]))
    assert CP==right
    assert inf_norm(P)<=1
    assert inf_norm(CP)<=Q(4,3)*t*depth
    v=[Q((-1)**(k+1)*(k+1),n+7) for k in range(n)]
    assert mv(CP,v)==[a-b for a,b in zip(mv(P,mv(M,v)),mv(M,mv(P,v)))]
    error_inf=max(abs(z) for z in mv(CP,v))
    assert error_inf<=Q(4,3)*t*depth*max(abs(z) for z in v)
    return {'q':modulus,'n':n,'t':str(t),'depth':depth,
        'commutator_norm':str(inf_norm(C)),
        'diffused_commutator_norm':str(inf_norm(CP)),
        'phase_nonconstant':len(set(p))>1,
        'wrong_order_differs':any(z!=0 for z in mv(CP,v)),
        'error_bound':str(Q(4,3)*t*depth)}

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--report',type=Path,default=Path('/mnt/data/cyclic_phase_diffusion_report.json'))
    args=parser.parse_args()
    checks=[case(q,g,n,t,m) for q,g in ((4,group4),(5,group5),(15,group15)) for n in (3,5,8,13) for t in (Q(1,16),Q(1,8)) for m in (0,1,3,5)]
    assert len(checks)==96
    assert any(r['wrong_order_differs'] for r in checks if r['depth']>0)
    result={'status':'EXACT_CYCLIC_PHASE_HEAT_COMMUTATOR_PASS',
        'cases':len(checks),'checks':checks,
        'source_exact':'D_t*M_c - M_c*D_t has entry t*(c_j-c_i) iff |i-j|=1',
        'all_depth_bound':'||D_t^m M_c-M_c D_t^m||_infty <= (4/3)*m*t, for 0<=t<=1/4 and cyclic 2/3<c<4/3',
        'source_obligation':'Prove original native cyclic c(k) bound and primitive group cardinality in pinned Lean',
        'RH_or_final_result':'NOT_IMPORTED','Lean_kernel':'NOT_RUN'}
    args.report.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'cases':len(checks),
        'wrong_order_detected_cases':sum(x['wrong_order_differs'] for x in checks)},indent=2))

if __name__=='__main__':main()
