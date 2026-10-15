#!/usr/bin/env python3
"""Finite zeta atlases and discriminant-controlled quadratic root islands.

Direction: grwtsk contributors. Adaptation: OpenAI ChatGPT. MIT.
Exact rational/outward arithmetic; continuum proofs are written, not Lean.
Unresolved cells remain explicit and never assert zero existence.
"""
from __future__ import annotations
import argparse
from collections import Counter
from fractions import Fraction as Q
from math import isqrt
from pathlib import Path
import json
import hashlib
import reflected_zeta_cover as r
import phase_aware_zeta_cover as phase
import zero_region_tracker as quartic

SCHEMA='zeta-region-atlas-v1'
SOURCE='(s-1)*zeta(s), entire regularization'
SCOPE='Finite closed right-upper slab; xi transfers zero sets, not F modulus.'


def sqrt_interval(value,bits=96):
    value=r.rational(value);r.integer(bits,'root bits',16,256)
    if value<0: raise ValueError('negative radicand')
    scale=1<<bits
    k=isqrt((value.numerator*scale*scale)//value.denominator)
    lo=Q(k,scale)
    return r.Interval(lo,lo if lo*lo==value else Q(k+1,scale))


def point(z):
    if len(z)!=2: raise ValueError('complex pair required')
    return tuple(map(r.rational,z))


def cadd(a,b): return (a[0]+b[0],a[1]+b[1])
def cscale(a,q): return (a[0]*q,a[1]*q)
def cmul(a,b): return (a[0]*b[0]-a[1]*b[1],a[0]*b[1]+a[1]*b[0])
def abs2(a): return a[0]*a[0]+a[1]*a[1]


def cdiv(a,b):
    den=abs2(b)
    if not den: raise ZeroDivisionError('zero complex divisor')
    return cscale(cmul(a,(b[0],-b[1])),1/den)


def midpoint_sqrt(z):
    """Proposal only; independent Rouche inequalities certify its use."""
    x,y=point(z);norm=sqrt_interval(x*x+y*y);v=(norm.lo+norm.hi)/2
    re=sqrt_interval(max(Q(0),(v+x)/2));im=sqrt_interval(max(Q(0),(v-x)/2))
    return ((re.lo+re.hi)/2,(1 if y>=0 else -1)*(im.lo+im.hi)/2)


def polynomial_value(coeff,z):
    c,b,a=coeff
    return cadd(c,cmul(z,cadd(b,cmul(a,z))))


def quadratic_data(local,radius):
    radius=r.rational(radius)
    if not 0<=radius<local.parameters.radius: raise ValueError('invalid model radius')
    coeff=[];rounding=Q(0)
    for k,a in enumerate(local.coefficients[:3]):
        coeff.append(((a.re.lo+a.re.hi)/2,(a.im.lo+a.im.hi)/2))
        rounding+=(a.re.hi-a.re.lo+a.im.hi-a.im.lo)*radius**k/2
    error=rounding+local.remainder(radius)
    error+=sum((a.upper_abs()*radius**k for k,a in enumerate(local.coefficients) if k>=3),Q(0))
    return tuple(coeff),error


def quadratic_rouche_margin(coeff,error,center,radius):
    """Count one ONLY when its whole disk is inside the error's domain."""
    coeff=tuple(map(point,coeff));center=point(center)
    radius,error=r.rational(radius),r.rational(error)
    if radius<=0 or error<0: raise ValueError('invalid radius or error')
    derivative=cadd(coeff[1],cscale(cmul(coeff[2],center),2))
    return (sqrt_interval(abs2(derivative)).lo*radius
            -sqrt_interval(abs2(polynomial_value(coeff,center))).hi
            -sqrt_interval(abs2(coeff[2])).hi*radius*radius-error)


def quadratic_islands(local,radius):
    """Necessary union, plus separate target counts only on valid subdisks.

    |Delta|>4|a|E gives nearest-root distance <=2E/sqrt(|Delta|).
    Rational centers include separately certified p-root errors. A distant
    root of p is never silently asserted to be a root of F.
    """
    radius=r.rational(radius);coeff,error=quadratic_data(local,radius);c,b,a=coeff
    delta=cadd(cmul(b,b),cscale(cmul(a,c),-4))
    dl=sqrt_interval(abs2(delta)).lo;au=sqrt_interval(abs2(a)).hi
    gate=dl-4*au*error
    result=dict(center=[str(local.sigma),str(local.height)],radius=str(radius),
                error=str(error),discriminant_gap=str(gate),branches=[])
    if not abs2(a) or gate<=0:
        result['status']='UNRESOLVED_DISCRIMINANT; no simplicity or collision conclusion'
        return result
    common=2*error/sqrt_interval(dl).lo
    root=midpoint_sqrt(delta)
    proposed=[cdiv(cadd(cscale(b,-1),cscale(root,sign)),cscale(a,2)) for sign in (1,-1)]
    eta=Q(1,1<<72)
    if abs2(cadd(proposed[0],cscale(proposed[1],-1)))<=(2*eta)**2:
        raise ArithmeticError('p-root disks overlap')
    for z in proposed:
        if quadratic_rouche_margin(coeff,0,z,eta)<=0:
            raise ArithmeticError('p-root approximation not certified')
        u=common+eta;rad=Q(2)**(r.dyadic_floor_power(u)+1)
        norm=sqrt_interval(abs2(z));outside=norm.lo>radius+rad
        inside=norm.hi+rad<=radius
        margin=quadratic_rouche_margin(coeff,error,z,rad) if inside else None
        result['branches'].append(dict(offset=list(map(str,z)),radius=str(rad),
              polynomial_root_error=str(eta),disjoint_from_parent=outside,
              contained_in_parent=inside,
              target_zero_count=1 if inside and margin is not None and margin>0 else None,
              target_margin=str(margin) if margin is not None else None))
    radii=[Q(row['radius']) for row in result['branches']]
    result['stored_disks_disjoint']=abs2(cadd(proposed[0],cscale(proposed[1],-1)))>(sum(radii))**2
    result['status']='NECESSARY_UNION; target counts require individual contained-disk margins'
    return result



def source_tail_schedule(height,tolerance):
    """All-height scalar EM remainder schedule; NOT a zero-free certificate.

    N=ceil(H)+2m+1. On the outer half-radius disks, the source tail is
    <=4(H+1)N/[36**m*(2m-1)]. Bounds contract by <1/18 per increment.
    The finite numeric evaluator's resource limits remain distinct.
    """
    height,tolerance=r.rational(height),r.rational(tolerance)
    if height<0 or tolerance<=0: raise ValueError('invalid height or tolerance')
    ceiling=-((-height.numerator)//height.denominator)
    for m in range(1,4097):
        cutoff=ceiling+2*m+1
        bound=4*(height+1)*cutoff/(Q(36)**m*(2*m-1))
        if bound<=tolerance:
            return dict(height=str(height),tolerance=str(tolerance),cutoff=cutoff,
                        euler_order=m,remainder_bound=str(bound),
                        within_existing_numeric_profile=height<=64 and cutoff<=128 and m<=24,
                        meaning='Source approximation only; no nonvanishing margin supplied')
    raise ArithmeticError('schedule resource limit; no result supplied')


def _domain(domain):
    box=r.Rectangle(*domain)
    if box.xmin!=Q(1,2) or box.xmax!=1 or not 0<=box.ymin<box.ymax<=64:
        raise ValueError('supported slab is [1/2,1] x [lo,hi] inside [0,64]')
    return box


def _root(row,par,domain):
    if type(row) is not dict or set(row)!={'center','radius','margin_power'}:
        raise ValueError('root fields invalid')
    cx,cy=map(r.rational,row['center']);rad=r.rational(row['radius'])
    power=r.integer(row['margin_power'],'root margin',-1000,1000)
    if cx!=Q(1,2) or not 0<rad<min(Q(1,2),cy-domain.ymin,domain.ymax-cy):
        raise ValueError('root disk must fit the slab and be reflection-centered')
    if r.model(cx,cy,par).one_zero_margin(rad)<Q(2)**power:
        raise ArithmeticError('root existence/count margin not reproduced')
    return cx,cy,rad


def build_atlas(domain=('1/2','1','129/4','40'),centers=('527/16','601/16'),
                par=None,max_depth=22,max_leaves=4096):
    par=r.Parameters() if par is None else par
    if not isinstance(par,r.Parameters): raise TypeError('Parameters required')
    box=_domain(domain)
    r.integer(max_depth,'max depth',0,28);r.integer(max_leaves,'max leaves',1,8192)
    roots=[]
    for y in centers:
        y=r.rational(y);rad=Q(1,16);margin=r.model(Q(1,2),y,par).one_zero_margin(rad)
        if margin<=0: raise ArithmeticError('uncertified proposed root')
        row=dict(center=['1/2',str(y)],radius=str(rad),margin_power=r.dyadic_floor_power(margin))
        _root(row,par,box);roots.append(row)
    parsed=[_root(x,par,box) for x in roots]
    if any(abs(y-v)<=rr+ss for i,(_,y,rr) in enumerate(parsed) for _,v,ss in parsed[i+1:]):
        raise ValueError('overlapping root disks')
    leaves=[]
    def visit(cell,path):
        for i,disk in enumerate(parsed):
            if cell.inside_disk(*disk):
                leaves.append(dict(path=path,kind='root',root=i));return
        if cell.radius()<par.radius:
            local=r.model(*cell.center(),par)
            for kind in ('quartic','phase','triangle'):
                margin,q=_leaf_margin(local,cell,kind)
                if margin>0:
                    row=dict(path=path,kind=kind,margin_power=r.dyadic_floor_power(margin))
                    if q is not None: row['direction']=q
                    leaves.append(row);return
        if len(path)>=max_depth or len(leaves)+len(path)+2>=max_leaves:
            leaves.append(dict(path=path,kind='unresolved',reason='resource_limit'));return
        a,b=cell.split();visit(a,path+'0');visit(b,path+'1')
    visit(box,'')
    return dict(schema=SCHEMA,function=SOURCE,scope=SCOPE,domain=box.json(),
                parameters=par.json(),roots=roots,leaves=leaves,native_lean_admission=False)


def _leaf_margin(local,box,kind,direction=None):
    if kind=='triangle': return local.zero_free_margin(box.radius()),None
    if kind=='quartic':
        data=quartic.quadratic_candidate(local,box)
        return Q(data['bernstein_lower_bound']),None
    if kind=='phase':
        val,q,_=phase.phase_margin(local,box,4,direction)
        return val,list(map(str,q))
    raise ValueError('unknown exclusion type')


def verify_atlas(record):
    fields={'schema','function','scope','domain','parameters','roots','leaves','native_lean_admission'}
    if type(record) is not dict or set(record)!=fields: raise ValueError('atlas fields invalid')
    if record['schema']!=SCHEMA or record['function']!=SOURCE or record['scope']!=SCOPE:
        raise ValueError('wrong source/schema/scope')
    if record['native_lean_admission'] is not False: raise ValueError('no native admission')
    par=r.Parameters(**record['parameters']);domain=_domain(record['domain'])
    if type(record['roots']) is not list or len(record['roots'])>32: raise ValueError('invalid roots')
    parsed=[_root(x,par,domain) for x in record['roots']]
    if any(abs(y-v)<=rr+ss for i,(_,y,rr) in enumerate(parsed) for _,v,ss in parsed[i+1:]):
        raise ValueError('overlapping root disks')
    if type(record['leaves']) is not list or not 1<=len(record['leaves'])<=8192:
        raise ValueError('invalid leaf list')
    trie=phase.make_trie(record['leaves']);counts=Counter();unknown=[];areas=Counter()
    def walk(node,box):
        if 'leaf' not in node:
            a,b=box.split();walk(node['0'],a);walk(node['1'],b);return
        row=node['leaf'];kind=row.get('kind');base={'path','kind'}
        if kind=='root':
            if set(row)!=base|{'root'}: raise ValueError('root leaf fields')
            i=r.integer(row['root'],'root index',0,len(parsed)-1)
            if not box.inside_disk(*parsed[i]): raise ArithmeticError('false whole-cell containment')
        elif kind=='unresolved':
            if set(row)!=base|{'reason'} or row['reason']!='resource_limit':
                raise ValueError('unresolved fields invalid')
            unknown.append(box.json())
        elif kind in ('quartic','phase','triangle'):
            expected=base|{'margin_power'}|({'direction'} if kind=='phase' else set())
            if set(row)!=expected: raise ValueError('exclusion fields invalid')
            power=r.integer(row['margin_power'],'margin',-1000,1000)
            if box.radius()>=par.radius: raise ValueError('cell exceeds analytic disk')
            val,_=_leaf_margin(r.model(*box.center(),par),box,kind,row.get('direction'))
            if val<Q(2)**power: raise ArithmeticError('exclusion margin not reproduced')
        else: raise ValueError('unknown cell type')
        counts[kind]+=1;areas[kind]+=(box.xmax-box.xmin)*(box.ymax-box.ymin)
    walk(trie,domain)
    return dict(verified_partition=True,complete_zero_localization=not unknown,
                counts=dict(counts),areas={k:str(v) for k,v in areas.items()},
                unresolved_rectangles=unknown,total_cells=sum(counts.values()),
                positive_zero_count=len(parsed) if not unknown else None,
                counted_positive_disks=len(parsed),
                zero_location='Re(s)=1/2 by xi reflection and count one' if not unknown else 'Unresolved cells retained; no complete zero count',
                domain=domain.json(),proof_grade='Written classical analysis and exact finite arithmetic; not Lean')



def validate_chain(base_domain,slabs):
    base=r.Rectangle(*base_domain)
    if base.xmin!=Q(1,2) or base.xmax!=1 or base.ymin!=0:
        raise ValueError('invalid baseline rectangle')
    end=base.ymax
    for slab in slabs:
        box=_domain(slab['domain'])
        if box.ymin!=end: raise ValueError('gap, duplicate slab, or out-of-order boundary')
        end=box.ymax
    return end


def verify_joined(record,root):
    fields={'schema','baseline','slabs','native_lean_admission'}
    if type(record) is not dict or set(record)!=fields or record['schema']!='joined-zeta-atlas-v1':
        raise ValueError('invalid joined atlas schema')
    if record['native_lean_admission'] is not False: raise ValueError('no native admission')
    base=record['baseline']
    fixed='evidence/number-theory/zeta/phase-aware-cover-20261014.json'
    if type(base) is not dict or set(base)!={'path','sha256'} or base['path']!=fixed:
        raise ValueError('unsupported baseline path')
    raw=(Path(root)/fixed).read_bytes()
    if hashlib.sha256(raw).hexdigest()!=base['sha256']: raise ValueError('baseline source changed')
    original=json.loads(raw)
    if type(record['slabs']) is not list or len(record['slabs'])>32: raise ValueError('invalid slab list')
    end=validate_chain(original['domain'],record['slabs'])
    baseline=phase.verify_cover(original)
    reports=[verify_atlas(row) for row in record['slabs']]
    complete=all(row['complete_zero_localization'] for row in reports)
    total=baseline['positive_zero_count']+sum(row['counted_positive_disks'] for row in reports)
    return dict(complete_zero_localization=complete,height=str(end),
                positive_zero_count=total if complete else None,
                full_strip_zero_count=2*total if complete else None,
                baseline=baseline,slabs=reports,
                scope='Finite local atlas only; no all-height exclusion, Lean admission, or bilinear-energy bound')


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--verify',type=Path);parser.add_argument('--output',type=Path)
    parser.add_argument('--lower',default='129/4');parser.add_argument('--upper',default='40')
    parser.add_argument('--center',action='append');parser.add_argument('--max-depth',type=int,default=22)
    args=parser.parse_args()
    try:
        if args.verify: record=json.loads(args.verify.read_text())
        else:
            record=build_atlas(('1/2','1',args.lower,args.upper),
                args.center if args.center is not None else ('527/16','601/16'),max_depth=args.max_depth)
        report=(verify_joined(record,Path(__file__).resolve().parents[1])
                if record.get('schema')=='joined-zeta-atlas-v1' else verify_atlas(record))
        if args.output: args.output.write_text(json.dumps(record,separators=(',',':'))+'\n')
        print(json.dumps(report,indent=2))
    except (ValueError,TypeError,ArithmeticError,KeyError,OSError) as error:
        parser.exit(2,f'error: {error}\n')

if __name__=='__main__': main()
