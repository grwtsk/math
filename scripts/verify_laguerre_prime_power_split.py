#!/usr/bin/env python3
"""Pinned prime-power split replay. No network, Git writes, or proof promotion.
Direction: R.A. Jacob Martone. Implementation: OpenAI ChatGPT. MIT.
"""
from fractions import Fraction as Q
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time
import laguerre_prime_power_split as p

ROOT = Path(__file__).resolve().parents[1]
EV = 'evidence/number-theory/zeta/laguerre-prime-powers-20261015'
MANIFEST_SHA256 = 'e53b3508c931687cfb6a9e9ae07577f71276b282fd93eae823c1404c121e619a'
CHANNELS = ('original', 'prime_only', 'carrier', 'compensated_prime', 'square_atoms',
            'higher_power_atoms', 'square_centered', 'constant', 'residual')


def require(ok, message):
    if not ok:
        raise ValueError(message)


def unique(pairs):
    out = {}
    for key, value in pairs:
        require(key not in out, 'duplicate JSON key')
        out[key] = value
    return out


def reject(value):
    raise ValueError('nonexact JSON number')


def decode(text):
    return json.loads(text, object_pairs_hook=unique, parse_float=reject, parse_constant=reject)


def bounds(x):
    require(type(x) is dict and set(x) == {'lower', 'upper'}, 'exact interval record required')
    for v in x.values():
        require(type(v) is str and len(v) < 16000, 'bounded rational string required')
    lo, hi = Q(x['lower']), Q(x['upper'])
    require(lo <= hi, 'reversed interval')
    return lo, hi


def validate(r, cutoff, bits, count=16):
    require(type(r) is dict and r['schema'] == 'laguerre-prime-power-profile-v1', 'schema mismatch')
    for name, value in [('count', count), ('cutoff', cutoff), ('working_bits', bits), ('output_grid_bits', 160),
                        ('source_comparison_boxes', count)]:
        require(type(r[name]) is int and r[name] == value, 'invalid profile '+name)
    require(r['source_pins'] == p.PINS, 'source identity mismatch')
    for name in ('RH_proved', 'all_depth_prime_bound', 'native_Lean_admission', 'new_zero_exclusion', 'enormous_cutoff_enumerated'):
        require(r[name] is False, 'unsupported claim '+name)
    inv = r['inventory']; actual = p.prime_power_classes(cutoff)
    require(inv['classes'] == [list(x) for x in actual], 'incomplete prime-power classes')
    expected = {'prime_power_count': len(actual), 'prime_count': sum(j == 1 for _, _, j in actual),
                'square_count': sum(j == 2 for _, _, j in actual),
                'higher_power_count': sum(j >= 3 for _, _, j in actual), 'factorization_checked_through': cutoff}
    for name, value in expected.items():
        require(type(inv[name]) is int and inv[name] == value, 'inventory count mismatch')
    digest = hashlib.sha256(''.join(f'{n}:{b}:{j}\n' for n, b, j in actual).encode()).hexdigest()
    require(inv['sha256'] == digest, 'inventory hash mismatch')
    require(inv['touching_label_retained'] is True and inv['touching_feature_exact_zero'] is True, 'endpoint lost')
    require(set(r['moments']) == set(r['energies']) == set(CHANNELS), 'missing or altered channel')
    vectors = {}
    for name in CHANNELS:
        row = r['moments'][name]
        require(type(row) is list and len(row) == count, 'incomplete moment prefix')
        vectors[name] = [p.I(*bounds(x), 160) for x in row]
        require(p.e.energy(vectors[name]).record() == r['energies'][name], 'incorrect energy '+name)
    def overlap(a, b):
        return max(a.lo, b.lo) <= min(a.hi, b.hi)
    for u, v, w in zip(vectors['original'], vectors['compensated_prime'], vectors['residual']):
        require(overlap(u, v+w), 'incorrect source reconstruction')
    for v, base, carrier in zip(vectors['compensated_prime'], vectors['prime_only'], vectors['carrier']):
        require(overlap(v, base+carrier), 'critical carrier lost')
    mixed = 2*sum((v*w for v, w in zip(vectors['compensated_prime'], vectors['residual'])), p.I.point(0, 160))
    require(mixed.record() == r['mixed_compensated_residual'], 'mixed term altered')
    require(bounds(r['energies']['residual'])[1] < 2000, 'unpaid residual')
    require(bounds(r['energies']['higher_power_atoms'])[1] < 81, 'unpaid higher powers')
    require(bounds(r['energies']['square_atoms'])[1] < 36*count, 'unpaid squares')
    require(bounds(r['energies']['square_centered'])[1] < 1125, 'unpaid square error')
    return r


