#!/usr/bin/env python3
"""Independent exhaustive finite check of 16D prime beacons and forest addresses.

This is NOT a Lean proof, a global optimizer, or evidence of RH/GRH.
The two-syndrome physical layout has 8192 occupied vertices but only
4096 distinct numerical prime identities: every identity is replicated.
"""
from __future__ import annotations

import hashlib
import json
import math
import struct

N = 1 << 16
PORTS = 16
PIVOT_PORTS = (1, 2, 4, 8)
FREE_PORTS = tuple(i for i in range(PORTS) if i not in PIVOT_PORTS)
SECONDARY_SYNDROME = 1
assert len(FREE_PORTS) == 12


def syndrome(word: int) -> int:
    acc = 0
    while word:
        least = word & -word
        acc ^= least.bit_length() - 1
        word ^= least
    return acc


def decode_free_bits(rank: int) -> int:
    assert 0 <= rank < 4096
    word = sum(((rank >> k) & 1) << i for k, i in enumerate(FREE_PORTS))
    s = syndrome(word)
    for k, pivot in enumerate(PIVOT_PORTS):
        word |= ((s >> k) & 1) << pivot
    return word


def encode_free_bits(word: int) -> int:
    assert syndrome(word) == 0
    return sum(((word >> i) & 1) << k for k, i in enumerate(FREE_PORTS))


def hierarchy(rank: int) -> tuple[int, int, int, int]:
    return ((rank >> 9) & 7, (rank >> 6) & 7,
            (rank >> 3) & 7, rank & 7)


def triple_route(s: int) -> tuple[int, int, int]:
    # Three distinct ports whose XOR is the requested syndrome.
    if s == 1:
        route = (2, 4, 7)
    elif s == 2:
        route = (1, 4, 7)
    else:
        route = (1, 2, s ^ 3)
    assert len(set(route)) == 3
    assert route[0] ^ route[1] ^ route[2] == s
    return route


def prime_list(bound: int) -> list[int]:
    flags = bytearray(b'\x01') * (bound + 1)
    flags[0:2] = b'\x00\x00'
    for p in range(2, math.isqrt(bound) + 1):
        if flags[p]:
            flags[p * p:bound + 1:p] = b'\x00' * ((bound - p * p) // p + 1)
    return [n for n, flag in enumerate(flags) if flag]


def check(assignment: str) -> dict:
    primes = prime_list(N)
    assert len(primes) == 6542 and primes[4095] == 38873
    bases = [decode_free_bits(rank) for rank in range(4096)]
    assert len(set(bases)) == 4096
    assert all(syndrome(c) == 0 and encode_free_bits(c) == rank
               for rank, c in enumerate(bases))
    if assignment == 'identity':
        permutation = list(range(4096))
    elif assignment == 'affine-demo':
        permutation = [(4051 * rank + 73) % 4096 for rank in range(4096)]
    else:
        raise ValueError('unknown test assignment')
    assert len(set(permutation)) == 4096
    primary = set(bases)
    replicas = {base ^ (1 << SECONDARY_SYNDROME) for base in bases}
    assert len(replicas) == 4096 and primary.isdisjoint(replicas)
    assert all(syndrome(x) == 1 for x in replicas)
    marked = primary | replicas
    digest = hashlib.sha256()
    for rank, base in enumerate(bases):
        prime = primes[permutation[rank]]
        replica = base ^ (1 << SECONDARY_SYNDROME)
        digest.update(struct.pack('<HHH', prime, base, replica))
        forest, tree, neighborhood, node = hierarchy(rank)
        assert rank == forest * 512 + tree * 64 + neighborhood * 8 + node
        assert rank == (forest * 8 + tree) * 64 + neighborhood * 8 + node
    for word in range(N):
        s = syndrome(word)
        first = word ^ (1 << s)
        second = word ^ (1 << (s ^ SECONDARY_SYNDROME))
        assert first in primary and second in replicas and first != second
        actual = [i for i in range(PORTS)
                  if (word ^ (1 << i)) in marked]
        assert len(actual) == 2 and set(actual) == {s, s ^ 1}
        # Undo the edge joining the secondary replica to its base identity.
        second_base = second ^ (1 << SECONDARY_SYNDROME)
        assert second_base in primary and second_base != first
        id_a = primes[permutation[encode_free_bits(first)]]
        id_b = primes[permutation[encode_free_bits(second_base)]]
        assert id_a != id_b
        hops = triple_route(s)
        via_three = word
        for port in hops:
            via_three ^= 1 << port
        assert via_three in primary and via_three != first
        assert (word ^ via_three).bit_count() == 3
        assert (word ^ first).bit_count() == 1
    return {
        'assignment': assignment,
        'logical_dimensions': 16,
        'cells': N,
        'face_neighbors_per_cell': PORTS,
        'unique_prime_identities': len(bases),
        'prime_id_max': primes[4095],
        'primes_le_65536': len(primes),
        'original_primary_marked_positions': len(primary),
        'original_face_prime_neighbors_per_cell': 1,
        'replica_secondary_marked_positions': len(replicas),
        'replica_combined_marked_positions': len(marked),
        'replica_exact_face_prime_neighbors_per_cell': 2,
        'replica_distinct_prime_ids_per_cell': 2,
        'original_single_occupancy_reference_distances': [1, 3],
        'physical_placements_required_by_two_face_bound': 8192,
        'square_side': 64,
        'forest_count': 8,
        'trees_per_forest': 8,
        'neighborhoods_per_tree': 8,
        'nodes_per_neighborhood': 8,
        'placement_sha256': digest.hexdigest(),
        'status': 'EXHAUSTIVE_FINITE_CHECK_PASS',
        'proof_status': 'NOT_A_LEAN_PROOF',
        'optimization_status': 'NO_GLOBAL_OPTIMUM_CERTIFIED',
    }


if __name__ == '__main__':
    print(json.dumps({mode: check(mode)
                      for mode in ('identity', 'affine-demo')}, indent=2))
