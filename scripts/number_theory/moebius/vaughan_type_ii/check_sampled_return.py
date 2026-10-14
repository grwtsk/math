#!/usr/bin/env python3
"""Replay the source-bound Vaughan Type-II sampled return from public inputs.

This versioned repository runner replaces the handoff archive as an execution
dependency. It verifies the complete maintained executable/fixture closure,
runs ordinary and optimized tests and calculations, and compares complete
numeric output bytes. It does not certify the paper proofs, Lean acceptance,
the open all-scale estimate, or RH.
"""
from pathlib import Path
import argparse,hashlib,json,subprocess,sys,shutil,time
ROOT=Path(__file__).resolve().parent
REPO_ROOT=ROOT.parents[3]
BINDING=ROOT/'SOURCE_BINDING_V1.json'
REQUIRED_FILES={
    'scripts/number_theory/moebius/vaughan_type_ii/check_sampled_return.py',
    'scripts/number_theory/moebius/vaughan_type_ii/sampled_source.py',
    'scripts/number_theory/moebius/vaughan_type_ii/tests/test_sampling.py',
    'scripts/number_theory/moebius/vaughan_type_ii/inputs/green_discrepancy.py',
    'scripts/number_theory/moebius/vaughan_type_ii/inputs/vaughan_source.py',
    'evidence/NumberTheory/Moebius/VaughanTypeII/previous-centers.json',
}

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def verify_inputs():
    binding=json.loads(BINDING.read_text())
    if binding.get('schema')!='grwtsk-vaughan-typeii-sampled-return-inputs-v1':
        raise ValueError('changed input-binding schema')
    if set(binding.get('files',{}))!=REQUIRED_FILES:
        raise ValueError('incomplete maintained input closure')
    for name,entry in binding['files'].items():
        p=REPO_ROOT/name
        if p.is_symlink() or not p.is_file():
            raise ValueError('unsafe input '+name)
        if p.stat().st_size!=entry['bytes'] or digest(p)!=entry['sha256']:
            raise ValueError('changed input '+name)
    return binding


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--out',required=True,type=Path)
    p.add_argument('--max-exponent',type=int,default=10);a=p.parse_args();a.out=a.out.resolve()
    if not 4<=a.max_exponent<=14:raise ValueError('unsupported finite range')
    a.out.mkdir(parents=True,exist_ok=False)
    before={name:digest(REPO_ROOT/name) for name in sorted(REQUIRED_FILES)}
    binding=verify_inputs();commands=[]
    try:
        for optimized in [False,True]:
            mode='optimized' if optimized else 'normal'
            base=[sys.executable,'-S','-B']+(['-O'] if optimized else [])
            jobs=[('tests',base+['-m','unittest','discover','-s',str(ROOT/'tests'),'-v']),
                  ('source',base+[str(ROOT/'sampled_source.py'),'--out',str(a.out/(mode+'.json')),
                     '--max-exponent',str(a.max_exponent)])]
            for kind,cmd in jobs:
                start=time.monotonic()
                with (a.out/(mode+'-'+kind+'.log')).open('x') as log:
                    proc=subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT,timeout=180,cwd=ROOT)
                commands.append({'mode':mode,'kind':kind,'command':cmd,'returncode':proc.returncode,
                                 'seconds':time.monotonic()-start})
                if proc.returncode:raise RuntimeError('failed '+mode+' '+kind)
        if (a.out/'normal.json').read_bytes()!=(a.out/'optimized.json').read_bytes():
            raise RuntimeError('numeric mode reports differ')
        verify_inputs()
        if before!={name:digest(REPO_ROOT/name) for name in before}:raise RuntimeError('source changed during replay')
        data=json.loads((a.out/'normal.json').read_text())
        numeric_sha256=digest(a.out/'normal.json')
        expected=binding.get('expected_numeric_sha256',{}).get(str(a.max_exponent))
        if expected is not None and numeric_sha256!=expected:
            raise RuntimeError('numeric report differs from untouched package')
        report={'status':'FINITE_SEPARATED_SAMPLE_REPLAY_PASSED','distinct_new_tests':33,
          'test_modes':['ordinary','optimized'],'row_count':len(data['rows']),
          'max_X':1<<a.max_exponent,'coefficient_identities':data['coefficient_identities'],
          'numeric_report_sha256':numeric_sha256,'commands':commands,'source_binding':before,
          'input_binding':{'schema':binding['schema'],'sha256':digest(BINDING)},
          'historical_archive':binding['historical_archive'],
          'repository_packaging':'archive-free versioned input verifier',
          'inherited_test_suites_rerun':False,'kernel_checked':False,
          'compiler_probe':{'lean_on_path':shutil.which('lean'),'lake_on_path':shutil.which('lake'),
                            'compiler_invoked':False},'all_scale_arithmetic_bound':'NOT_ESTABLISHED'}
        (a.out/'report.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    except Exception as e:
        (a.out/'failure.json').write_text(json.dumps({'error':repr(e),'commands':commands},indent=2)+'\n')
        raise
if __name__=='__main__':main()
