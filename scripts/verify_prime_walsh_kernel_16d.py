#!/usr/bin/env python3
"""Exact integer Walsh spectrum and quadratic identity for the *real* C16 beacon code.

This is a source-independent finite computational control, NOT a Lean proof.
The 4096 beacons form ker(H) in F2^16, with columns all F2^4 labels.
A fast Walsh transform evaluates the spatial Gram convolution exactly.
"""
from collections import Counter
import json
import random

N = 4096
PIVOTS = (1, 2, 4, 8)
FREE = tuple(i for i in range(16) if i not in PIVOTS)
assert len(FREE) == 12

def syndrome(word):
    result = 0
    for i in range(16):
        if word & (1 << i):
            result ^= i
    return result

def beacon(rank):
    word = sum(((rank >> k) & 1) << i for k, i in enumerate(FREE))
    parity = syndrome(word)
    return word | sum(((parity >> k) & 1) << i for k, i in enumerate(PIVOTS))

def walsh(signal):
    values = list(signal)
    gap = 1
    while gap < len(values):
        for offset in range(0, len(values), 2 * gap):
            for i in range(offset, offset + gap):
                a, b = values[i], values[i + gap]
                values[i], values[i + gap] = a + b, a - b
        gap <<= 1
    return values

code = [beacon(i) for i in range(N)]
assert len(set(code)) == N and all(syndrome(x) == 0 for x in code)
assert all(x < y for x, y in zip(code, code[1:]))
assert min(x.bit_count() for x in code if x) == 1
even = [x for x in code if x.bit_count() % 2 == 0]
assert len(even) == 2048 and min(x.bit_count() for x in even if x) == 4

kernel = [1 << (16 - x.bit_count()) for x in code]
lam = walsh(kernel)
assert min(lam) > 0
row_masks = [sum(1 << i for i in range(16) if (i >> j) & 1) for j in range(4)]
dual = []
for index in range(16):
    word = 0
    for j in range(4):
        if (index >> j) & 1:
            word ^= row_masks[j]
    dual.append(word)
assert len(set(dual)) == 16
for index in range(N):
    u = sum(((index >> j) & 1) << f for j, f in enumerate(FREE))
    numerator = sum(3 ** (16 - (u ^ v).bit_count()) for v in dual)
    assert numerator % 16 == 0
    assert lam[index] == numerator // 16

rng = random.Random(20261122)
for density in (1, 12, 128, 4096):
    f = [0] * N
    positions = rng.sample(range(N), density)
    for i in positions:
        f[i] = rng.randrange(-4, 5)
    transformed = walsh(f)
    quadratic_numerator = sum(val * val * eig for val, eig in zip(transformed, lam))
    assert quadratic_numerator % N == 0
    energy = quadratic_numerator // N
    if density <= 128:
        direct = sum(f[i] * f[j] * kernel[i ^ j] for i in positions for j in positions)
        assert energy == direct
    assert energy >= 0

print(json.dumps({
    "status": "EXACT_INTEGER_WALSH_PASS",
    "code_dimension": 12,
    "hypercube_dimension": 16,
    "square_side": 64,
    "beacons": N,
    "dual_code_cardinality": len(dual),
    "dual_eigenvalue_matches": N,
    "eigenvalue_min": min(lam),
    "eigenvalue_max": max(lam),
    "distinct_eigenvalues": len(Counter(lam)),
    "full_code_min_distance": 1,
    "even_subcode_cardinality": len(even),
    "even_subcode_min_distance": 4,
    "quadratic_identity_test_signal_counts": [1, 12, 128, 4096],
    "calculation": "exact integer arithmetic; no floating-point",
    "lean_kernel_verification": "NOT_RUN",
    "global_assignment_optimum": "NOT_CERTIFIED",
    "signed_weil_positivity": "NOT_PROVED_BY_THIS_KERNEL",
}, indent=2))
