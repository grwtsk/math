"""Check theta Jensen sections, their finite collision times, and the local double-root bias."""

from fractions import Fraction
from math import factorial, prod
from flint import arb, ctx, fmpq, fmpq_mpoly_ctx
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


def polynomial_heat(polynomial, time, variable):
    """Apply exp(time * D²) exactly in a variable independent of time."""
    result = term = polynomial
    order = 1
    while term:
        term = time * term.derivative(variable).derivative(variable) / order
        result += term
        order += 1
    return result


def multiple_root_controls():
    """Check the local model through order eps^m, with the seed displaced by b eps²."""
    ring = fmpq_mpoly_ctx.get(("z", "eps", "w"))
    z, eps, w = ring.gens()
    cases = 0
    for m in range(2, 9):
        endpoint = (z**2 - 1)**m
        for b in (-3, 0, 4):
            seed = polynomial_heat(endpoint, -b * eps**2 / 4, "z")
            damped = ring.constant(0)
            for (degree, eps_degree, _), coeff in seed.terms():
                multiplier = prod(1 - j * eps**2 for j in range(degree))
                damped += coeff * z**degree * eps**eps_degree * multiplier
            for d in (1, 2, 3):
                transported = polynomial_heat(damped, (b + d) * eps**2 / 4, "z")
                scaled = transported.compose(1 + eps * w, eps, w)
                model = 2**m * eps**m * polynomial_heat(w**m, fmpq(d - 2, 4), "w")
                difference = scaled - model
                assert all(powers[1] > m for powers, _ in difference.terms()), (m, b, d)
                cases += 1
    print("exact multiple-root expansions passed:", cases, "cases")


def verify():
    ctx.prec = 720
    multiple_root_controls()
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
