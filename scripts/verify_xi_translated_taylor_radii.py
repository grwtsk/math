"""Arb controls for the exterior Taylor bounds and their vertical mean squares."""
from math import comb

from flint import acb, acb_series, arb, ctx


def taylor(height, order):
    ctx.cap = order + 3
    s = acb_series([acb(arb(3)/2, height), 1], ctx.cap)
    zeta = s.zeta()
    elementary = 1/s + 1/(s-1) + (s/2).lgamma().derivative() - arb.pi().log()/2
    return elementary + zeta.derivative()/zeta


def hardy_sign(height):
    s = acb(arb(1)/2, height)
    angle = (s/2).lgamma().imag - height*arb.pi().log()/2
    value = s.zeta()*acb(0, angle).exp()
    assert value.imag.contains(0) and not value.real.contains(0)
    return 1 if value.real > 0 else -1


def global_margins():
    ctx.cap = 6
    s = acb_series([arb(3)/2, 1], ctx.cap)
    euler = s.zeta().log().derivative()
    envelopes = [abs(euler[n]) for n in range(3)]
    for n, threshold in [(1, 400000), (2, 2*10**9)]:
        t = arb(threshold)
        margin = (t/(2*arb.pi())).log()/2 - envelopes[0] - envelopes[n] - 2/t
        assert margin > 0
        print("Euler margin at height", threshold, "order", n, margin.str(16))
    anchor = taylor(0, 2)[0].real
    assert anchor < arb(2)/(36+(arb(3)/2)**2)
    print("Poisson mass at zero", anchor.str(16))
    assert hardy_sign(14) != hardy_sign(15)
    h = arb(400000)
    r2 = 1+(h+15)**2
    cancellation = 4*14**2/r2**3
    cost = 64*arb("2.823661e-13")/(3*arb(10)**12)**2
    assert cancellation > arb("1e-31") and cost < arb("3e-36")
    print("real-pair cancellation lower", cancellation.str(16),
          "high-pair excess upper", cost.str(16))


def inversion_weight(k):
    weight = 1
    for p in range(2, k+1):
        if k % p == 0:
            weight *= 1-p
            while k % p == 0:
                k //= p
    return weight


def diagonal(n):
    cutoff = n+30
    ctx.cap = 2*n+3
    s = acb_series([3, 1], ctx.cap)
    total = acb(0)
    for ell in range(1, cutoff+1):
        log_zeta = (ell*s).zeta().log()
        coefficient = log_zeta.derivative().derivative()[2*n]
        total += coefficient*inversion_weight(ell)/ell**2
    assert total.imag.contains(0)
    error = arb(8*(cutoff+2))*comb(2*n,n)/4**cutoff
    enclosure = comb(2*n,n)*total.real + arb(0, error)
    main = arb(comb(2*n,n)*(2*n+1))/2**(2*n+2)
    square_correction = main*(arb(4)/5)**(2*n+2)/4
    return enclosure, (main-enclosure)/square_correction


def finite_order_control():
    m = arb(10)**13 + arb(1)/2
    delta = arb(1)/220
    remote = acb(1, 2*m)
    p = (arb.pi()/arb.pi().tanh() - 1 - (1/remote).real + 1/(1+delta)
         + 1/(1-delta) + (1/(remote+delta) + 1/(remote-delta)).real)
    for n in range(9, 299):
        center = (1+delta)**(-n-1) + (1-delta)**(-n-1)
        tail = (2/(arb(2).sqrt()**(n+1)) + (1+arb(2)/n)/arb(2)**n
                + 2/(2*m)**(n+1))
        if n < 298:
            assert center+tail < p
        else:
            assert center-tail > p
    print("control at the split height: first failing order", n,
          "budget", p.str(16), "coefficient lower", (center-tail).str(16))


if __name__ == "__main__":
    ctx.prec = 240
    global_margins()
    finite_order_control()
    for k in range(1, 401):
        assert sum(inversion_weight(d)*(k//d) for d in range(1,k+1) if k%d == 0) == 1
    for n in [4, 8, 12, 20, 32]:
        variance, correction_ratio = diagonal(n)
        assert variance > 0 and 1 < correction_ratio < 2
        print("order", n, "vertical mean square", variance.str(16),
              "deficit / square correction", correction_ratio.str(12))
    coefficients = taylor(arb(113)/8, 32)
    p = coefficients[0].real
    assert p > 0
    edge = (abs(coefficients[32])/p).root(32)
    pole_radius = (2*p/abs(coefficients[32])).root(31)
    assert edge > arb("0.9979") and pole_radius < arb("1.025")
    print("order 32 at t=113/8, edge lower", edge.str(16),
          "distance upper", pole_radius.str(16))
