"""Certify real root brackets of the xi heat flow throughout 0 <= t <= 1/2.

Requires python-flint. The common quadrature and its error proof are in
verify_xi_newman_collisions.py and XiNewmanCollisionCount.md.
"""
from fractions import Fraction

from flint import arb, ctx
from verify_xi_newman_collisions import ORDER, check_quadrature_budget, heat_box, heat_jet


ENDPOINTS = (0, 35, 46, 55, 63, 70, 78, 84, 91, 97, 102, 108)


def certify_anchors():
    check_quadrature_budget()
    half_width = arb(1) / 4
    time_offset = arb(0, half_width)
    for index, endpoint in enumerate(ENDPOINTS):
        jet = heat_jet(arb(endpoint), half_width, 2 * ORDER)
        value = heat_box(jet, 0, arb(0), time_offset, ORDER)
        sign = (-1)**index
        assert sign * value > 0, (endpoint, value)
        print("endpoint", endpoint, "sign", sign, "whole-time enclosure", value.str(8))
    print("certified", 2 * (len(ENDPOINTS) - 1), "disjoint real brackets for 0 <= t <= 1/2")


def scaled_kernel(v, distance):
    # Right-hand limit at v=0 for a coincident endpoint.
    return v / (distance**2 + v) if distance or v else Fraction(1)


def speed_floor(v, divisions):
    floors = []
    for left, right in zip(divisions, divisions[1:]):
        speed = 2 + 2 * scaled_kernel(v, right)
        for lo, hi in zip(ENDPOINTS, ENDPOINTS[1:]):
            speed += 4 * min(scaled_kernel(v, x-r) + scaled_kernel(v, x+r)
                             for x in (left, right) for r in (lo, hi))
        floors.append(speed)
    return min(floors)


def check_duration_bound():
    # This example checks the conditional speed functional with rational
    # inputs. It asserts a bound for these inputs only; X is not a xi locator here.
    locator = 125
    initial_width_squared = Fraction(1, 4)
    divisions = [Fraction(j * locator, 4) for j in range(5)]
    step = initial_width_squared / 32
    duration = sum(step / speed_floor(j * step, divisions) for j in range(32))
    assert duration < initial_width_squared / 2
    ceiling = -(-duration.numerator * 10**9 // duration.denominator)
    print("conditional locator", locator, "initial width squared", initial_width_squared,
          "duration upper (rounded upward)", f"{ceiling}/1000000000")


if __name__ == "__main__":
    ctx.prec = 192
    certify_anchors()
    check_duration_bound()
