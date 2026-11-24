#!/usr/bin/env python3
"""Finite control for the recursive native schedules; not a Lean proof."""
from collections import Counter
import json


def first(s, root):
    x = s & ((1 << root) - 1)
    if root == 3:
        low = ((x >> 1) & 1) | (((x ^ (x >> 1)) & 1) << 1) | (((x >> 2) ^ 1) << 2)
    elif root == 4:
        low = ((x >> 1) & 1) | (((x >> 2) & 1) << 1) | (((x ^ (x >> 1)) & 1) << 2) | (((x >> 3) ^ 1) << 3)
    else:
        raise ValueError(root)
    tail = s >> root
    return low | ((tail ^ (tail >> 1)) << root)


def recursive_first(s, root, m):
    if m == root:
        return first(s, root)
    high = s >> (m - 1)
    old = recursive_first(s & ((1 << (m - 1)) - 1), root, m - 1)
    if m > root + 1:
        old ^= high << (m - 2)
    return old | (high << (m - 1))


def ports(s, root):
    a = first(s, root)
    return a, a ^ 1, s ^ 1


def syndrome(x):
    out = 0
    while x:
        b = x & -x
        out ^= b.bit_length() - 1
        x ^= b
    return out


def check(ok, reason):
    if not ok:
        raise AssertionError(reason)


def main():
    native_cases = []
    tested_syndromes = 0
    checked_cells = 0
    checked_stages = 0
    for root in (3, 4):
        for m in range(root, 17):
            p = 1 << m
            targets = Counter()
            uses = [set(), set(), set()]
            for s in range(p):
                a, b, c = ports(s, root)
                check(recursive_first(s, root, m) == a, (root, m, s, 'closed form'))
                check(max(a, b, c) < p, (root, m, s, 'port range'))
                check(len({s, a, b, c}) == 4, (root, m, s, 'distinct'))
                check(a ^ b ^ c == s, (root, m, s, 'terminal'))
                check(s ^ a ^ b == c, (root, m, s, 'second syndrome'))
                check(s ^ a != 0, (root, m, s, 'first frozen'))
                targets[s ^ a] += 1
                for u, v in zip(uses, (a, b, c)):
                    u.add(v)
                if m < 16:
                    check(recursive_first(s, root, m + 1) == a,
                          (root, m, s, 'successor restriction'))
            expected = 2 if m == root else 4
            check(all(len(u) == p for u in uses), (root, m, 'bijections'))
            check(set(targets.values()) == {expected}, (root, m, 'fiber size'))
            check(len(targets) == p // expected, (root, m, 'image size'))
            tested_syndromes += p
            native_cases.append({'root': root, 'm': m, 'first_max': expected,
                                 'first_image_syndromes': len(targets)})
            # Full vertex enumeration only for the feasible native cubes.
            if m <= 4:
                N = 1 << p
                K = N // p
                loads = [Counter(), Counter(), Counter()]
                primary = Counter()
                port_uses = [Counter(), Counter(), Counter()]
                for x in range(N):
                    s = syndrome(x)
                    a, b, c = ports(s, root)
                    y1 = x ^ (1 << a)
                    y2 = y1 ^ (1 << b)
                    y3 = y2 ^ (1 << c)
                    g = x ^ (1 << s)
                    check(syndrome(y1) != 0 and syndrome(y3) == syndrome(g) == 0,
                          (root, m, x, 'frozen'))
                    check(y3 != g and (x ^ y3).bit_count() == 3,
                          (root, m, x, 'distance'))
                    for k, (y, i) in enumerate(zip((y1, y2, y3), (a, b, c))):
                        loads[k][y] += 1
                        port_uses[k][i] += 1
                    primary[g] += 1
                    # Both successors keep the old port set and literal edges.
                    for target_m in (m + 1, m + 2):
                        z = x
                        t = syndrome(z)
                        a64 = recursive_first(t, root, target_m)
                        q = a64, a64 ^ 1, t ^ 1
                        check(max(q) < 1 << target_m, (root, target_m, x, 'range'))
                        for i, y in zip(q, (y1, y2, y3)):
                            z ^= 1 << i
                            check(z == y, (root, target_m, x, 'commutation'))
                            checked_stages += 1
                check(set(loads[0].values()) == {expected}, (root, m, 'native first'))
                check(len(loads[1]) == N and set(loads[1].values()) == {1}, (root, m, 'native second'))
                check(len(loads[2]) == K and set(loads[2].values()) == {p}, (root, m, 'native terminal'))
                check(primary == loads[2], (root, m, 'primary terminal counts'))
                check(all(len(u) == p and set(u.values()) == {K} for u in port_uses),
                      (root, m, 'native port uses'))
                checked_cells += N
    print(json.dumps({'status': 'PASS_FINITE_PARAMETRIC_CONTROL',
                      'roots': [3, 4], 'max_signature_bits': 16,
                      'native_schedule_cases': len(native_cases),
                      'syndromes_checked': tested_syndromes,
                      'full_native_cells_checked': checked_cells,
                      'embedded_stage_identities_checked': checked_stages,
                      'first_maxima': [2, 4], 'counterexamples': 0,
                      'lean_verification': 'NOT_RUN_BY_THIS_SCRIPT'}, indent=2))


if __name__ == '__main__':
    main()
