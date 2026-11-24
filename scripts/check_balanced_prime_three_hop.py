#!/usr/bin/env python3
"""Independent finite control for math #1844; NOT Lean proof evidence.

Run with Python 3.11+: python3 scripts/check_balanced_prime_three_hop.py
Coordinates are 16-bit integers; port labels are little-endian 4-bit integers.
The prime-to-beacon permutation is irrelevant to distinctness, so this test
checks actual addresses, not synthetic prime labels or spectral claims.
"""
from collections import Counter
import json

N = 1 << 16


def ports(s):
    p = (((s >> 1) & 1)
         | (((s >> 2) & 1) << 1)
         | (((s ^ (s >> 1)) & 1) << 2)
         | (((s >> 3) ^ 1) << 3))
    return p, p ^ 1, s ^ 1


def check(condition, message):
    if not condition:
        raise AssertionError(message)


def main():
    syndrome = [0] * N
    for x in range(1, N):
        b = x & -x
        syndrome[x] = syndrome[x ^ b] ^ (b.bit_length() - 1)
    port_load = [Counter() for _ in range(3)]
    stage_load = [Counter() for _ in range(3)]
    primary_load = Counter()
    second_frozen = 0
    for x, s in enumerate(syndrome):
        a, b, c = ports(s)
        check(len({a, b, c, s}) == 4, ("distinct ports", x))
        h1 = x ^ (1 << a)
        h2 = h1 ^ (1 << b)
        h3 = h2 ^ (1 << c)
        primary = x ^ (1 << s)
        check(len({x, h1, h2, h3}) == 4, ("simple path", x))
        check(syndrome[primary] == syndrome[h3] == 0, ("frozen endpoints", x))
        check(h3 != primary and (x ^ h3).bit_count() == 3, ("second reference", x))
        check(syndrome[h1] & 8 and syndrome[h2] == c, ("stage syndrome", x))
        second_frozen += syndrome[h2] == 0
        for i, (p, y) in enumerate(zip((a, b, c), (h1, h2, h3))):
            port_load[i][p] += 1
            stage_load[i][y] += 1
        primary_load[primary] += 1
    check(all(len(d) == 16 and set(d.values()) == {4096} for d in port_load), "port balance")
    check(len(stage_load[0]) == 32768 and set(stage_load[0].values()) == {2}, "first-hop load")
    check(len(stage_load[1]) == N and set(stage_load[1].values()) == {1}, "second-hop load")
    check(len(stage_load[2]) == 4096 and set(stage_load[2].values()) == {16}, "terminal load")
    check(primary_load == stage_load[2], "primary load")
    check(second_frozen == 4096, "second-hop frozen transit count")
    print(json.dumps({
        "status": "PASS_FINITE_MODEL",
        "cells": N,
        "beacons": len(primary_load),
        "port_uses_per_hop": [dict(Counter(d.values())) for d in port_load],
        "arrivals_per_cell_by_stage": [
            dict(Counter(d.get(x, 0) for x in range(N))) for d in stage_load
        ],
        "primary_arrivals_per_beacon": 16,
        "second_hop_frozen_transits": second_frozen,
        "counterexamples": 0,
        "lean_verification": "NOT_RUN_BY_THIS_SCRIPT",
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
