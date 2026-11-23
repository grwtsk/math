"""Exact rational checks of the scalar margins in XiNewmanEffectiveEscape.md.

The analytic estimates reduce to l >= 63 on the height range. The expressions
involving l*exp(-l) and l^2*exp(-l) decrease there. This fixture evaluates
their worst endpoint using a rational lower bound for e and Taylor bounds.
"""

from fractions import Fraction as Q
from math import factorial


def exp_upper(x, degree=12):
    """Bound exp(x) by its Taylor polynomial and a geometric tail for x >= 0."""
    if not 0 <= x < degree + 2:
        raise ValueError("Taylor tail does not have a geometric majorant")
    polynomial = sum(x**j / factorial(j) for j in range(degree + 1))
    first_omitted = x ** (degree + 1) / factorial(degree + 1)
    return polynomial + first_omitted / (1 - x / (degree + 2))


def check(condition, description):
    if not condition:
        raise ArithmeticError(description)


def main():
    e_lower = Q(8, 3)
    check(sum(Q(1, factorial(j)) for j in range(5)) > e_lower, "lower bound for e")
    l = 63
    height = e_lower**l
    first_error = (Q(l**2, 64) + Q(626, 1000)) / (11 * height)
    check(first_error < Q(1, 10**19), "error exponent in (23)")
    check(exp_upper(first_error) - 1 < 2 * Q(1, 10**19), "summand error in (23)")

    # For l >= 63, exp(l/2) > e^31 and exp(l/4) > e^15.
    correction = 5 / (e_lower**31 - Q(9, 8)) + (3 * (l + 2) + 11) / (11 * height)
    check(correction < Q(1, 1000), "exponent correction in (24)")
    check(exp_upper(correction) / e_lower**15 < Q(1, 10**6), "total error in (24)")

    small_error = 6 * Q(1, 10**19) + Q(1, 10**6)
    upper_disk = Q(5, 24) + small_error
    # 9/(20 sqrt(2)) < 9/(20 * 7/5) by squaring.
    check(Q(7, 5)**2 < 2, "square root bound")
    upper_strip = Q(9, 20) / Q(7, 5) + small_error
    check(upper_disk < Q(21, 100), "small disk")
    check(upper_strip < Q(33, 100), "height-one strip")
    check(Q(2001, 1000) * (1 + Q(9, 40) / Q(7, 5)) < 3, "full positive weight sum")

    phase_growth = exp_upper(Q(52, 100))
    check(phase_growth < Q(17, 10), "reflected disk and near vertical edge")
    check(Q(21, 100) * phase_growth < Q(36, 100), "full circular residual")
    # exp(-u) <= 1/(1+u+u^2/2+u^3/6), here u = 1/2 - 0.02/64.
    u = Q(1, 2) - Q(2, 100 * 64)
    check(1 - 1 / (1 + u + u**2 / 2 + u**3 / 6) > Q(39, 100), "far edge")
    angle = Q(11, 100)
    check(2 * (angle - angle**3 / 6) > Q(21, 100), "phase-window width")

    print("All rational error, reflection, rectangle and phase margins passed.")


if __name__ == "__main__":
    main()
