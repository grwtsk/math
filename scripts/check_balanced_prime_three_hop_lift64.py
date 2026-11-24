#!/usr/bin/env python3
"""Independent finite check of the embedded chart, not all 2**64 cells."""
from collections import Counter
import json

N = 1 << 16


def syndrome(x):
    s = 0
    while x:
        low = x & -x
        s ^= low.bit_length() - 1
        x ^= low
    return s


def ports(s):
    p = (((s >> 1) & 1) | (((s >> 2) & 1) << 1)
         | (((s ^ (s >> 1)) & 1) << 2) | (((s >> 3) ^ 1) << 3))
    return p, p ^ 1, s ^ 1


def lift(x):
    # Appending high zero signature bits preserves the port integer.
    return sum(((x >> p) & 1) << p for p in range(16))


def check(ok, message):
    if not ok:
        raise AssertionError(message)


def main():
    stages = [Counter() for _ in range(3)]
    usage = [Counter() for _ in range(3)]
    primary = Counter()
    chart = {lift(x) for x in range(N)}
    frozen = {z for z in chart if syndrome(z) == 0}
    check(len(chart) == N and len(frozen) == 4096, "chart size")
    for x in range(N):
        z = lift(x)
        s = syndrome(x)
        t = syndrome(z)
        check(s == t, ("syndrome", x))
        check(all(lift(x ^ (1 << p)) == (z ^ (1 << p)) for p in range(16)), ("edge", x))
        src_ports = ports(s)
        dst_ports = ports(t & 15)
        check(len(set(dst_ports)) == 3 and s not in dst_ports, ("ports", x))
        source, target = x, z
        for k, (p, q) in enumerate(zip(src_ports, dst_ports)):
            source ^= 1 << p
            target ^= 1 << q
            check(lift(source) == target and target in chart, ("stage", x, k))
            stages[k][target] += 1
            usage[k][q] += 1
        first = z ^ (1 << t)
        check(first == lift(x ^ (1 << s)) and first in frozen, ("primary", x))
        check(target in frozen and target != first and (target ^ z).bit_count() == 3, ("terminal", x))
        primary[first] += 1
    check(all(len(d) == 16 and set(d.values()) == {4096} for d in usage), "port load")
    check(len(stages[0]) == 32768 and set(stages[0].values()) == {2}, "first load")
    check(len(stages[1]) == N and set(stages[1].values()) == {1}, "second load")
    check(set(stages[2]) == frozen and set(stages[2].values()) == {16}, "terminal load")
    check(primary == stages[2], "primary load")
    print(json.dumps({
        "status": "PASS_FINITE_EMBEDDED_CHART",
        "chart_cells": len(chart), "chart_beacons": len(frozen),
        "source_edges_checked": N * 16, "stage_identities_checked": N * 3,
        "port_uses_per_stage": 4096, "unused_ambient_ports": 48,
        "stage_load_histograms": [dict(Counter(d.get(z, 0) for z in chart)) for d in stages],
        "counterexamples": 0, "lean_verification": "NOT_RUN_BY_THIS_SCRIPT",
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
