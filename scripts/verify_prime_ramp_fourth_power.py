"""Prove a finite continuous upper bound for the von Mangoldt ramp using Arb."""

from bisect import bisect_left
from math import isqrt

import flint
from flint import arb, ctx


LEFT = 10**4
RIGHT = 10**7
SCALE = 8**4


def fourth_power_mesh():
    """Return exact endpoint numerators with common denominator 8^4."""
    left, right = LEFT * SCALE, RIGHT * SCALE
    first = isqrt(isqrt(left)) + 1
    last = isqrt(isqrt(right))
    nodes = [left, *(n**4 for n in range(first, last + 1) if n**4 < right), right]
    if nodes[0] != left or nodes[-1] != right or any(a >= b for a, b in zip(nodes, nodes[1:])):
        raise ArithmeticError("incomplete mesh")
    return nodes


def prime_flags(limit):
    result = bytearray([1]) * (limit + 1)
    result[:2] = bytes(2)
    for p in range(2, isqrt(limit) + 1):
        if result[p]:
            start = p * p
            result[start::p] = bytes(1 + (limit - start) // p)
    return result


def endpoint_ramps(nodes):
    """Bin log(p) and log(p)/p^k at the first exact endpoint containing p^k."""
    floors = [v // SCALE for v in nodes]
    plain = [arb(0) for _ in nodes]
    weighted = [arb(0) for _ in nodes]
    prime_count = power_count = 0
    for p, is_prime in enumerate(prime_flags(RIGHT)):
        if not is_prime:
            continue
        prime_count += 1
        log_p = arb(p).log()
        m = p
        while m <= RIGHT:
            bucket = bisect_left(floors, m)
            plain[bucket] += log_p
            weighted[bucket] += log_p / m
            power_count += 1
            m *= p

    linear = 1 + arb.const_euler()
    acc_plain = acc_weighted = arb(0)
    ramps = []
    for point, mass, weight in zip(nodes, plain, weighted):
        acc_plain += mass
        acc_weighted += weight
        x = arb(point) / SCALE
        ramps.append(x * (acc_weighted - x.log() + linear) - acc_plain)
    return ramps, prime_count, power_count


def main():
    ctx.prec = 160
    nodes = fourth_power_mesh()
    ramps, primes, powers = endpoint_ramps(nodes)
    worst = arb(0)
    largest_chord = arb(0)
    largest_node = arb(0)
    for k in range(len(nodes) - 1):
        a, b = arb(nodes[k]) / SCALE, arb(nodes[k + 1]) / SCALE
        # G(x) + x log(x) is convex, since (x/m - 1)_+ is convex.
        # The chord of x log(x) exceeds the function by at most (b-a)^2/(8a).
        # A nonnegative bound C at the two normalized endpoints gives the
        # bound C sqrt(x) on their chord by concavity of the square root.
        ends = arb(0).max(ramps[k] / a.sqrt()).max(ramps[k + 1] / b.sqrt())
        chord = (b - a)**2 / (8 * a * a.sqrt())
        largest_chord = largest_chord.max(chord)
        largest_node = largest_node.max(ends)
        worst = worst.max(ends + chord)

    bound = arb(1) / 15
    if not worst < bound:
        raise ArithmeticError(f"failed to certify G(x)/sqrt(x) < 1/15: {worst}")
    print(f"python-flint {flint.__version__}, FLINT {flint.__FLINT_VERSION__}, Arb {ctx.prec} bits")
    print(f"closed interval [{LEFT}, {RIGHT}]; {len(nodes)} nodes, {len(nodes)-1} intervals")
    print(f"first two mesh numerators {nodes[:2]}; last two {nodes[-2:]}; denominator {SCALE}")
    print(f"complete sieve: {primes} primes, {powers} prime powers including primes")
    print("maximum nonnegative endpoint ratio", largest_node.str(18))
    print("maximum chord penalty divided by sqrt(a)", largest_chord.str(18))
    print("maximum of interval upper bounds", worst.str(18))
    print("PASS: G(x) < sqrt(x)/15 for every real x in the closed interval")


if __name__ == "__main__":
    main()
