"""Enclose a deterministic-mesh sample by the Bessel prime and true zero formulas."""
from flint import acb, arb, ctx
from verify_xi_heat_wave import prime_powers


def check_sample():
    ctx.prec = 192
    c = arb(1) / 8
    r = 2 / arb(4).log()
    step = arb(9)
    cutoff = 4096
    prime_sum = arb(0)
    for m, weight in prime_powers(cutoff):
        log_m = arb(m).log()
        pair = sum((acb(1).bessel_k(acb(0, (log_m + sign * r) / c)).real
                    for sign in (-1, 1)), arb(0))
        prime_sum += weight * pair / arb(m).sqrt()

    # Shift the Bessel integral; bound K_0(a) by its quadratic Gaussian majorant.
    a = (c * step).cos()
    assert a > 0 and c * step < arb.pi() / 2
    kernel_bound = (-a).exp() * (arb.pi() / (2 * a)).sqrt()
    q = step - arb(1) / 2
    log_cutoff = arb(cutoff).log()
    assert log_cutoff > r and log_cutoff * (step + arb(1) / 2) > 1
    prime_tail = (2 * kernel_bound * (step*r - q*log_cutoff).exp()
                  * (log_cutoff/q + 1/q**2)) / (2*arb.pi()*c)

    def gamma_term(y, analytic):
        z = acb(1)/4 + acb(0, 1)*y/2
        zstar = acb(1)/4 - acb(0, 1)*y/2
        gamma_density = (z.digamma()+zstar.digamma())/2 - arb.pi().log()
        return (-(c*y).cosh()).exp() * (r*y).cos() * gamma_density

    height = 64
    gamma_integral = sum((acb.integral(gamma_term, j, j+1,
                                        rel_tol=arb('1e-20'), abs_tol=arb('1e-27'))
                          for j in range(height)), acb(0)).real / (2*arb.pi())
    # Euler's digamma series bounds the real density by 7 + 17 y^2.
    assert abs((arb(1)/4).digamma() - arb.pi().log()) < 7
    assert c * (c*height).sinh() > 1
    gamma_tail = ((-(c*height).cosh()).exp()
                  * (7 + 17*(height**2+2*height+2)) / (2*arb.pi()))
    pole = (-(c/2).cos()).exp() * (r/2).cosh()
    prime_value = pole + gamma_integral - prime_sum/(2*arb.pi()*c)
    prime_value += arb(0, prime_tail + gamma_tail)

    ordinates = []
    index = 1
    while True:
        g = acb.zeta_zero(index).imag
        if g > height:
            break
        assert g < height
        ordinates.append(g)
        index += 1
    head = sum(((-(c*g).cosh()).exp() * (r*g).cos() for g in ordinates), arb(0))
    # Use the published reciprocal-square bound above height 64 (see manuscript).
    assert height * c * (c/2).cos() * (c*height).sinh() > 2
    zero_tail = height**2 * (r/2 - (c/2).cos()*(c*height).cosh()).exp()
    true_value = head + arb(0, zero_tail)
    assert prime_value.overlaps(true_value)
    assert abs(prime_value-true_value) < arb('1e-15')
    print('mesh n=4, r=2/log(4), b=1/2, c=1/8, t=1, ordinates', len(ordinates))
    print('prime', prime_value.str(17), 'divisor', true_value.str(17))
    print('prime tail', prime_tail.str(7), 'gamma tail', gamma_tail.str(7),
          'zero tail', zero_tail.str(7))


if __name__ == '__main__':
    check_sample()
