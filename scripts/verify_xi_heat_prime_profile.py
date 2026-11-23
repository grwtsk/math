"""Interval checks for the two Gaussian saddles and their prime-power profile."""
from math import isqrt
from flint import acb, arb, arb_mat, ctx

ctx.prec = 160
LIMIT = 1_000_000
TAU = arb(169)/100
HALF_HEIGHT = 1_500_000_000_000


def prime_powers(limit):
    sieve = bytearray([1])*(limit+1)
    for p in range(2, isqrt(limit)+1):
        if sieve[p]:
            sieve[p*p::p] = bytes((limit-p*p)//p+1)
    for p in range(2, limit+1):
        if sieve[p]:
            logp = arb(p).log()
            q = p
            j = 1
            while q <= limit:
                yield q, logp, j*logp
                q *= p
                j += 1


def cutoff_error(t):
    a = arb(LIMIT).log()
    slope = a/(4*t)-arb(1)/2
    assert slope > 0 and a > 2
    return 2*(a/2-a**2/(8*t)).exp()*(a/slope+1/slope**2)


def budgets():
    orders = 10**21
    z = arb(14)
    error = arb(2)/3*z**3/(arb(orders).sqrt()-z)
    assert error < arb('6e-8')
    beta = TAU.sqrt()
    kappa = arb(12)
    # On |w|>12, |w|-1.3 >= 3|w|/4. Use w^2 >= 12 |w|.
    tails = 4*(2*TAU).exp()*(-arb(9)/16*kappa**2).exp()/(arb(9)/16*kappa)
    l1 = 2*(arb.pi()/2).sqrt()*(2*TAU).exp()*(error.exp()-1)+tails*3
    assert l1 < arb('0.00002') and beta < kappa/4
    print('strip L1 error upper',l1.str(12))


def main():
    budgets()
    height = arb(10**15+10)
    envelope = arb(0)
    oscillation = arb(0)
    critical_above = arb(0)
    t2 = arb(17)/10
    for q, lp, lq in prime_powers(LIMIT):
        base = 2*lp/arb(q).sqrt()
        term = base*(-lq*lq/(8*TAU)).exp()
        envelope += term
        oscillation += term*(height*lq).cos()
        critical_above += base*(-lq*lq/(8*t2)).exp()
    envelope += cutoff_error(TAU)
    floor = (arb(HALF_HEIGHT)/(2*arb.pi())).log()
    assert (1-arb('0.000001'))*floor-arb('0.001') > envelope
    assert critical_above > floor
    logheight = (height/(2*arb.pi())).log()
    # This height is a multiple of ten, so n = (169/100)*height^2 is an
    # exact integer. The two-sided digamma and saddle estimates apply.
    profile = logheight-oscillation
    err = cutoff_error(TAU)
    print('all-order time endpoint',TAU.str(10),'absolute double prime cost upper',
          envelope.str(14),'minimum log-height',floor.str(14),
          'certified margin',(floor*(1-arb('0.000001'))-arb('0.001')-envelope).str(10))
    print('at t=1.70 finite prime cost lower',critical_above.str(13))
    radius = err+arb('0.001')
    enclosing = profile+arb(0,radius)
    assert enclosing > 0
    print('normalized derivative at exact order',169*((10**15+10)//10)**2,
          'profile',profile.str(14),'radius upper',radius.str(10),'enclosure',enclosing.str(9))
    actual_low_check()


def actual_low_check():
    # A separate measured comparison with the true divisor at moderate order.
    # The first 29 ordinates are below 100 and the 30th is above it.
    # The reciprocal-square cost for the remaining zeros is <1.
    t = arb(1)
    n = 3600
    s = arb(60)
    L = (arb.pi()/2).sqrt()
    moments = [arb(0) for _ in range(5)]
    for j in range(1, 30):
        g = acb.zeta_zero(j).imag
        assert g < 100
        weight = (2*n*(g/s).log()-t*(g*g-s*s)).exp()
        y = (g*g-s*s)/(2*s)
        for k in range(5):
            moments[k] += weight*y**k
    v = moments[0]
    assert acb.zeta_zero(30).imag > 100
    # For g>100: (n/g^2+t)/4<1, g^2 exp(-(g-60)^2+1) decreases.
    rem = arb(100)**2*arb(-1599).exp()
    assert rem < arb('1e-600')
    ar = (s/(2*arb.pi())).log()
    for q, lp, lq in prime_powers(LIMIT):
        ar -= 2*lp/arb(q).sqrt()*(-lq*lq/8).exp()*(s*lq).cos()
    measured = 2*arb.pi()*v/L
    assert abs(ar-measured)+cutoff_error(t)+2*arb.pi()*rem/L < arb('0.1')
    print('actual divisor at order 3600',measured.str(14),'prime profile',ar.str(14),
          'absolute discrepancy',abs(ar-measured).str(8))

    # For |d|<=1/2 and g>=100, |((g+id)^2-s^2)/(2s)| < 1+g^2.
    # The tail bound times (1+g^2)^4 is again decreasing on this range.
    worst = rem*(1+arb(100)**2)**4
    assert worst < arb('1e-600')
    hulls = [x+arb(0,'1e-600') for x in moments]
    minors = [arb_mat([[hulls[i+j] for j in range(d)] for i in range(d)]).det()
              for d in range(1,4)]
    assert all(x > 0 for x in minors)
    print('genuine centered Hankel minors at shift 3600', [x.str(12) for x in minors])

    # Every signed derivative at t=1 of this finite trace is positive,
    # since six copies of the rate 5 dominate the pair 4 +/- i at all orders.
    z = acb(4,1)
    assert 6 > 2*arb(1).exp() and abs(z) < 5
    P = (z-1)*(z-5)**2
    bad = 2*((-z).exp()*P**2).real
    assert bad < -1
    print('finite model with positive entries, negative cubic energy',bad.str(13))


if __name__ == '__main__':
    main()
