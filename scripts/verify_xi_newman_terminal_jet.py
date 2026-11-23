"""Enclose the first two root corrections at a certified double theta zero."""

from flint import arb

from verify_xi_newman_collisions import (
    certify_negative_collision,
    check_quadrature_budget,
    heat_box,
    heat_jet,
)


def verify_double_root_coefficients():
    check_quadrature_budget()
    certify_negative_collision()
    # This is the full contraction box in the existence and uniqueness test.
    center = arb('99.32846930557575')
    time = arb('-1.877909072972535')
    offset = arb(0, arb('1e-9'))
    jet = heat_jet(center, time, 12)
    second, third, fourth = [
        heat_box(jet, order, offset, offset, 4) for order in (2, 3, 4)
    ]
    assert not second.contains(0)
    log_slope = third / (3 * second)
    curvature = log_slope**2 - fourth / (6 * second)
    center_drift = -2 * log_slope
    squared_width_coefficient = 4 * curvature
    assert arb('0.83811554') < center_drift < arb('0.83811558')
    assert arb('0.19854910') < squared_width_coefficient < arb('0.19854914')
    print('center drift', center_drift)
    print('quadratic coefficient of squared imaginary part', squared_width_coefficient)


if __name__ == '__main__':
    verify_double_root_coefficients()
