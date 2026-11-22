#!/usr/bin/env python3
"""Exhaustive small graph-sandwich controls, not an analytic zeta-zero checker.

No zeta zero is selected or numerically certified. Graph-theory checks do not
provide source-to-spectrum identification, signed Weil positivity, or RH.
"""
from itertools import product
import json

VERTICES = (0, 1)
EDGES = tuple(product(VERTICES, repeat=2))

def has_path(edge, start, finish, length):
    return any(chain[0] == start and chain[-1] == finish and
               all((chain[i], chain[i + 1]) in edge
                   for i in range(length))
               for chain in product(VERTICES, repeat=length + 1))

def acyclic(edge):
    return all(not any(has_path(edge, x, x, n) for n in (1, 2))
               for x in VERTICES)

def graph_controls():
    count = 0
    directed_word_checks = 0
    for status in product(range(4), repeat=len(EDGES)):
        upper = {edge for edge, level in zip(EDGES, status) if level >= 1}
        middle = {edge for edge, level in zip(EDGES, status) if level >= 2}
        lower = {edge for edge, level in zip(EDGES, status) if level >= 3}
        assert lower <= middle <= upper
        # Both endpoint and edge sequence survive a typed, injective renaming.
        encode = {0: "root", 1: "leaf"}
        transported = [
            {(encode[x], encode[y]) for x, y in graph}
            for graph in (lower, middle, upper)
        ]
        assert transported[0] <= transported[1] <= transported[2]
        for x, y in product(VERTICES, repeat=2):
            for length in range(1, 4):
                if has_path(lower, x, y, length):
                    assert has_path(middle, x, y, length)
                    assert has_path(upper, x, y, length)
                directed_word_checks += 1
        if acyclic(upper):
            assert acyclic(middle) and acyclic(lower)
        count += 1
    return count, directed_word_checks

def signed_return_control():
    # Two certified edges 0→1→2, with separately retained source defect.
    source = 7
    readout = {0: 4, 1: 1, 2: -2}
    word = [(0, "first", 1), (1, "second", 2)]
    delta = sum(readout[x] - readout[y] for x, _, y in word)
    allowance = sum(abs(readout[x] - readout[y]) for x, _, y in word)
    initial_defect = source - readout[0]
    initial_allowance = abs(initial_defect)
    assert source == readout[2] + initial_defect + delta
    assert abs(source - readout[2]) <= initial_allowance + allowance
    lifted_readout = {"root": 4, "middle": 1, "finish": -2}
    assert lifted_readout["finish"] < 0 and readout[2] < 0
    assert (delta, allowance, initial_defect, initial_allowance) == (6, 6, 3, 3)
    return len(word)

def candidate_countermodel():
    # Candidate middle-edge with no certified lower-edge, on a singleton.
    lower = set()
    middle = {(0, "step", 0)}
    upper = {(0, "step", 0)}
    assert lower <= middle <= upper
    assert (0, "step", 0) in middle and (0, "step", 0) not in lower

if __name__ == "__main__":
    graphs, paths = graph_controls()
    witness_edges = signed_return_control()
    candidate_countermodel()
    print(json.dumps({
        "status": "FINITE_COUNTERMODEL_PASS",
        "sandwich_assignments": graphs,
        "bounded_directed_path_checks": paths,
        "signed_certified_edges": witness_edges,
        "exact_source_return": True,
        "negative_readout_retained": True,
        "candidate_implies_certified": False,
        "analytic_zeta_zero_certified": False,
        "lean_kernel_verification": "NOT_RUN",
    }, indent=2))
