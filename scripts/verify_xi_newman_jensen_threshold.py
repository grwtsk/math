"""Check theta Jensen sections, their finite collision times, and the local double-root bias."""

from fractions import Fraction
from math import factorial, prod
from flint import arb, ctx
from verify_xi_newman_collision_pencil import as_ball, positive_root_count
from verify_xi_newman_gaussian_sections import (
    check_quadrature_budget, gaussian_average, origin_derivatives,
)


def jensen_coefficients(rank, seed):
    degree = 2*rank
    moments = origin_derivatives(as_ball(seed),rank)
    return [moments[j]/moments[0] * 4**j * prod(range(degree-2*j+1,degree+1))
            / (degree**(2*j)*factorial(2*j)) for j in range(rank+1)]


def quartic_control(degree):
    h = Fraction(1,degree)
    alpha = 1-h
    beta = alpha*(1-2*h)*(1-3*h)
    def discriminant(e):
        return (alpha*(3*e-2))**2-4*beta*(1-e+3*e*e/4)
    lo, hi = Fraction(0), 4*h
    assert discriminant(lo) > 0 > discriminant(hi)
    for _ in range(100):
        mid = (lo+hi)/2
        if discriminant(mid) > 0:
            lo = mid
        else:
            hi = mid
    e = arb.union(as_ball(lo),as_ball(hi))
    x = (-as_ball(alpha)*(3*e-2)/(2*as_ball(beta))).sqrt()
    ht = as_ball(h)
    time_second = (-e+2*ht)/ht**2
    space_second = (x-1-ht)/ht**2
    assert abs(time_second-2) < 25*ht and abs(space_second-3) < 25*ht
    print('quartic degree',degree,'scaled second corrections',
          time_second.str(10),space_second.str(10))


def verify():
    ctx.prec = 720
    check_quadrature_budget()
    for n in (2,4,8,12,16,24):
        seed = Fraction(1,4*n)
        coeffs = jensen_coefficients(n,seed)
        assert positive_root_count(coeffs) == n
        # Anchor at T=1/2 by negative Gaussian variance; replay to the seed.
        shift = (Fraction(1,2)-seed)/2
        anchor = gaussian_average(coeffs,-as_ball(shift))
        replayed = gaussian_average(anchor,as_ball(shift))
        assert all(a.overlaps(b) for a,b in zip(replayed,coeffs))
        assert positive_root_count(anchor) == n
        low, high = shift, Fraction(1)
        def count(v):
            return positive_root_count(gaussian_average(coeffs,as_ball(v-shift)))
        while count(high) == n:
            low, high = high, 2*high
        while high-low > Fraction(1,4096):
            mid = (high+low)/2
            if count(mid) == n:
                low = mid
            else:
                high = mid
        assert count(low) == n and count(high) < n
        print('rank',n,'first cell midpoint',seed,'first variance interval',low,high)
    for degree in (100,1000,10000):
        quartic_control(degree)


if __name__ == '__main__':
    verify()
