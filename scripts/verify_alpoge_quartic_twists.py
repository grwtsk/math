#!/usr/bin/env python3
"""Exact checks for the normalized two-site CM twist coefficient."""
from fractions import Fraction
from math import comb

import verify_alpoge_sigma_dwork as sigma
from verify_alpoge_frobenius_sign import f_q_multiply, f_q_power


def check_degree_32():
    degree = 32
    moments = sigma.sigma_moments(degree // 4)
    for twist, bad_counts, expected in [
        ((0, -1), (0, 0), (0, -7)),
        ((1, 0), (425, 276), (Fraction(-31, 3), 0)),
    ]:
        beta = sigma.sigma_beta(3, twist, moments, degree)
        for polarize, key in [(sigma.d1_beta, (9, 2, 1)), (sigma.d2_beta, (1, 2, 9))]:
            exponent = sigma.substitute_height2(polarize(beta), 3, degree)
            exponential = sigma.formal_exp(exponent, degree)
            defect = sigma.dwork_residual(exponent, 3, degree)
            counts = (sum(sigma.vp(z, 3) < 0 for z in exponential.values()),
                      sum(sigma.vp(z, 3) < 1 for z in defect.values()))
            assert len(exponential) == 709 and counts == bad_counts
            assert exponential[key] == expected
            print(twist, polarize.__name__, len(exponential), counts, expected)


def quartic_residues(p):
    """Calculate both rational contributions independently of the predicted residue."""
    q = p * p
    k, d = (p + 1) // 4, (q - 1) // 4
    # wp'' = 6 wp² - 2 at c=1. This quadratic recurrence scales to degree 992.
    w = [Fraction(1)]
    for j in range(1, k + d + 1):
        square = sum(w[i] * w[j-i] for i in range(1, j))
        w.append(Fraction(6 * square - 2 * (j == 1), (4*j-2)*(4*j-3)-12))
    log_w = sigma.log_unit(w)
    log_v = sigma.log_unit([(1-2*j)*a for j, a in enumerate(w)])

    def moment(j):
        return -w[j] / (4*j*(4*j-1)) + log_v[j] - log_w[j]

    first = p * (p + 1) * moment(k)
    second = p * (q + p) * comb(q+p-1, p-1) * moment(k+d)
    residues = [a.numerator * pow(a.denominator, -1, p) % p for a in (first, second)]
    predicted = -(-1)**k * comb(2*k, k) * pow(2, -1, p) % p
    assert residues == [predicted, predicted] and predicted
    aligned = 0
    for x in range(p):
        for y in range(p):
            if (x, y) == (0, 0):
                continue
            unit = (x, y)
            chi = f_q_power(unit, d, p)
            residual = f_q_multiply(f_q_power(unit, k, p),
                                    ((residues[0] + residues[1]*chi[0]) % p,
                                     residues[1]*chi[1] % p), p)
            assert (residual == (0, 0)) == (chi == (p-1, 0))
            aligned += residual == (0, 0)
    assert aligned == d
    print(p, 'total degree', q+p, 'two residues', residues, 'aligned units', aligned)


if __name__ == '__main__':
    check_degree_32()
    for prime in (3, 7, 11, 19, 23, 31):
        quartic_residues(prime)
