#!/usr/bin/env python3
"""Replay exact source-section and density checks. No network or Git writes.

Direction: grwtsk contributors. Implementation: OpenAI ChatGPT. MIT.
A passed finite replay does not establish any all-depth arithmetic hypothesis.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile

ROOT=Path(__file__).resolve().parents[1]
EVIDENCE=Path('evidence/number-theory/zeta/density-hankel-20261015')
PINNED_MANIFEST='ceb5effa402e2e9926c985f650c4463a6e22e657679c6572c427c78b3e2b3511'


def digest(raw):return hashlib.sha256(raw).hexdigest()


def unique(pairs):
    out={}
    for k,v in pairs:
        if k in out:raise ValueError('duplicate JSON key: '+k)
        out[k]=v
    return out


def load(raw):
    if len(raw)>16*1024*1024:raise ValueError('report size limit')
    return json.loads(raw,object_pairs_hook=unique,
                      parse_constant=lambda x: (_ for _ in ()).throw(ValueError('invalid number '+x)))


def integrity():
    raw=(ROOT/EVIDENCE/'replay-inputs.json').read_bytes()
    if digest(raw)!=PINNED_MANIFEST:raise ValueError('replay manifest differs from pinned digest')
    manifest=load(raw)
    for rel,pin in manifest['inputs'].items():
        p=Path(rel)
        if p.is_absolute() or '..' in p.parts:raise ValueError('unsafe input path')
        path=ROOT/p
        if path.is_symlink():raise ValueError('symlink input')
        b=path.read_bytes()
        if len(b)!=pin['bytes'] or digest(b)!=pin['sha256']:raise ValueError('input drift: '+rel)
    return manifest


def check_box(v):
    if not isinstance(v,dict) or set(v)!={'lower','upper'}:raise ValueError('interval schema')
    if not isinstance(v['lower'],str) or not isinstance(v['upper'],str):raise ValueError('interval not exact string')
    lo,hi=Q(v['lower']),Q(v['upper'])
    if lo>hi:raise ValueError('reversed report interval')
    return lo,hi


def source_check(r,bits):
    if r['schema']!='arithmetic-quotient-sections-v1':raise ValueError('source schema')
    for key in ['RH_proved','all_depth_bound','native_Lean_admission']:
        if r[key] is not False:raise ValueError('unsupported proof status: '+key)
    if (r['coefficient_count'],r['cutoff'],r['em_order'],r['bits'])!=(32,64,48,bits):
        raise ValueError('source parameter drift')
    for key in ['quotient_coefficients','logarithmic_derivative_coefficients']:
        if len(r[key])!=32:raise ValueError('incomplete source inventory')
        for box in r[key]:check_box(box)
    if [x['size'] for x in r['sections']]!=[1,2,4,8,16]:raise ValueError('section coverage')
    for x in r['sections']:
        if x['highest_coefficient_used']!=2*x['size']-1:raise ValueError('missing terminal coefficient')
        if x['all_depth_bound'] is not False:raise ValueError('all-depth promotion')
        for key in ['toeplitz_norm','hankel_gram_trace','hankel_gram_cubic_trace',
                    'retained_cubic_numerator','relative_cubic_J']:check_box(x[key])
        if Q(x['relative_cubic_J']['upper'])>=Q(1,600):raise ValueError('finite J bound not certified')


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--mode',choices=['normal','optimized','both'],default='both')
    p.add_argument('--integrity-only',action='store_true')
    args=p.parse_args();steps=[]
    report={'schema':'density-hankel-replay-v1','status':'FAILED','steps':steps,
            'remote_repository_modified':False,'RH_proved':False,'all_depth_bound':False,
            'native_Lean':'NOT_RUN','full_repository_checks':'NOT_RUN'}
    before=digest(Path(__file__).read_bytes())
    def run(label,argv,cwd=ROOT):
        try:
            r=subprocess.run(argv,cwd=cwd,capture_output=True,text=True,timeout=120)
            row={'label':label,'argv':argv,'exit_code':r.returncode,'stdout':r.stdout,'stderr':r.stderr}
        except subprocess.TimeoutExpired as ex:
            row={'label':label,'argv':argv,'exit_code':None,'stdout':str(ex.stdout or ''),
                 'stderr':str(ex.stderr or ''),'timeout':True}
        steps.append(row)
        if row['exit_code']!=0:raise RuntimeError('failed subprocess: '+label)
        return row
    try:
        pins=integrity();report['base_commit']=pins['base_commit'];report['pinned_inputs']=len(pins['inputs'])
        report['source_sha256']={k:v['sha256'] for k,v in pins['inputs'].items()}
        report['runner_sha256']=before
        if args.integrity_only:
            report['status']='INTEGRITY_ONLY'
        else:
            modes=['normal','optimized'] if args.mode=='both' else [args.mode]
            outputs={}
            with tempfile.TemporaryDirectory(prefix='density-hankel-replay-') as temp:
                temp=Path(temp)
                # The historical check writes beside itself; use a copy and preserve archive bytes.
                original=ROOT/EVIDENCE/'historical/check_synthesis.py'
                copy=temp/'check_synthesis.py';shutil.copyfile(original,copy)
                for mode in modes:
                    flags=['-B']+(['-O'] if mode=='optimized' else [])
                    py=[sys.executable,*flags]
                    r=run(mode+'-new-tests',py+['-m','unittest','discover','-s','tests',
                                              '-p','test_arithmetic_quotient_sections.py','-v'])
                    if not re.search(r'Ran 30 tests\b',r['stderr']) or not r['stderr'].rstrip().endswith('OK'):
                        raise ValueError('new test inventory')
                    run(mode+'-historical-tests',py+[str(copy)],temp)
                    filename='algebra-optimized.json' if mode=='optimized' else 'algebra-normal.json'
                    old=load((temp/filename).read_bytes())
                    if (old['status'],old['tests'],old['failures'],old['errors'])!=('PASSED',16,0,0):
                        raise ValueError('historical test inventory')
                    if old['source_sha256']!=digest(original.read_bytes()):raise ValueError('historical source drift')
                    outputs[mode]={}
                    for bits in (256,384):
                        step=run(mode+'-source-'+str(bits),py+['scripts/arithmetic_quotient_sections.py',
                                      '--count','32','--bits',str(bits)])
                        data=load(step['stdout']);source_check(data,bits);outputs[mode][bits]=data
                    for key in ('quotient_coefficients','logarithmic_derivative_coefficients'):
                        for x,y in zip(outputs[mode][256][key],outputs[mode][384][key]):
                            xl,xh=check_box(x);yl,yh=check_box(y)
                            if max(xl,yl)>min(xh,yh):raise ValueError('precision disagreement: '+key)
                    step=run(mode+'-density',py+['scripts/arithmetic_quotient_sections.py','--density-bands'])
                    density=load(step['stdout'])
                    if len(density['rows'])!=300 or Q(density['minimum_margin'])!=Q(8489,589500):
                        raise ValueError('density inventory or margin')
                    if density['density_constant_evaluated'] is not False:raise ValueError('invented density constant')
                    if density['all_height_zero_exclusion'] is not False:raise ValueError('zero-exclusion promotion')
                    outputs[mode]['density']=density
            if len(modes)==2 and outputs['normal']!=outputs['optimized']:
                raise ValueError('normal/optimized source discrepancy')
            integrity()
            if digest(Path(__file__).read_bytes())!=before:raise ValueError('runner changed during replay')
            report.update(status='PASSED',modes=modes,tests_per_mode=46,
                          finite_exact_and_guard_tests_per_mode=43,numerical_diagnostic_tests_per_mode=3,
                          source_coefficients_per_run=32,source_precisions=[256,384],
                          fresh_dyadic_sections=[1,2,4,8,16],J_upper_bound='1/600',
                          all_coefficient_boxes_overlap=True,complete_density_bands=300,
                          density_minimum_margin='8489/589500',
                          analytic_status='WRITTEN_REMAINDER_PROOFS_NOT_KERNEL_CHECKED')
    except Exception as ex:
        report['error']=str(ex)
    print(json.dumps(report,indent=2))
    return 0 if report['status'] in ('PASSED','INTEGRITY_ONLY') else 1


if __name__=='__main__':raise SystemExit(main())
