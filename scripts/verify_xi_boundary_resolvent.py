"""Finite rational and Arb checks for the critical-line boundary resolvent.

Run with python-flint. The actual xi Taylor coefficients use the absolutely
convergent half-plane. The moment intervals also use the published verified
height and tail majorant in XiHardyDissipativePart, not an RH assumption.
"""
from fractions import Fraction as Q
from math import comb

from flint import acb, acb_series, arb, ctx

I = acb(0, 1)


def binomial_half(k, n):
    term = Q(1)
    for j in range(n):
        term *= (Q(1, 2) + j-k)/(j+1)
    return term


def finite_binomials():
    for k in range(1, 31):
        for n in range(1, 65):
            ratio = binomial_half(k, n)/binomial_half(0, n)
            assert abs(ratio)*(2*n-1) <= 2*k*4**k
            if n <= k:
                assert abs(ratio) == Q(comb(2*k, 2*n), comb(k, n))
            if k == 1:
                assert ratio == Q(-1, 2*n-1)
    print("1920 exact generalized-binomial comparisons")


def agree(first, second, threshold):
    difference = first-second
    assert difference.contains(0) and abs(difference) < threshold, difference


def finite_resolvent():
    # Two upper poles, multiplicities two and three, and one real doublet.
    # Reflecting each conjugation/negation orbit twice gives the upper-plane
    # response. A separate evaluation uses the entire unreﬂected polynomial
    # and logarithmic Blaschke derivative.
    pairs = [(arb(1)/4, 120, 2), (arb(1)/8, 200, 3)]
    upper = [(acb(sign*t, s), m) for s, t, m in pairs for sign in [-1, 1]]
    real = [(acb(t), 2) for t in [-3, 3]]
    full = real+upper+[(p.conjugate(), m) for p, m in upper]
    reflected = real+[(p.conjugate(), 2*m) for p, m in upper]

    def response(z, divisor):
        return sum((m/(p-z) for p, m in divisor), acb(0))

    for z in [acb(0, 1), acb(2, 5), acb(-4, 2), acb(11, 1)]:
        upper_value = response(z, reflected)
        correction = sum((m*(1/(z-p)-1/(z-p.conjugate())) for p, m in upper), acb(0))
        agree(upper_value, response(z, full)+correction, arb("1e-110"))
        agree((upper_value-response(-z, reflected))/2, response(z, full), arb("1e-110"))
        assert upper_value.imag > 0
    D = sum(m*p.imag/abs(p)**2 for p, m in upper)
    W = sum(m*p.imag/abs(p)**4 for p, m in upper)
    order = 20
    x = acb_series([0, 1], order+1)
    z = ((1-x).sqrt())*I
    U = sum((m/(p-z) for p, m in reflected), acb_series([0], order+1))/z
    C = sum((m/(p-z) for p, m in full), acb_series([0], order+1))/z
    for n in range(1, order+1):
        cn = arb(comb(2*n, n))/4**n
        assert U[n].imag.contains(0) and C[n].imag.contains(0)
        excess = (U[n]-C[n]).real/(2*cn)
        error = abs((2*n-1)*(excess-D)-3*W)
        assert excess > D and error < 400*W/120**2
    print("4 positive resolvent tests, 20 two-term moment comparisons; synthetic D", D.str(16))


def completed_zeta(s):
    return s*(s-1)/2*((-s/2)*arb.pi().log()).exp()*(s/2).gamma()*s.zeta()


def euler_coefficients():
    order = 17
    # Differentiate xi as a function of x. Since ds/dx = -1/(2*y),
    # C = -2 d(log xi(1/2+y))/dx without division at the reflected center.
    x = acb_series([0, 1], order+1)
    y = (1-x).sqrt()
    xi = completed_zeta(y+arb(1)/2)
    C = -2*xi.derivative()/xi
    center = completed_zeta(acb_series([arb(1)/2, 1], 3))
    variance = (2*center[2]/center[0]).real
    assert 0 < variance < arb("0.05")
    assert 0 < C[0].real < arb("0.047")
    assert abs(C[0].imag) < arb("1e-100")
    # This second estimate uses the first positive ordinates with their
    # rigorously certified indices, only as an independent comparison.
    zeros = [acb.zeta_zero(i) for i in range(1, 33)]
    assert all(z.real == arb(1)/2 for z in zeros)
    heights = [p.imag for p in zeros]
    assert all(a < b for a, b in zip(heights, heights[1:])) and heights[0] > 14
    upper_D = arb("7.398519e-13")
    prime_series = acb_series([arb(3)/2, 1], 2).zeta()
    center_value = (prime_series[1]/prime_series[0]).real + arb(4)/3
    assert center_value > arb("-0.171902022454935")
    assert center_value+2*upper_D < arb("-0.171902022453454")
    print("signed critical-line integral divided by pi is enclosed by",
          center_value.str(18), "plus [0,", (2*upper_D).str(16), "]")
    T = arb(3)*10**12
    for n in (1, 2, 4, 8, 16):
        val = C[n].real
        assert C[n].imag.contains(0)
        partial = 2*sum((1+h*h)**(-n-1) for h in heights)
        # |1+tau²| ≤ 2 Re(1+tau²) for all |Re tau|≥14, |Im tau|<1/2.
        # Hence sum |1+tau²|^-1 ≤ 2 C_0. All remaining ordinates exceed H.
        tail = 2*C[0].real/(heights[-1]**2+arb(3)/4)**n
        assert abs(val-partial) < tail
        cn = arb(comb(2*n, n))/4**n
        gap = 2*cn*upper_D*(1+(3+400/T**2)/((2*n-1)*T**2))
        print("n", n, "C_n", val.str(19), "upper bound on u_n-C_n", gap.str(15),
              "32-pair comparison abs error <", tail.str(9))


if __name__ == '__main__':
    ctx.prec = 640
    ctx.cap = 32
    finite_binomials()
    finite_resolvent()
    euler_coefficients()
