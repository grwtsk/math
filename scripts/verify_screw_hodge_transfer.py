#!/usr/bin/env python3
"""Replay finite heat/boundary and bilateral error checks. No network or Git writes.

Human mathematical direction: grwtsk contributors. Implementation: OpenAI ChatGPT.
MIT. This verifies executed finite calculations, not continuum or Lean admission.
"""
from __future__ import annotations
import argparse
from fractions import Fraction
import hashlib
import json
from pathlib import Path
import platform
import re
import subprocess
import sys
import time
import screw_hodge_transfer as h

ROOT = Path(__file__).resolve().parents[1]
ARCHIVE = ROOT / 'evidence/analysis/reflected-heat-boundary-20261014'


def descriptor(path):
    data = path.read_bytes()
    return {'bytes': len(data), 'sha256': hashlib.sha256(data).hexdigest()}


def run(mode, evidence):
    flags = ['-O', '-B'] if mode == 'optimized' else ['-B']
    specs = [('finite-tests', ['-m', 'unittest', 'discover', '-s', str(ROOT/'tests'),
                              '-p', 'test_screw_hodge_transfer.py', '-v'])]
    for bits in (160, 192):
        specs.append((f'endpoint-{bits}', [str(ROOT/'scripts/screw_hodge_transfer.py'),
                      '--verify', str(evidence/f'bilateral-4096-{bits}.json')]))
    steps = []
    for name, args in specs:
        command = [sys.executable, *flags, *args]
        start = time.monotonic()
        child = subprocess.run(command, cwd=ROOT, capture_output=True, text=True,
                               timeout=120, check=False)
        step = {'label': name, 'mode': mode, 'argv': command,
                'returncode': child.returncode, 'seconds': time.monotonic()-start,
                'stdout': child.stdout, 'stderr': child.stderr}
        steps.append(step)
        if child.returncode != 0:
            raise RuntimeError(json.dumps({'failed_step': step}))
        if name == 'finite-tests':
            if not re.search(r'Ran 64 tests\b', child.stderr) or not child.stderr.rstrip().endswith('OK'):
                raise RuntimeError('unexpected test count or result')
        else:
            result = json.loads(child.stdout)
            if result != {'verified': True, 'new_zeta_zero_exclusion': False}:
                raise RuntimeError('unexpected endpoint verifier output')
    return steps


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--mode', choices=('normal', 'optimized', 'both'), default='both')
    parser.add_argument('--evidence', type=Path,
                        default=ARCHIVE if ARCHIVE.is_dir() else ROOT/'reports')
    args = parser.parse_args()
    evidence = args.evidence.resolve()
    modes = ('normal', 'optimized') if args.mode == 'both' else (args.mode,)
    names = ['scripts/screw_hodge_transfer.py', 'scripts/verify_screw_hodge_transfer.py',
             'tests/test_screw_hodge_transfer.py']
    bindings = {name: descriptor(ROOT/name) for name in names}
    for bits in (160, 192):
        p = evidence/f'bilateral-4096-{bits}.json'
        bindings[p.name] = descriptor(p)
    initial = dict(bindings)
    steps = [step for mode in modes for step in run(mode, evidence)]
    a = h.read_exact(evidence/'bilateral-4096-160.json')
    b = h.read_exact(evidence/'bilateral-4096-192.json')
    for key in ('at_s_zero_prefix', 'at_s_one_prefix'):
        if max(Fraction(a[key]['lower']), Fraction(b[key]['lower'])) > min(
                Fraction(a[key]['upper']), Fraction(b[key]['upper'])):
            raise ArithmeticError('cross-precision enclosures do not overlap')
    for name in names:
        if descriptor(ROOT/name) != initial[name]:
            raise RuntimeError('source changed during replay')
    for bits in (160, 192):
        p = evidence/f'bilateral-4096-{bits}.json'
        if descriptor(p) != initial[p.name]:
            raise RuntimeError('certificate changed during replay')
    import sympy
    print(json.dumps({'schema': 'screw-hodge-transfer-replay-v1',
                      'python': platform.python_version(), 'sympy': sympy.__version__,
                      'modes': list(modes), 'source_bindings': initial, 'steps': steps,
                      'tests_per_mode': 64, 'independent_mobius_factorization_through': 4096,
                      'cross_precision_overlap': True, 'finite_replay': 'PASSED',
                      'continuum_proofs': 'WRITTEN_NOT_KERNEL_CHECKED',
                      'new_Lean_admissions': 0, 'RH': False,
                      'new_zeta_zero_exclusion': False,
                      'global_positive_boundary_approximation': False}, indent=2, sort_keys=True))


if __name__ == '__main__':
    main()
