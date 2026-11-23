"""Arithmetic lower bounds for integer and geometric-grid Hardy certificates."""
from flint import acb, arb, ctx

R = 2021500000000004
HEIGHT = 2024500000000000


def prime_floor(denominator, cutoff):
    x = arb(cutoff)
    logx = x.log()
    delta = arb(1)/1000
    assert logx > 35
    # |theta(y)-y| <= .001 y for y>=x. Partial summation with 1/(y^2 log y).
    reciprocal_tail = ((1-delta)*(1-1/logx)-2*delta)/(x*logx)
    jump = R*reciprocal_tail/(denominator+(1+2*R)/x)
    initial = -( -2*R*(arb(1)/denominator).log1p()).expm1()
    return initial*jump/(initial+jump)


def geometry():
    a = acb(arb(R)+arb(1)/2,HEIGHT)
    logp2 = (-2*R/abs(a)**2).log1p()
    h = arb('1.1e-15')
    mesh_loss = logp2-(-h).expm1()*(R*h/2).tanh()
    assert mesh_loss > arb('3.91228628339e-16')
    small = 9115015689657667*arb(2).log()-5750934602875680*arb(3).log()
    z = (-acb(R,HEIGHT)*small).exp()
    alpha = (-small/2).exp()
    pole_loss = logp2-2*abs((z-alpha)/(1-alpha*z)).log()
    assert 0 < small < arb('1.064e-16') and 0 < pole_loss < arb('5e-18')
    print("coarse log-step",h.str(8),"replica log floor",mesh_loss.str(20),
          "two-prime log-step",small.str(20),"fine replica loss",pole_loss.str(20))


def periodic_control():
    # A second lower bound on the variance from actual low-ordinate zeta values.
    # On [0,2] and its 23 translates by T all Poisson weights exceed wmin.
    ctx.prec = 96
    period = 2*arb.pi()/arb(2).log()
    count, pieces = 24,160
    assert period > 2 and (count-1)*period+2 < HEIGHT
    integral = arb(0)
    for j in range(pieces):
        u = arb(2*j+1)/pieces+arb(0,arb(1)/pieces)
        vals = [acb(arb(1)/2,u+k*period).zeta() for k in range(count)]
        den = sum(abs(z)**2 for z in vals).upper()
        total = arb(0)
        for k,z in enumerate(vals):
            for v in vals[:k]:
                lo = abs(z-v).lower()
                if lo > 0:
                    total += lo**2
        integral += (arb(2)/pieces)*total/den
    wmin = arb(R)/(arb.pi()*(arb(R)**2+arb(HEIGHT)**2))
    assert integral > arb('16.99') and wmin*integral > arb('1.33e-15')
    print("dyadic orbit ordinates",count,"integration boxes",pieces,
          "unweighted residual lower",integral.str(15),
          "normalized excess lower",(wmin*integral).str(15))


def main():
    ctx.prec = 240
    j = 3*arb(R)/(4*(2*arb(R)**2+arb(1)/4))
    budget = (2*j).expm1()
    print("quadratic target",budget.str(20))
    for d,x in [(1,8*10**28),(10**8,10**21),(10**12,12*10**16)]:
        lower=prime_floor(d,x)
        assert lower > budget
        print("common denominator",d,"maximum allowed numerator",x,
              "unavoidable quadratic excess",lower.str(20),"factor",(lower/budget).str(14))
    geometry()
    periodic_control()


if __name__ == '__main__':
    main()
