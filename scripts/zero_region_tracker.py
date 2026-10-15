#!/usr/bin/env python3
"""Source-bound region tracking and quadratic-jet / quartic exclusion.

Written complex-analytic bridge plus exact rational algebra, not Lean.
A quartic sublevel set is a NECESSARY location for a zero, not existence.
The unchanged compensated Euler--Maclaurin source supplies every tail.
"""
from __future__ import annotations
from fractions import Fraction as Q
from math import comb
from pathlib import Path
import hashlib
import json
import reflected_zeta_cover as r
import phase_aware_zeta_cover as p


def add(a, b):
    out=dict(a)
    for key,value in b.items(): out[key]=out.get(key,Q(0))+value
    return {key:value for key,value in out.items() if value}


def scale(a, c): return {key:c*value for key,value in a.items() if c*value}


def mul(a, b):
    out={}
    for (i,j),v in a.items():
        for (k,l),w in b.items():
            key=(i+k,j+l);out[key]=out.get(key,Q(0))+v*w
    return {key:value for key,value in out.items() if value}


def evaluate(poly, x, y):
    x,y=r.rational(x),r.rational(y)
    return sum((v*x**i*y**j for (i,j),v in poly.items()),Q(0))


def complex_quadratic_polys(coefficients):
    if len(coefficients)!=3: raise ValueError('exactly three complex coefficients required')
    re,im={},{}
    for k,(ar,ai) in enumerate(coefficients):
        ar,ai=r.rational(ar),r.rational(ai)
        for j in range(k+1):
            f=Q(comb(k,j));phase=j%4
            rr,ii=((ar,ai),(-ai,ar),(-ar,-ai),(ai,-ar))[phase]
            key=(k-j,j)
            re[key]=re.get(key,Q(0))+f*rr
            im[key]=im.get(key,Q(0))+f*ii
    return re,im


def bernstein(poly,hx,hy,degree=4):
    hx,hy=r.rational(hx),r.rational(hy)
    if hx<=0 or hy<=0: raise ValueError('positive rectangle half widths required')
    if any(i>degree or j>degree for i,j in poly): raise ValueError('degree too small')
    power={}
    for (i,j),value in poly.items():
        for a in range(i+1):
            for b in range(j+1):
                key=(a,b)
                coeff=value*hx**i*hy**j*comb(i,a)*comb(j,b)*2**(a+b)*(-1)**(i+j-a-b)
                power[key]=power.get(key,Q(0))+coeff
    return tuple(tuple(sum((value*Q(comb(i,a),comb(degree,a))*Q(comb(j,b),comb(degree,b))
                for (a,b),value in power.items() if a<=i and b<=j),Q(0))
                for j in range(degree+1)) for i in range(degree+1))


def quadratic_candidate(local,box):
    if box.center()!=(local.sigma,local.height): raise ValueError('mismatched Taylor center')
    radius=box.radius()
    mids=[];rounding=Q(0)
    for k,a in enumerate(local.coefficients[:3]):
        re=(a.re.lo+a.re.hi)/2; im=(a.im.lo+a.im.hi)/2
        mids.append((re,im))
        rounding+=((a.re.hi-a.re.lo+a.im.hi-a.im.lo)/2)*radius**k
    error=rounding+local.remainder(radius)+sum((a.upper_abs()*radius**k
        for k,a in enumerate(local.coefficients) if k>=3),Q(0))
    re,im=complex_quadratic_polys(mids)
    squared=add(mul(re,re),mul(im,im))
    quartic=add(squared,{(0,0):-error**2})
    hx,hy=(box.xmax-box.xmin)/2,(box.ymax-box.ymin)/2
    control=bernstein(quartic,hx,hy)
    minimum=min(v for row in control for v in row)
    return dict(center=[str(local.sigma),str(local.height)],rectangle=box.json(),
        midpoint_coefficients=[[str(a),str(b)] for a,b in mids],
        error_bound=str(error),
        quartic_coefficients=[dict(x_power=i,y_power=j,value=str(v)) for (i,j),v in sorted(quartic.items())],
        bernstein_lower_bound=str(minimum),zero_free=minimum>0,
        candidate_semantics='Necessary zero-location set P4(x,y)<=0 intersected with the original rectangle; not an existence assertion',
        original_triangle_margin=str(local.zero_free_margin(radius)))


def source_geometry(record):
    # Verifies the complete dyadic topology, not the analytic margins.
    trie=p.make_trie(record['leaves'])
    domain=r.Rectangle(*record['domain']);out=[]
    def walk(node,box,path):
        if 'leaf' in node:
            row=dict(node['leaf']);row['rectangle']=box.json();out.append(row);return
        a,b=box.split();walk(node['0'],a,path+'0');walk(node['1'],b,path+'1')
    walk(trie,domain,'')
    return out


def conic_square_pullback(a,b,c):
    a,b,c=map(r.rational,(a,b,c))
    return {(4,0):a,(3,1):4*b,(2,2):4*c-2*a,(1,3):-4*b,(0,4):a}


def power_basis_test(poly,hx,hy,degree=4):
    controls=bernstein(poly,hx,hy,degree)
    for i in range(5):
        for j in range(5):
            u,v=Q(i,4),Q(j,4)
            actual=evaluate(poly,hx*(2*u-1),hy*(2*v-1))
            recovered=sum((controls[a][b]*comb(degree,a)*u**a*(1-u)**(degree-a)
                    *comb(degree,b)*v**b*(1-v)**(degree-b)
                    for a in range(degree+1) for b in range(degree+1)),Q(0))
            if actual!=recovered: raise ArithmeticError('Bernstein reconstruction failed')


def main():
    root=Path(__file__).resolve().parents[1]
    record=json.loads((root/'evidence/number-theory/zeta/phase-aware-cover-20261014.json').read_text())
    geometry=source_geometry(record)
    boxes=[r.Rectangle(Q(1,2),Q(3,4),Q(55,4),Q(14)),
           r.Rectangle(Q(1,2),Q(3,4),Q(14),Q(57,4)),
           r.Rectangle(Q(1,2),Q(3,4),Q(32),Q(129,4)),
           r.Rectangle(Q(3,4),Q(1),Q(32),Q(129,4))]
    examples=[]
    for box in boxes:
        local=r.model(*box.center())
        example=quadratic_candidate(local,box)
        poly={(a['x_power'],a['y_power']):Q(a['value']) for a in example['quartic_coefficients']}
        power_basis_test(poly,(box.xmax-box.xmin)/2,(box.ymax-box.ymin)/2)
        examples.append(example)
        print('CELL',box.json(),'quartic positive:',example['zero_free'],
              'lower',float(Q(example['bernstein_lower_bound'])),
              'old margin',float(Q(example['original_triangle_margin'])),flush=True)
    result=dict(schema='zero-region-tracking-v1',
        repository_checkpoint='1babf8fc9cf52cbd4f366119bf3daf800e5679d5',
        baseline_certificate_sha256=hashlib.sha256((root/'evidence/number-theory/zeta/phase-aware-cover-20261014.json').read_bytes()).hexdigest(),
        baseline_provenance='Prior source-bound full analytic replay in receipt; this script independently rechecks dyadic topology only',
        baseline_leaf_count=len(geometry),baseline_leaves=geometry,
        new_quartic_cells=examples,
        root_disks=record['roots'],
        native_lean_admission=False,
        global_bound_proved=False)
    (root/'zero_region_tracking.json').write_text(json.dumps(result,indent=2)+'\n')

if __name__=='__main__': main()
