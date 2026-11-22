#!/usr/bin/env python3
"""Exact Gaussian-rational checks for finite Euler-factor perturbation.

Mathematical consumer: grwtsk/math #1849. Coefficients are exact multiples
of log(p), never rounded. No zero data or Alpoge theorem enters these checks.
Authors: grwtsk contributors.
"""
from __future__ import annotations
from dataclasses import dataclass
from fractions import Fraction
from itertools import product
import json


@dataclass(frozen=True)
class QComplex:
    re: Fraction
    im: Fraction = Fraction(0)

    def __add__(self, other):
        other = qc(other)
        return QComplex(self.re + other.re, self.im + other.im)

    def __neg__(self):
        return QComplex(-self.re, -self.im)

    def __sub__(self, other):
        return self + -qc(other)

    def __mul__(self, other):
        other = qc(other)
        return QComplex(self.re * other.re - self.im * other.im,
                        self.re * other.im + self.im * other.re)

    def __truediv__(self, other):
        other = qc(other)
        denominator = other.re ** 2 + other.im ** 2
        assert denominator != 0
        return QComplex((self.re * other.re + self.im * other.im) / denominator,
                        (self.im * other.re - self.re * other.im) / denominator)

    def __pow__(self, n):
        assert isinstance(n, int) and n >= 0
        result = qc(1)
        for _ in range(n):
            result = result * self
        return result

    def norm_sq(self):
        return self.re ** 2 + self.im ** 2


def qc(z):
    if isinstance(z, QComplex):
        return z
    if isinstance(z, (int, Fraction)):
        return QComplex(Fraction(z))
    raise TypeError(type(z))


def cutoff_exponent(p, X):
    H, power = 0, p
    while power <= X:
        H += 1
        power *= p
    return H


def exact_trial(p, X, u, v):
    assert p >= 2 and X >= 1 and u.norm_sq() <= 1 and v.norm_sq() <= 1
    H = cutoff_exponent(p, X)
    delta = lambda h: u ** h - v ** h
    raw = sum((delta(h) * (Fraction(X, p ** h) - 1)
               for h in range(1, H + 1)), qc(0))
    # log derivative of local factor 1/(1-u p**(-s)), divided by log(p),
    # is -u/(p-u). Counterterm X * that derivative.
    corrected = raw - qc(X) * (u / (qc(p) - u) - v / (qc(p) - v))
    tail = (u ** (H + 1) / (qc(p ** H) * (qc(p) - u))
            - v ** (H + 1) / (qc(p ** H) * (qc(p) - v)))
    rhs = -sum((delta(h) for h in range(1, H + 1)), qc(0)) - qc(X) * tail
    assert corrected == rhs, (p, X, u, v, corrected, rhs)
    upper = 2 * (Fraction(H) + Fraction(p, p - 1))
    assert corrected.norm_sq() <= upper ** 2
    return corrected


def run():
    primes = [2, 3, 5, 7, 11]
    symbols = [qc(0), qc(1), qc(-1), QComplex(Fraction(0), Fraction(1)),
               QComplex(Fraction(0), Fraction(-1)),
               QComplex(Fraction(3, 5), Fraction(4, 5))]
    cases = 0
    for p in primes:
        xs = sorted(set((1, p - 1, p, p + 1, p * p - 1, p * p,
                         p * p + 1, p ** 3 - 1, p ** 3, p ** 3 + 1)))
        for X, u, v in product(xs, symbols, symbols):
            exact_trial(p, X, u, v)
            cases += 1
    ex = exact_trial(2, 100, qc(1), qc(0))
    return {
        "status": "EXACT_FINITE_EULER_PERTURBATION_PASS",
        "primes": primes,
        "symbol_choices": len(symbols),
        "cases": cases,
        "exact_coefficients": "Gaussian rationals times log(p)",
        "sample_p2_X100_u1_v0": [str(ex.re), str(ex.im)],
        "lean_compilation": "NOT_RUN",
        "all_scale_alpoge_inequality": "OPEN",
        "jacobi_xi_spectral_equivalence": "OPEN"
    }


if __name__ == "__main__":
    print(json.dumps(run(), indent=2))
