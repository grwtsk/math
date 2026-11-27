"""Evaluate the finite rational comparisons of XiPrimeBlockRational.md at small indices."""

import argparse
from fractions import Fraction
from math import isqrt


def starting_index(k: int) -> int:
    term = total = Fraction(1)
    for ell in range(1, 8 * k + 1):
        term *= Fraction(4 * k, (2 * ell) * (2 * ell - 1))
        total += term
    return int(2 * total)


def primes_through(y: int) -> list[int]:
    sieve = bytearray([1]) * (y + 1)
    sieve[:2] = bytes(2)
    for p in range(2, isqrt(y) + 1):
        if sieve[p]:
            sieve[p * p :: p] = bytes((y - p * p) // p + 1)
    return [p for p in range(2, y + 1) if sieve[p]]


def j_value(n: int, r: Fraction) -> Fraction:
    m = 1 / (r + 1)
    shifted_m = 1 / (r + 2)
    total = Fraction(0)
    for j in range(1, 2 * n + 1):
        if j > n:
            total += (m + shifted_m) / j
        m *= 2 * j / (r + 2 * j + 1)
        shifted_m *= 2 * j / (r + 2 * j + 2)
    return total


def compare(k: int) -> tuple[int, int, int, Fraction, Fraction]:
    n = starting_index(k)
    y = isqrt(isqrt(n**3))
    q = isqrt(isqrt(n))
    q += int(q**4 < n)
    prime_sum = Fraction(0)
    for p in primes_through(y):
        inv = Fraction(1, p * p)
        ratio = 1 - inv
        weight = inv * ratio**n
        for j in range(n + 1, 2 * n + 1):
            weight *= ratio
            prime_sum += weight / j
    right = sum((j_value(n, Fraction(a, q)) for a in range(1, q + 1)), Fraction(0)) / q
    width = (j_value(n, Fraction(0)) - j_value(n, Fraction(1))) / q
    return n, y, q, prime_sum - right, prime_sum - right - width


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--through", type=int, default=4, help="last positive k to evaluate")
    args = parser.parse_args()
    if args.through < 1:
        parser.error("--through must be positive")
    for k in range(1, args.through + 1):
        n, y, q, value, left_value = compare(k)
        scaled = value * 10**6 // 1
        passed = value <= Fraction(1, y)
        print(f"k={k} N={n} Y={y} Q={q} floor(10^6 A)={scaled} A<=1/Y={passed} B<0={left_value < 0}")


if __name__ == "__main__":
    main()
