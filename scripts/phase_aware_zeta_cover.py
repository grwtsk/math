#!/usr/bin/env python3
"""Phase-aware whole-rectangle zeta certificates; no coefficient steering.

Human research direction: R.A. Jacob Martone.
Mathematical adaptation and implementation: OpenAI ChatGPT. MIT.

A rational readout direction separates the COMPLETE Taylor polynomial image
from zero. Tensor Bernstein coefficients give a convex enclosure, and every
Euler--Maclaurin, analytic, and finite-jet tail is retained. This improves a
finite certificate, not an all-height theorem. The inherited source is fixed.
"""
from __future__ import annotations
import argparse
from copy import deepcopy
from fractions import Fraction as Q
from math import comb
from pathlib import Path
import json
from typing import Sequence
import reflected_zeta_cover as r


def tensor_bernstein(coefficients: Sequence[r.ComplexBox], hx, hy, bits=112):
    """Enclose sum a_j (x+i*y)^j on |x|<=hx, |y|<=hy by its control net.

    Returns tensor Bernstein coefficients of bidegree (d,d). Every finite
    polynomial contribution is combined BEFORE projection or majorization.
    """
    hx, hy = r.rational(hx), r.rational(hy)
    r.integer(bits,'bits',64,256)
    d = len(coefficients)-1
    r.integer(d,'Bernstein degree',0,8)
    if hx <= 0 or hy <= 0 or any(not isinstance(a,r.ComplexBox) for a in coefficients):
        raise ValueError('positive half-widths and complex interval coefficients required')
    zero = r.ComplexBox.point(0)
    powers = {(0,0):r.ComplexBox.point(1)}
    poly = {}
    terms = ((0,0,r.ComplexBox.point(-hx,-hy)),
             (1,0,r.ComplexBox.point(2*hx)),(0,1,r.ComplexBox.point(0,2*hy)))
    for j,a in enumerate(coefficients):
        for key,value in powers.items():
            poly[key] = (poly.get(key,zero)+a*value).rounded(bits)
        if j == d: break
        nxt={}
        for (p,q),value in powers.items():
            for dp,dq,factor in terms:
                key=(p+dp,q+dq)
                nxt[key]=(nxt.get(key,zero)+value*factor).rounded(bits)
        powers=nxt
    result=[]
    for u in range(d+1):
        row=[]
        for v in range(d+1):
            value=zero
            for (p,q),a in poly.items():
                if p<=u and q<=v:
                    factor=Q(comb(u,p),comb(d,p))*Q(comb(v,q),comb(d,q))
                    value=(value+factor*a).rounded(bits)
            row.append(value)
        result.append(tuple(row))
    return tuple(result)


def direction_from_center(a: r.ComplexBox):
    x=(a.re.lo+a.re.hi)/2; y=(a.im.lo+a.im.hi)/2
    size=abs(x)+abs(y)
    return (Q(1),Q(0)) if size==0 else (x/size,y/size)


def validate_direction(direction):
    if not isinstance(direction,(tuple,list)) or len(direction)!=2:
        raise ValueError('two rational direction coordinates required')
    x,y=map(r.rational,direction)
    if abs(x)+abs(y)!=1:
        raise ValueError('readout direction must have exact L1 norm one')
    return x,y


def projected_minimum(bernstein, direction):
    x,y=validate_direction(direction)
    return min((x*b.re+y*b.im).lo for row in bernstein for b in row)


def phase_margin(local: r.LocalModel, box: r.Rectangle, degree=4, direction=None):
    r.integer(degree,'beam polynomial degree',1,min(8,local.parameters.degree))
    if box.center()!=(local.sigma,local.height):
        raise ValueError('Taylor center differs from the rectangle center')
    radius=box.radius()
    remainder=local.remainder(radius)
    for k in range(degree+1,len(local.coefficients)):
        remainder += local.coefficients[k].upper_abs()*radius**k
    direction=validate_direction(direction if direction is not None
                                 else direction_from_center(local.coefficients[0]))
    coefficients=tensor_bernstein(local.coefficients[:degree+1],
                    (box.xmax-box.xmin)/2,(box.ymax-box.ymin)/2,local.parameters.bits)
    # Euclidean |direction| <= L1 |direction| = 1. Source itself is unchanged.
    margin=projected_minimum(coefficients,direction)-remainder
    return margin,direction,remainder


def make_trie(leaves):
    if type(leaves) is not list or not 1<=len(leaves)<=8192:
        raise ValueError('invalid leaf count')
    trie={}
    for leaf in leaves:
        if type(leaf) is not dict: raise ValueError('leaf must be an object')
        path=leaf.get('path')
        if type(path) is not str or len(path)>32 or any(x not in '01' for x in path):
            raise ValueError('invalid dyadic path')
        node=trie
        for char in path:
            if 'leaf' in node: raise ValueError('overlapping ancestor')
            node=node.setdefault(char,{})
        if node: raise ValueError('duplicate or descendant leaf')
        node['leaf']=leaf
    def full(node):
        if set(node)=={'leaf'}: return
        if set(node)!={'0','1'}: raise ValueError('incomplete partition')
        full(node['0']); full(node['1'])
    full(trie)
    return trie


