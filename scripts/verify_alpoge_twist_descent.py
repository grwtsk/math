#!/usr/bin/env python3
"""Exact elliptic theta slices over an unramified quartic field at 3.

Run with python-flint 0.8.0. No theta coefficient is supplied from a
Honda integrality prediction. Rational arithmetic is in Q[a]/(a⁴−2a²+2).
"""
from math import comb
from flint import fmpq, fmpq_poly


def moments(length):
    w = [fmpq(1)]
    for j in range(1, length + 1):
        square = sum(w[t]*w[j-t] for t in range(1, j))
        w.append(fmpq(6*square - 2*(j == 1)) / ((4*j-2)*(4*j-3)-12))

    def log_unit(values):
        result = [fmpq(0)]
        for j in range(1, len(values)):
            result.append(values[j] - sum(t*result[t]*values[j-t] for t in range(1, j))/fmpq(j))
        return result

    lw = log_unit(w)
    lv = log_unit([(1-2*j)*a for j, a in enumerate(w)])
    return [fmpq(0)] + [-w[j]/(4*j*(4*j-1))+lv[j]-lw[j] for j in range(1, length+1)]


def valuation(q, p):
    if q == 0:
        return float('inf')

    def multiplicity(x):
        t = 0
        while x % p == 0:
            x //= p
            t += 1
        return t

    return multiplicity(int(q.numerator)) - multiplicity(int(q.denominator))


def power_mod(x, n, modulus):
    result = fmpq_poly([1])
    while n:
        if n % 2:
            result = result*x % modulus
        x = x*x % modulus
        n //= 2
    return result


def source_fixtures():
    cases = [(3, (0,-1), 0), (7, (-1,-1), 0), (11, (0,-1), 2),
             (19, (-2,-1), 0), (23, (-3,-3), 0), (31, (-3,-1), 0)]
    x = fmpq_poly([0,1])
    for p, (re, im), expected in cases:
        q, k = p*p, (p+1)//4
        mu = moments(p*k)
        terms = []
        for j in range(1, p*k+1):
            a = 4*j-1
            if (a-p) % (q-1) or a < p:
                continue
            i = a-(p-1)
            r, rem = divmod(q-i, q-1)
            if rem or not 0 <= r <= i:
                continue
            terms.append((j, 4*j*mu[j]*comb(a,p-1)*comb(i,r)/p**r))
        assert [j for j, _ in terms] == [k,p*k]
        A, B = [v for _, v in terms]
        c = re+im*x
        value = sum(v*power_mod(c,j,x*x+1) for j,v in terms)
        assert min(valuation(t,p) for t in value) == expected
        assert valuation(A+B,p) == -1
        d = (q-1)//4
        assert comb(2*d,d) % (p*p) == p*(p-1)
        print(p, 'aligned valuation', expected, 'untwisted', -1, flush=True)


def slice_comparison(depth):
    # a² = 1+i, (1+i)^4 = -1 mod 3, so a² is a nonsquare in F9.
    a = fmpq_poly([0,1])
    f = a**4-2*a*a+2
    c0 = 1-a*a
    u = a if depth == 0 else 1+3**depth*a
    c = c0*power_mod(u,4,f) % f
    bound = 9**(depth+1)
    mu = moments((bound+3)//4)
    series = [fmpq_poly() for _ in range(bound+1)]
    aligned = [fmpq(0) for _ in range(bound+1)]
    powers = {0:fmpq(1)}
    levels = []
    exponent, denominator = 1, 1
    while exponent <= bound:
        levels.append((exponent, fmpq(1,denominator)))
        exponent *= 9
        denominator *= 3
    for i in range(1, bound+1):
        next_power = {}
        for n, coeff in powers.items():
            for e, h in levels:
                if n+e <= bound:
                    next_power[n+e] = next_power.get(n+e, fmpq(0))+coeff*h
        powers = next_power
        if i % 8 != 1:
            continue
        j = (i+3)//4
        scalar = (4*j)*comb(4*j-1,2)*mu[j]
        weighted = scalar * power_mod(c,j,f)
        for n, h in powers.items():
            series[n] += h*weighted
            # The aligned c0=-i has odd j on this ray.
            aligned[n] += h*scalar*(-1)**((j+1)//2)
    assert all(valuation(a,3) >= 0 for a in aligned)
    failures = [n for n, v in enumerate(series) if any(valuation(t,3)<0 for t in v)]
    assert failures == [bound], failures
    assert min(valuation(t,3) for t in series[bound]) == -1
    # The transport predicts even the scaled residue of the first bad term.
    frob_diff = 2*a  # (u-φu)/3^depth for all test choices
    detector_slope = -5*c0
    discrepancy = (3*series[bound] - power_mod(u,3,f)*detector_slope*frob_diff) % f
    assert all(valuation(t,3) >= 1 for t in discrepancy)
    print('F81 lift depth', depth, 'first failed slice exponent', bound,
          'total theta degree', bound+3, 'valuation', -1, flush=True)


if __name__ == '__main__':
    source_fixtures()
    for lift_depth in range(3):
        slice_comparison(lift_depth)
