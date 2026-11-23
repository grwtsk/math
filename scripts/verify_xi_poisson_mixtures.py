"""Interval checks for the full theta Mellin integrals of self-dual comb mixtures."""
from flint import acb, arb, ctx

ctx.prec = 384
PI = arb.pi()
HALF = arb(1) / 2


def completed_theta(s, terms, count=15):
    """Evaluate on 0 < Re(s) < 1, including both Gaussian and Mellin tails."""
    assert s.real > 0 and s.real < 1
    value = acb(0)
    tail = arb(0)
    for scale, mass in terms:
        c = PI * scale**2
        for n in range(1, count + 1):
            q = acb(c * n**2)
            for b in (s / 2, (1-s) / 2):
                value += mass * (-b * q.log()).exp() * q.gamma_upper(b)
        first = c * (count+1)**2
        # Each power v^(b-1) has modulus at most one for v >= 1.
        tail += 2 * mass * (-first).exp() / (first * (1-(-c*(2*count+3)).exp()))
    error = arb(0, tail)
    return HALF + s*(s-1)*(value+acb(error,error))/2


def run(a):
    h, delta = a.log(), arb(1)/4
    c, d = (h/2).cosh(), (delta*h).cosh()
    eps = c / (c+d)
    terms = [(arb(1), 1-eps), (a, eps*a/(a+1)), (1/a, eps/(a+1))]
    leakage = 2*eps*(1-1/a)/(a+1)
    assert leakage > 0 and 2*PI/a**2 > 3
    for t in (acb(2), acb(PI/h, delta)):
        s = HALF + acb(0, 1)*t
        direct = completed_theta(s, terms)
        xi = s*(s-1)/2 * (-s/2*PI.log()).exp() * (s/2).gamma() * s.zeta()
        multiplier = (d+(t*h).cos())/(c+d)
        factorized = xi*multiplier
        assert direct.overlaps(factorized) and abs(direct-factorized) < arb('1e-90')
        if t.imag > 0:
            assert direct.contains(0) and abs(direct) < arb('1e-90')
            assert not xi.contains(0) and not (t*h).sin().contains(0)
        else:
            assert direct.real > 0 and direct.imag.contains(0)
    print(f'height {float(PI/h):.8f}, weighted leakage {float(leakage):.8f}, theta/Mellin checks passed')


if __name__ == '__main__':
    for num, den in [(4, 3), (7, 6), (11, 10), (33, 32)]:
        run(arb(num)/den)
