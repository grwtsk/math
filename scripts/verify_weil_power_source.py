#!/usr/bin/env python3
"""Pinned replay of compact-power budgets and actual Weil source tests.

No network, Git write, extraction, dependency installation or Lean admission.
Existing receipts are not overwritten. Git history, not this runner, anchors pins.
Human direction: grwtsk contributors. Implementation: OpenAI ChatGPT. MIT.
"""
from __future__ import annotations
import argparse, hashlib, io, json, lzma, platform, re, subprocess, sys, tarfile
from fractions import Fraction as Q
from pathlib import Path, PurePosixPath
ROOT=Path(__file__).resolve().parents[1]
BASE='evidence/analysis/weil-prime-discrepancy-20261015'
PIN='ebfe85c01dcf166ff033760305a902b93afabf7cbe0f82ef4b3a8579a94d4949'


def unique(pairs):
    out={}
    for k,v in pairs:
        if k in out:raise ValueError('duplicate JSON key')
        out[k]=v
    return out


def decode(b):
    def bad(x):raise ValueError('nonfinite JSON')
    return json.loads(b,object_pairs_hook=unique,parse_constant=bad)


def digest(b):return hashlib.sha256(b).hexdigest()


def load_pins(root=ROOT):
    b=(root/BASE/'inputs.json').read_bytes()
    if digest(b)!=PIN:raise ValueError('pin manifest changed')
    return decode(b)


def check_inputs(rows,root=ROOT):
    for name,record in rows.items():
        p=PurePosixPath(name)
        if p.is_absolute() or '..' in p.parts or not p.parts:raise ValueError('unsafe input path')
        f=root/p
        if not f.is_file() or any(q.is_symlink() for q in [f,*f.parents]):raise ValueError('missing or symlink input')
        b=f.read_bytes()
        if len(b)!=record['bytes'] or digest(b)!=record['sha256']:raise ValueError('input hash mismatch: '+name)


def archive_members(root=ROOT):
    index=decode((root/BASE/'original-index.json').read_bytes())
    b=(root/BASE/'original-compact-power.tar.xz').read_bytes()
    if digest(b)!=index['sha256']:raise ValueError('archive digest mismatch')
    raw=lzma.decompress(b)
    if len(raw)>2_000_000:raise ValueError('archive size budget')
    out={}
    with tarfile.open(fileobj=io.BytesIO(raw),mode='r:') as t:
        for item in t.getmembers():
            if not item.isfile() or item.name in out:raise ValueError('nonregular or duplicate archive entry')
            path=PurePosixPath(item.name)
            if path.is_absolute() or '..' in path.parts:raise ValueError('unsafe archive member')
            data=t.extractfile(item).read()
            if index['members'].get(item.name)!={'bytes':len(data),'sha256':digest(data)}:raise ValueError('archive member mismatch')
            out[item.name]=data
    if set(out)!=set(index['members']):raise ValueError('incomplete archive')
    # Active copies are byte-identical to the original proposed files.
    for p in ('scripts/weil_compact_power.py','tests/test_weil_compact_power.py',
              'evidence/analysis/weil-compact-power-20261015/derivation.txt'):
        if (root/p).read_bytes()!=out[p]:raise ValueError('original active copy changed')
    return out


def validate_source(d):
    if d.get('schema')!='weil-prime-discrepancy-v1' or len(d.get('profiles',[]))!=3:raise ValueError('source schema/inventory')
    for k in ('RH','native_Lean','uniform_source_lower_bound'):
        if d.get(k) is not False:raise ValueError('unsupported source status')
    if [r['A'] for r in d['profiles']]!=['1/2','1','2']:raise ValueError('test inventory changed')
    for r in d['profiles']:
        lo,hi=map(Q,r['whole_weil_form'])
        if not 0<lo<=hi:raise ValueError('positive test certificate failed')
        if r['pole_exact_value']!='0':raise ValueError('pole identity changed')
        for k in ('RH','native_Lean','new_zero_region','all_support_lower_growth'):
            if r[k] is not False:raise ValueError('unsupported profile claim')


