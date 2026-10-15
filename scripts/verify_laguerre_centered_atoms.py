#!/usr/bin/env python3
"""Pinned replay of centered-atom source accounting. No network or Git writes.
Direction: grwtsk contributors. Implementation: OpenAI ChatGPT. MIT.
"""
import argparse
from fractions import Fraction as Q
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time
import verify_laguerre_discrepancy_energy as parent
import laguerre_centered_atoms as producer

ROOT=Path(__file__).resolve().parents[1]
EV='evidence/number-theory/zeta/laguerre-centered-atoms-20261015'
MANIFEST_SHA256='3953d5a2b3b79fbc57430a5ae477075ab279797712b39acadc11a1d09bc56496'


def require(ok,message):
    if not ok:raise ValueError(message)


def pins():
    parent.pin_inputs()
    raw=(ROOT/EV/'inputs.json').read_bytes()
    require(hashlib.sha256(raw).hexdigest()==MANIFEST_SHA256,'manifest drift')
    m=parent.decode(raw)
    for name,sha in m['inputs'].items():
        p=Path(name)
        require(not p.is_absolute() and '..' not in p.parts,'unsafe input path')
        target=ROOT/p
        require(not any(q.is_symlink() for q in (target,*target.parents)),'symlink input')
        require(hashlib.sha256(target.read_bytes()).hexdigest()==sha,'input drift: '+name)
    return m


def validate(r,cutoff,bits):
    require(r['schema']=='laguerre-centered-atoms-v1','wrong schema')
    for key,val in [('coefficient_count',8),('cutoff',cutoff),('working_bits',bits),('output_grid_bits',160)]:
        require(type(r[key]) is int and r[key]==val,'wrong integer profile '+key)
    require(r['source_pins']==producer.PINS,'wrong source pins')
    for key in ['RH_proved','all_depth_cross_bound','new_zero_exclusion','native_Lean_admission']:
        require(r[key] is False,'unsupported mathematical claim')
    inv=r['atom_inventory']
    for key,val in [('first',2),('last',cutoff),('count',cutoff-1),('factorization_checked_through',cutoff)]:
        require(type(inv[key]) is int and inv[key]==val,'incomplete atom inventory')
    require(inv['touching_atom_kept'] is True and inv['touching_feature_exact_zero'] is True,'endpoint removed')
    require(inv['non_prime_powers_kept_with_weight_minus_one']+inv['prime_power_count']==cutoff-1,'density labels removed')
    require(r['ordered_cross_term_count']==(cutoff-1)*(cutoff-2),'missing mixed orders')
    require(r['finite_atom_Bessel_checks']==cutoff-1 and r['source_comparison_boxes']==8,'incomplete comparisons')
    for field in ['step_moments','fractional_moments','source_moments']:
        require(len(r[field])==8,'incomplete coefficient prefix')
        for box in r[field]:parent.bounds(box)
    def bound(name):return parent.bounds(r[name])
    require(bound('diagonal')[0]>=0,'negative diagonal')
    require(bound('diagonal')[1]<=bound('full_function_diagonal_majorant')[1], 'unpaid diagonal')
    require(bound('full_function_diagonal_majorant')[1]<bound('analytic_diagonal_majorant')[0], 'diagonal budget failed')
    require(0<=bound('fractional_energy')[0]<=bound('fractional_energy')[1]<Q(1,2),'mesh budget failed')
    def intersects(x,y):return max(x[0],y[0])<=min(x[1],y[1])
    d,x=bound('diagonal'),bound('ordered_cross')
    require(intersects((d[0]+x[0],d[1]+x[1]),bound('step_energy')),'cross identity failed')
    fields=['diagonal','ordered_cross','mixed_fractional','fractional_energy']
    require(intersects((sum(bound(k)[0] for k in fields),sum(bound(k)[1] for k in fields)),bound('source_energy')),
            'complete source energy failed')
    require(bound('source_energy')[1]<Q(21,100),'finite head bound failed')
    return r


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--mode',choices=['normal','optimized','both'],default='both')
    args=ap.parse_args();modes=['normal','optimized'] if args.mode=='both' else [args.mode]
    report={'schema':'centered-atoms-replay-v1','status':'STARTED','steps':[],
            'RH_proved':False,'all_depth_cross_bound':False,'native_Lean':'NOT_RUN',
            'full_repository_checks':'NOT_RUN','remote_publication':'NOT_PERFORMED'}
    t0=time.monotonic();out={};own=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    try:
        report['inputs']=pins();report['runner_sha256']=own
        for mode in modes:
            jobs=[('tests',['-m','unittest','discover','-s','tests','-p','test_laguerre_centered_atoms.py','-v'])]
            jobs += [(f'{X}-{b}',['scripts/laguerre_centered_atoms.py','--cutoff',str(X),'--bits',str(b)])
                     for X in [256,1024] for b in [192,256]]
            for label,rest in jobs:
                cmd=[sys.executable,'-B']+(['-O'] if mode=='optimized' else [])+rest
                step={'mode':mode,'label':label,'argv':cmd};report['steps'].append(step)
                try:
                    p=subprocess.run(cmd,cwd=ROOT,capture_output=True,text=True,timeout=150)
                except subprocess.TimeoutExpired as err:
                    def text(x):return x.decode(errors='replace') if isinstance(x,bytes) else x or ''
                    step.update(status='TIMEOUT',stdout=text(err.stdout),stderr=text(err.stderr))
                    raise ValueError('timed out: '+label)
                step.update(exit_code=p.returncode,stdout=p.stdout,stderr=p.stderr)
                require(p.returncode==0,'child failed '+label)
                if label=='tests':
                    require('Ran 26 tests' in p.stderr and p.stderr.rstrip().endswith('OK'),'test inventory mismatch')
                    step['tests']=26
                else:
                    X,b=map(int,label.split('-'));out[mode,X,b]=validate(parent.decode(p.stdout),X,b)
                    step['stdout_sha256']=hashlib.sha256(p.stdout.encode()).hexdigest()
                step['status']='PASSED'
        for mode in modes:
            for X in [256,1024]:
                a,b=out[mode,X,192],out[mode,X,256]
                for field in ['step_moments','fractional_moments','source_moments']:
                    for x,y in zip(a[field],b[field]):
                        xl,xu=parent.bounds(x);yl,yu=parent.bounds(y)
                        require(max(xl,yl)<=min(xu,yu),'cross precision mismatch')
        if len(modes)==2:
            for X in [256,1024]:
                for bits in [192,256]:require(out['normal',X,bits]==out['optimized',X,bits],'mode drift')
        pins();require(hashlib.sha256(Path(__file__).read_bytes()).hexdigest()==own,'runner changed')
        report.update(status='PASSED',tests_per_mode=26,completed_subprocesses=len(report['steps']),
                      cross_precision_moment_boxes_per_mode=48,within_profile_mode_equality=len(modes)==2)
    except Exception as err:
        report.update(status='FAILED',error=f'{type(err).__name__}: {err}')
    report['wall_seconds']=round(time.monotonic()-t0,6)
    print(json.dumps(report,sort_keys=True,indent=2))
    return 0 if report['status']=='PASSED' else 1


if __name__=='__main__':raise SystemExit(main())
