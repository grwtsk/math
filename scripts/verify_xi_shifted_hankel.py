"""Finite certificates for XiShiftedHankelPositivity.md. Requires python-flint 0.8.0."""

from fractions import Fraction
from math import factorial, prod

from flint import acb, arb, arb_mat, arb_series, ctx


DIMENSION = 16
HEIGHT = 100
FIRST_TAIL_SHIFT = 47


def ball(value):
    return arb(value.numerator) / value.denominator


def xi_sign(height):
    s = acb(arb(1) / 2, ball(height))
    xi = s * (s - 1) * (-s * arb.pi().log() / 2).exp() * (s / 2).gamma() * s.zeta() / 2
    assert 0 in xi.imag and (xi.real > 0 or xi.real < 0)
    return 1 if xi.real > 0 else -1


def low_zeros():
    """Prove the zero count and isolate every zero through the given height."""
    ctx.prec = 192
    steps = 128
    radius = arb(3) / (4 * steps)
    for j in range(steps):
        center = arb(1) / 2 + (2 * j + 1) * radius
        assert acb(center + arb(0, radius), HEIGHT).zeta().real > 0

    t = arb(HEIGHT)
    theta = acb(arb(1) / 4, t / 2).lgamma().imag - (t / 2) * arb.pi().log()
    count = 1 + (theta + acb(arb(1) / 2, t).zeta().arg()) / arb.pi()
    assert count > arb(57) / 2 and count < arb(59) / 2

    brackets = []
    last_sign = xi_sign(Fraction(0))
    for j in range(1, 4 * HEIGHT + 1):
        sign = xi_sign(Fraction(j, 4))
        if sign != last_sign:
            brackets.append((Fraction(j - 1, 4), Fraction(j, 4)))
        last_sign = sign
    assert len(brackets) == 29 and brackets[0][0] >= 14
    return brackets


def tail_budget(brackets):
    """Bound the Lagrange basis on the whole complex disk by rational arithmetic."""
    nodes = [(1 / v**2, 1 / u**2) for u, v in brackets[:DIMENSION]]
    rho = Fraction(1, HEIGHT**2)
    bounds = []
    for i, (low, high) in enumerate(nodes):
        assert low > rho
        ratios = []
        for j, (other_low, other_high) in enumerate(nodes):
            if i != j:
                distance = max(low - other_high, other_low - high)
                assert distance > 0
                ratios.append((rho + other_high) / distance)
        bounds.append(prod(ratios))
    k = FIRST_TAIL_SHIFT
    relative = rho**(k-1) * sum(b**2 / low**k for b, (low, _) in zip(bounds, nodes)) / 20
    assert relative < Fraction(79, 100)
    return relative


def xi_moments(last):
    """Take even coefficients of log xi at its regular, nonzero center."""
    ctx.prec = 2048
    ctx.cap = 2 * last + 1
    s = arb_series([arb(1) / 2, 1])
    xi = s * (s-1) * (-s * arb.pi().log() / 2).exp() * (s/2).gamma() * s.zeta() / 2
    assert xi[0] > 0
    log_xi = (xi / xi[0]).log()
    assert len(log_xi) == 2 * last + 1
    moments = [arb(0)] + [-k * (-1)**k * log_xi[2*k] for k in range(1, last + 1)]
    assert moments[1] > 0 and moments[1] < arb(3) / 100
    return moments


def check_theta_integral(moments):
    """Cross-check both source families through dimension five by the beta integral."""
    ctx.prec = 256
    pi = arb.pi()
    # t^(2k) <= (2k)! exp(t), x=exp(t). See the proof for both omitted strips.
    tail = 2 * arb(-242).exp() + 8 * arb(-385).exp()
    assert tail < arb('1e-104')

    def integrand(t, k):
        x = t.exp()
        psi = sum((-pi * n*n * x).exp() for n in range(1, 9))
        return psi * (t/4).exp() * t**(2*k)

    beta = []
    for k in range(11):
        integral = acb.integral(lambda t, analytic: integrand(t, k), 0, 5)
        assert integral.is_finite() and 0 in integral.imag
        beta.append(integral.real / (4**k * factorial(2*k)) + arb(0, tail))
    center = arb(1)/2 - beta[0]/4
    assert center > 0
    c = [arb(1)] + [(-1)**k * (beta[k-1] - beta[k]/4) / center for k in range(1, 11)]
    p = [arb(0)]
    for k in range(1, 11):
        p.append(-k*c[k] - sum(p[j]*c[k-j] for j in range(1, k)))
        assert p[k].overlaps(moments[k])
    for shift in (1, 2):
        for size in range(1, 6):
            matrix = arb_mat([[p[shift+i+j] for j in range(size)] for i in range(size)])
            assert matrix.det() > 0


def check_spectral_dimension(moments):
    """An integer polynomial gives a lower bound for the size of any real spectral list."""
    b = arb_mat([[moments[i+1]] for i in range(DIMENSION)])
    matrix = arb_mat([[moments[i+j+2] for j in range(DIMENSION)] for i in range(DIMENSION)])
    solution = matrix.solve(b)
    weights = arb_mat([
        [int((solution[i, 0] + arb(1)/2).floor().unique_fmpz())]
        for i in range(DIMENSION)
    ])
    optimal = (b.transpose() * solution)[0, 0]
    lower = (2 * b.transpose() * weights - weights.transpose() * matrix * weights)[0, 0]
    assert arb('1372.97') < lower and lower < arb('1372.98')
    assert arb('1372.97') < optimal and optimal < arb('1372.98')
    return lower


def main():
    if not __debug__:
        raise RuntimeError('The certificate requires enabled Python assertions.')
    brackets = low_zeros()
    relative = tail_budget(brackets)
    moments = xi_moments(FIRST_TAIL_SHIFT - 1 + 2 * (DIMENSION - 1))
    for shift in range(1, FIRST_TAIL_SHIFT):
        for size in range(1, DIMENSION + 1):
            matrix = arb_mat([[moments[shift+i+j] for j in range(size)] for i in range(size)])
            assert matrix.det() > 0, (shift, size)
    rank_bound = check_spectral_dimension(moments)
    check_theta_integral(moments)
    print(f'{len(brackets)} disjoint sign changes account for all zeros through height {HEIGHT}.')
    print(f'{DIMENSION * (FIRST_TAIL_SHIFT - 1)} positive leading minors, shifts 1–46.')
    print(f'The integer polynomial gives a spectral dimension lower bound of {rank_bound.str(15)}.')
    print('Independent theta integrals verify both moment matrices through dimension 5.')
    print(f'At shift {FIRST_TAIL_SHIFT} the relative tail bound is {ball(relative).str(12)}.')


if __name__ == '__main__':
    main()