def coarsen_cover(original: dict, degree=4):
    """Propose a coarser cover; the verifier recomputes every final claim.

    Reuses the original complete tree. Parents are merged only when all
    descendants were zero-free cells. Root disks and the source stay fixed.
    """
    if original.get('schema')!='reflected-mode-cover-v1':
        raise ValueError('expected the original finite cover')
    r.integer(degree,'beam polynomial degree',1,8)
    par=r.Parameters(**original['parameters']);domain=r.Rectangle(*original['domain'])
    trie=make_trie(original['leaves']); stats={'new_candidate_models':0,'successful_merges':0}
    def root_free(node):
        if 'leaf' in node: return node['leaf'].get('kind')=='zero_free'
        return root_free(node['0']) and root_free(node['1'])
    def visit(node,box,path):
        if 'leaf' in node: return [deepcopy(node['leaf'])]
        if root_free(node) and box.radius()<par.radius:
            stats['new_candidate_models']+=1
            local=r.model(*box.center(),par)
            margin,direction,_=phase_margin(local,box,degree)
            if margin>0:
                stats['successful_merges']+=1
                return [dict(path=path,kind='phase_separated',degree=degree,
                      direction=[str(x) for x in direction],
                      margin_power=r.dyadic_floor_power(margin))]
        a,b=box.split()
        return visit(node['0'],a,path+'0')+visit(node['1'],b,path+'1')
    result=deepcopy(original)
    result['schema']='phase-aware-reflected-cover-v1'
    result['leaves']=visit(trie,domain,'')
    result['interpretation']='Finite phase-aware cover only; fixed source and exact xi reflection.'
    return result,stats


def verify_cover(record: dict):
    expected={'schema','function','parameters','domain','roots','leaves','interpretation','native_lean_admission'}
    if type(record) is not dict or set(record)!=expected:
        raise ValueError('unexpected certificate fields')
    if record['schema']!='phase-aware-reflected-cover-v1':
        raise ValueError('wrong schema')
    if record['function']!='(s-1)*zeta(s), entire regularization':
        raise ValueError('source changed')
    if record['interpretation']!='Finite phase-aware cover only; fixed source and exact xi reflection.':
        raise ValueError('unsupported interpretation')
    if record['native_lean_admission'] is not False:
        raise ValueError('no native or all-height admission')
    par=r.Parameters(**record['parameters']); box=r.Rectangle(*record['domain'])
    if box.xmin!=Q(1,2) or box.xmax!=1 or box.ymin!=0 or not 0<box.ymax<=32:
        raise ValueError('outside original finite domain')
    roots=record['roots']; parsed=[]
    if type(roots) is not list or len(roots)>16: raise ValueError('invalid root list')
    for root in roots:
        if type(root) is not dict or set(root)!={'center','radius','margin_power'}:
            raise ValueError('root fields invalid')
        cx,cy=map(r.rational,root['center']);rad=r.rational(root['radius'])
        power=r.integer(root['margin_power'],'root margin power',-1000,1000)
        if cx!=Q(1,2) or not 0<rad<min(Q(1,2),cy,box.ymax-cy):
            raise ValueError('invalid root disk')
        if any(abs(cy-y)<=rad+rr for _,y,rr in parsed): raise ValueError('root disks overlap')
        if r.model(cx,cy,par).one_zero_margin(rad)<Q(2)**power:
            raise ArithmeticError('root margin not reproduced')
        parsed.append((cx,cy,rad))
    trie=make_trie(record['leaves'])
    counts={'phase_separated_cells':0,'triangle_cells':0,'root_disk_cells':0}
    def visit(node,cell):
        if 'leaf' not in node:
            a,b=cell.split(); visit(node['0'],a);visit(node['1'],b);return
        leaf=node['leaf'];kind=leaf.get('kind')
        if kind=='one_zero_disk':
            if set(leaf)!={'path','kind','root'}: raise ValueError('root-cell fields invalid')
            i=r.integer(leaf['root'],'root index',0,len(parsed)-1)
            if not cell.inside_disk(*parsed[i]): raise ArithmeticError('false root containment')
            counts['root_disk_cells']+=1;return
        local=r.model(*cell.center(),par)
        power=r.integer(leaf.get('margin_power'),'margin power',-1000,1000)
        if kind=='zero_free':
            if set(leaf)!={'path','kind','margin_power'}: raise ValueError('triangle fields invalid')
            margin=local.zero_free_margin(cell.radius());counts['triangle_cells']+=1
        elif kind=='phase_separated':
            if set(leaf)!={'path','kind','degree','direction','margin_power'}:
                raise ValueError('phase fields invalid')
            margin,_,_=phase_margin(local,cell,leaf['degree'],leaf['direction'])
            counts['phase_separated_cells']+=1
        else: raise ValueError('unknown claim')
        if margin<Q(2)**power: raise ArithmeticError('claimed margin not reproduced')
    visit(trie,box)
    return dict(verified=True,**counts,total_cells=sum(counts.values()),
        positive_zero_count=len(parsed),full_strip_zero_count=2*len(parsed),height=str(box.ymax),
        source='F(s)=(s-1)zeta(s); xi supplies zero-set reflection, not F-modulus reflection',
        scope='Written analytic implications and exact finite arithmetic; not Lean or all heights')


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--coarsen',type=Path);p.add_argument('--verify',type=Path)
    p.add_argument('--output',type=Path);p.add_argument('--degree',type=int,default=4)
    args=p.parse_args()
    try:
        if bool(args.coarsen)==bool(args.verify): raise ValueError('select coarsen or verify')
        if args.coarsen:
            record,stats=coarsen_cover(json.loads(args.coarsen.read_text()),args.degree)
        else: record=json.loads(args.verify.read_text());stats={}
        summary=verify_cover(record)
        if args.output: args.output.write_text(json.dumps(record,indent=2)+'\n')
        print(json.dumps({'summary':summary,'generation':stats},indent=2))
    except (ValueError,TypeError,ArithmeticError,KeyError,OSError) as e:
        p.exit(2,f'error: {e}\n')

if __name__=='__main__': main()