def check_pins():
    raw = (ROOT/EV/'inputs.json').read_bytes()
    require(hashlib.sha256(raw).hexdigest() == MANIFEST_SHA256, 'manifest drift')
    m = decode(raw)
    for name, sha in m['inputs'].items():
        relative = Path(name)
        require(not relative.is_absolute() and '..' not in relative.parts, 'unsafe input path')
        path = ROOT/relative
        require(not any(x.is_symlink() for x in (path, *path.parents)), 'symlink input')
        require(hashlib.sha256(path.read_bytes()).hexdigest() == sha, 'input drift '+name)
    return m


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--mode', choices=('normal', 'optimized', 'both'), default='both')
    args = parser.parse_args(); modes = ['normal', 'optimized'] if args.mode == 'both' else [args.mode]
    report = {'schema': 'prime-power-split-replay-v1', 'status': 'STARTED', 'steps': [],
              'RH_proved': False, 'all_depth_prime_bound': False, 'native_Lean': 'NOT_RUN',
              'external_PNT_proof_replayed': False, 'whole_repository_checks': 'NOT_RUN',
              'old_128_moment_profiles_replayed': False}
    own = hashlib.sha256(Path(__file__).read_bytes()).hexdigest(); start = time.monotonic(); outputs = {}
    try:
        report['inputs'] = check_pins(); report['runner_sha256'] = own
        suites = [('split-tests', 'test_laguerre_prime_power_split.py', 32),
                  ('receipt-tests', 'test_laguerre_prime_power_replay.py', 12),
                  ('source-tests', 'test_arithmetic_quotient_sections.py', 30),
                  ('energy-tests', 'test_laguerre_discrepancy_energy.py', 38)]
        jobs = [(label, ['-m', 'unittest', 'discover', '-s', 'tests', '-p', name, '-v'], n)
                for label, name, n in suites]
        jobs += [('budgets', ['scripts/laguerre_prime_power_split.py', '--budgets'], None)]
        jobs += [(f'{x}-{b}', ['scripts/laguerre_prime_power_split.py', '--cutoff', str(x), '--bits', str(b)], None)
                 for x in (1024, 4096) for b in (192, 256)]
        for mode in modes:
            for label, rest, tests in jobs:
                cmd = [sys.executable, '-B']+(['-O'] if mode == 'optimized' else [])+rest
                step = {'mode': mode, 'label': label, 'argv': cmd}; report['steps'].append(step)
                try:
                    run = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, timeout=150)
                except subprocess.TimeoutExpired as ex:
                    def text(x): return x.decode(errors='replace') if isinstance(x, bytes) else x or ''
                    step.update(status='TIMEOUT', stdout=text(ex.stdout), stderr=text(ex.stderr))
                    raise ValueError('subprocess timeout '+label)
                step.update(exit_code=run.returncode, stdout=run.stdout, stderr=run.stderr)
                require(run.returncode == 0, 'child failure '+label)
                if tests:
                    require(f'Ran {tests} tests' in run.stderr and run.stderr.rstrip().endswith('OK'), 'test inventory mismatch')
                    step['tests'] = tests
                else:
                    value = decode(run.stdout)
                    if label == 'budgets':
                        require(value == p.budget_report(), 'incorrect scalar budget')
                    else:
                        x, b = map(int, label.split('-')); validate(value, x, b)
                    outputs[mode, label] = value
                    step['stdout_sha256'] = hashlib.sha256(run.stdout.encode()).hexdigest()
                step['status'] = 'PASSED'
        for mode in modes:
            for cutoff in (1024, 4096):
                x, y = outputs[mode, f'{cutoff}-192'], outputs[mode, f'{cutoff}-256']
                for name in CHANNELS:
                    for a, b in zip(x['moments'][name], y['moments'][name]):
                        al, au = bounds(a); bl, bu = bounds(b)
                        require(max(al, bl) <= min(au, bu), 'cross-precision disagreement')
        if len(modes) == 2:
            for label, _, n in jobs:
                if n is None:
                    require(outputs['normal', label] == outputs['optimized', label], 'mode disagreement')
        check_pins(); require(hashlib.sha256(Path(__file__).read_bytes()).hexdigest() == own, 'runner drift')
        report.update(status='PASSED', tests_per_mode=sum(n for _, _, n in suites),
                      completed_subprocesses=len(report['steps']), cross_precision_boxes_per_mode=288,
                      prior_numerical_diagnostics_per_mode=3)
    except Exception as ex:
        report.update(status='FAILED', error=f'{type(ex).__name__}: {ex}')
    report['wall_seconds'] = str(round(time.monotonic()-start, 6))
    print(json.dumps(report, sort_keys=True, indent=2))
    return 0 if report['status'] == 'PASSED' else 1


if __name__ == '__main__':
    raise SystemExit(main())
