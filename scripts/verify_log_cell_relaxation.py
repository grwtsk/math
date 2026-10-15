#!/usr/bin/env python3
"""Replay the logarithmic-cell evidence without promoting its analytic grade.

Human direction: R.A. Jacob Martone. Implementation: OpenAI ChatGPT. MIT.
Run from any working directory. Requires the test dependency recorded alongside
archival evidence. No network, Git write, Lean invocation or source mutation.
"""
from __future__ import annotations

from fractions import Fraction as Q
from pathlib import Path
import argparse
import hashlib
import json
import subprocess
import sys
import time

import log_cell_relaxation as m

ROOT = Path(__file__).resolve().parents[1]
EVIDENCE = ROOT / 'evidence/number-theory/moebius/log-cell-relaxation-20261014'


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def trial_mu(n: int) -> int:
    sign, p = 1, 2
    while p * p <= n:
        if n % p == 0:
            n //= p
            sign = -sign
            if n % p == 0:
                return 0
        p += 1
    return -sign if n > 1 else sign


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--mode', choices=('both', 'normal', 'optimized'), default='both')
    args = parser.parse_args()
    modes = (False, True) if args.mode == 'both' else (args.mode == 'optimized',)
    runs = []
    for optimized in modes:
        prefix = [sys.executable] + (['-O'] if optimized else []) + ['-B']
        commands = [
            ('unit-tests', ['-m', 'unittest', 'discover', '-s', 'tests',
                            '-p', 'test_log_cell_relaxation.py', '-v']),
        ]
        for filename in ('prefix-4096.json', 'prefix-4096-bits-192.json',
                         'residual-operator-4096.json'):
            commands.append((filename, ['scripts/log_cell_relaxation.py',
                                        '--verify', str((EVIDENCE / filename).relative_to(ROOT))]))
        for label, args in commands:
            start = time.monotonic()
            result = subprocess.run(prefix + args, cwd=ROOT, capture_output=True,
                                    check=False, timeout=120)
            row = dict(label=label, optimized=optimized, command=prefix + args,
                       returncode=result.returncode, seconds=time.monotonic() - start,
                       stdout=result.stdout.decode('utf-8'),
                       stderr=result.stderr.decode('utf-8'),
                       stdout_sha256=digest(result.stdout), stderr_sha256=digest(result.stderr))
            runs.append(row)
            print(f'{label} optimized={optimized}: exit={result.returncode}',
                  file=sys.stderr, flush=True)
            require(result.returncode == 0, f'{label} failed: {row["stderr"]}')
            if label == 'unit-tests':
                require('Ran 64 tests' in row['stderr'] and row['stderr'].rstrip().endswith('OK'),
                        'test count or unittest completion mismatch')
            else:
                payload = json.loads(row['stdout'])
                require(payload.get('verified') is True, 'missing replay acceptance')
                require(payload.get('native_lean_admission') is False, 'native promotion')
    mu = m.moebius_sieve(4096)
    require(mu[1:] == [trial_mu(n) for n in range(1, 4097)], 'independent Moebius mismatch')
    # These files have just been fully replayed in the selected interpreter mode(s).
    data = {p: json.loads((EVIDENCE / p).read_text(encoding='utf-8'))
            for p in ('prefix-4096.json', 'prefix-4096-bits-192.json',
                      'residual-operator-4096.json')}
    a, b = data['prefix-4096.json'], data['prefix-4096-bits-192.json']
    for key in ('integrated_energy', 'cell_mean_energy', 'prefix_variance'):
        require(max(Q(a[key]['lower']), Q(b[key]['lower'])) <=
                min(Q(a[key]['upper']), Q(b[key]['upper'])), f'precision mismatch: {key}')
    require(Q(a['all_height_variance_upper']) < Q(533, 25000), 'source residual margin failed')
    op = data['residual-operator-4096.json']
    require(Q(op['linfinity_norm_squared_upper']) < Q(1049, 20000), 'operator norm margin failed')
    require(Q(op['hilbert_schmidt_squared_upper']) < Q(711, 25000), 'trace margin failed')
    files = [ROOT / 'scripts/log_cell_relaxation.py',
             ROOT / 'scripts/verify_log_cell_relaxation.py',
             ROOT / 'tests/test_log_cell_relaxation.py']
    files += [EVIDENCE / name for name in data]
    print(json.dumps(dict(
        schema='log-cell-integration-replay-v1', python=sys.version,
        base_commit='9adf061bf5aa34e65fb8237ed56c766539e22506',
        test_count_per_mode=64, tested_modes=list(modes), runs=runs,
        independent_factorization_through=4096, cross_precision_bits=[160, 192],
        source_residual_bound='533/25000', residual_operator_norm_squared_bound='1049/20000',
        residual_operator_trace_bound='711/25000',
        source_bindings={str(p.relative_to(ROOT)): digest(p.read_bytes()) for p in files},
        native_lean_admission=False, full_signed_energy_bound=False,
        cell_mean_growth_proved=False, all_height_zero_atlas=False,
        whole_repository_checks='NOT_RUN by this scoped replay',
        continuum_proofs='Written analytic derivation; not kernel checked'),
        sort_keys=True, indent=2))


if __name__ == '__main__':
    main()