def overlap(d,e):
    for x,y in zip(d['profiles'],e['profiles'],strict=True):
        for key in ('signed_discrepancy','closed_floor_discrepancy','positive_kernel','whole_weil_form','archimedean_term','prime_term'):
            a,b=map(Q,x[key]);c,f=map(Q,y[key])
            if not a<=b or not c<=f or max(a,c)>min(b,f):raise ValueError('precision intervals disagree')


def run(out):
    rows=load_pins();check_inputs(rows);members=archive_members()
    own=Path(__file__).read_bytes()
    out.mkdir(parents=True,exist_ok=False)
    report={'schema':'weil-power-source-replay-v1','status':'RUNNING','steps':[],
            'native_Lean':'NOT_RUN','RH':False,'python':platform.python_version()}
    path=out/'replay.json'
    def save():path.write_text(json.dumps(report,indent=2,sort_keys=True,allow_nan=False)+'\n')
    def child(name,argv):
        try:
            p=subprocess.run(argv,cwd=ROOT,capture_output=True,text=True,timeout=120)
            entry={'name':name,'command':argv,'returncode':p.returncode,'stdout':p.stdout,'stderr':p.stderr}
        except subprocess.TimeoutExpired as e:
            entry={'name':name,'returncode':None,'timeout':True,
                   'stdout':str(e.stdout or ''),'stderr':str(e.stderr or '')}
        report['steps'].append(entry);save()
        if entry['returncode']!=0:raise RuntimeError('failed child: '+name)
        return entry
    try:
        source={};power={}
        suites={'test_weil_compact_power.py':35,'test_finite_hermite_isolation.py':34,
                'test_weil_spectral_lower_bounds.py':33,'test_weil_prime_discrepancy.py':33,
                'test_verify_weil_power_source.py':12}
        for mode,opts in [('normal',[]),('optimized',['-O'])]:
            py=[sys.executable,*opts,'-B']
            for filename,count in suites.items():
                v=child(mode+'/'+filename,py+['-m','unittest','discover','-s','tests','-p',filename])
                counts=re.findall(r'Ran (\d+) tests? in ',v['stderr'])
                if counts!=[str(count)] or not v['stderr'].rstrip().endswith('OK'):raise ValueError('test inventory or result mismatch')
            dest=out/f'power-{mode}.json'
            child(mode+'/power',py+['scripts/weil_compact_power.py','--output',str(dest)])
            power[mode]=dest.read_bytes()
            expected=members['evidence/analysis/weil-compact-power-20261015/certificates.json']
            if power[mode]!=expected:raise ValueError('pending profile output changed')
            for bits in (160,192):
                dest=out/f'source-{mode}-{bits}.json'
                child(mode+f'/source-{bits}',py+['scripts/weil_prime_discrepancy.py','--bits',str(bits),'--terms','512','--output',str(dest)])
                source[mode,bits]=dest.read_bytes();validate_source(decode(source[mode,bits]))
        if power['normal']!=power['optimized']:raise ValueError('power modes disagree')
        for bits in (160,192):
            if source['normal',bits]!=source['optimized',bits]:raise ValueError('source modes disagree')
        overlap(decode(source['normal',160]),decode(source['normal',192]))
        check_inputs(rows)
        if own!=Path(__file__).read_bytes():raise ValueError('runner changed during replay')
        report.update(status='PASSED_FINITE_REPLAY_WRITTEN_ANALYSIS_NOT_NATIVE',tests_per_mode=sum(suites.values()),
          successful_subprocesses=len(report['steps']),source_outputs={f'{m}-{b}':decode(v) for (m,b),v in source.items()},
          output_hashes={p.name:digest(p.read_bytes()) for p in out.glob('*.json') if p.name!='replay.json'},
          original_archive_members=len(members),all_support_lower_growth=False,new_zero_region=False)
        save();return report
    except Exception as e:
        report.update(status='FAILED_OR_BLOCKED_NO_MATHEMATICAL_ACCEPTANCE',error=f'{type(e).__name__}: {e}')
        save();raise


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output-dir',required=True,type=Path)
    a=p.parse_args();out=a.output_dir.resolve()
    if out.exists():raise FileExistsError('output directory must be new')
    r=run(out);print(json.dumps({k:r[k] for k in ('status','tests_per_mode','successful_subprocesses','RH','native_Lean')},sort_keys=True))


if __name__=='__main__':main()
