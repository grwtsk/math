"""Enclose the ordinary-prime fourth-power budget with integer arithmetic."""

import argparse
from math import isqrt

SCALE = 1 << 64


def ceil_div(a, b):
    return -(-a // b)


def log_ratio(a, b, terms):
    """Enclose SCALE * log((1+a/b)/(1-a/b)) by its positive series."""
    if a == 0:
        return 0, 0
    # In both calls the tail after terms terms is less than one scaled unit.
    assert 0 < a < b
    assert 2 * SCALE * a**(2*terms+1) * b*b < (
        (2*terms+1) * b**(2*terms+1) * (b*b-a*a)
    )
    low, high = SCALE*a//b, ceil_div(SCALE*a, b)
    square_low, square_high = SCALE*a*a//(b*b), ceil_div(SCALE*a*a, b*b)
    total_low = total_high = 0
    for j in range(terms):
        total_low += 2*low // (2*j+1)
        total_high += ceil_div(2*high, 2*j+1)
        low = low * square_low // SCALE
        high = ceil_div(high * square_high, SCALE)
    return total_low, total_high + 1


LOG_TWO = log_ratio(1, 3, 24)
TABLE = [log_ratio(i-256, i+256, 24) for i in range(256, 512)]


def log_int(n):
    """Power-of-two reduction, a 256-entry table, and a short positive tail."""
    k = n.bit_length()-1
    base = 1 << k
    i = (256*n)//base
    low, high = log_ratio(256*n-i*base, 256*n+i*base, 4)
    return (k*LOG_TWO[0]+TABLE[i-256][0]+low,
            k*LOG_TWO[1]+TABLE[i-256][1]+high)


def score_bounds(orders):
    """Enclose SCALE * log(V_n)/n for the given indices."""
    last = max(orders)
    prime = bytearray(b'\x01') * (last+1)
    prime[:2] = b'\x00\x00'
    for p in range(2, isqrt(last)+1):
        if prime[p]:
            prime[p*p::p] = bytes((last-p*p)//p+1)

    a_low = a_high = theta_low = theta_high = h_low = h_high = 0
    start = 1
    bounds = {}
    for n in sorted(orders):
        for j in range(start, n+1):
            quotient, rem = divmod(SCALE, j)
            h_low += quotient
            h_high += quotient + (rem != 0)
            if prime[j]:
                low, high = log_int(j)
                a_low += low // (j-1)
                a_high += ceil_div(high, j-1)
                theta_low += low
                theta_high += high
        # U = sum_{p<=n}(n/(p-1)-1)log p + n(1+H_n-log(n(n+1))).
        # U - 3 - theta(n)/n <= log(V_n)/n <= U.
        log_low, log_high = log_int(n*(n+1))
        lower = n*(a_low+SCALE+h_low-log_high)-theta_high
        upper = n*(a_high+SCALE+h_high-log_low)-theta_low
        bounds[n] = lower-3*SCALE-ceil_div(theta_high,n), upper
        start = n+1
    return bounds


def classify(n, bounds, budget):
    lower, upper = bounds
    multiplier = budget*(isqrt(n)+1)
    if upper <= multiplier*LOG_TWO[0]:
        return "pass"
    if lower > multiplier*LOG_TWO[1]:
        return "fail"
    return "undecided"


def main(starts):
    if not starts or min(starts) < 1:
        raise ValueError("supply positive integer window parameters")
    orders = {j**4 for k in starts for j in range(k*k, k**3+1)}
    scores = score_bounds(orders)
    for k in starts:
        for budget in (2, 3, 4):
            groups = {name: [] for name in ("pass", "fail", "undecided")}
            for j in range(k*k, k**3+1):
                groups[classify(j**4, scores[j**4], budget)].append(j)
            print(f"k={k} n=[{k**8},{k**12}] budget={budget}",
                  " ".join(f"{name}={len(items)}" for name, items in groups.items()),
                  f"first_failure_j={next(iter(groups['fail']), None)}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("starts", nargs="*", type=int, default=[2, 3, 4])
    main(parser.parse_args().starts)
