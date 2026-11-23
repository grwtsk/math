"""Enclose arithmetic heat-ray samples and test same-level alias recovery."""
from flint import acb, arb, ctx
from verify_xi_heat_wave import prime_powers


def arithmetic_ray(t):
    tau = t / 2
    cutoff = 65536
    total = arb(0)
    for m, log_p in prime_powers(cutoff):
        log_m = arb(m).log()
        gaussians = (-(log_m-t)**2/(4*tau)).exp() + (-(log_m+t)**2/(4*tau)).exp()
        total += log_p*gaussians/arb(m).sqrt()
    coef = 1/(4*(arb.pi()*tau).sqrt())
    L = arb(cutoff).log()
    k = (L-t)/(2*tau)-arb(1)/2
    assert k > 1/L
    prime_tail = 2*coef*(L/2-(L-t)**2/(4*tau)).exp()*(L/k+1/k**2)

    def gamma_integrand(y, analytic):
        a = acb(1)/4
        z = acb(0, 1)*y/2
        density = ((a+z).digamma()+(a-z).digamma())/2 - arb.pi().log()
        return (-tau*y*y).exp()*(t*y).cos()*density

    Y = 60
    gamma = sum((acb.integral(gamma_integrand, j, j+1,
                              abs_tol=arb('1e-50'), rel_tol=arb('1e-48'))
                 for j in range(Y)), acb(0)).real/(2*arb.pi())
    assert tau*Y**2 > 2 and (7+17*Y**2)*(-tau*Y**2/2).exp() < 1
    gamma_tail = (-tau*Y**2/2).exp()/(2*arb.pi()*tau*Y)
    pole = (tau/4).exp()*(t/2).cosh()
    value = 2*(pole+gamma-coef*total+arb(0, (prime_tail+gamma_tail).upper()))
    print('t', t, 'arithmetic ray', value.str(24), 'prime tail in ray',
          (2*prime_tail).str(5), 'gamma tail', (2*gamma_tail).str(5), flush=True)
    return value


def extract_ordinate(first, second, bounds, cutoff, previous):
    def dominant(t):
        value = arithmetic_ray(t)
        for g, m in previous:
            value -= 2*m*(-t*g*g/2).exp()*(t*g).cos()
        # Signed count in the j-th unit bin is at most 4 log(4+cutoff+j).
        tail = (4*arb(4+cutoff).log()*(t*(arb(5)/8-arb(cutoff)**2/2)).exp()
                /(1-(-cutoff*t).exp())**2)
        return value+arb(0, tail.upper())

    low, high = dominant(first), dominant(second)
    ratio = high/low
    def model(g):
        return (-(second-first)*g*g/2).exp()*(second*g).cos()/(first*g).cos()
    left, right = map(arb, bounds)
    window = left.union(right)
    assert (first*window).cos() > 0 and (second*window).cos() > 0
    slope = -(second-first)*window-second*(second*window).tan()+first*(first*window).tan()
    assert slope < 0
    assert model(left) > ratio and model(right) < ratio
    # Separate endpoints preserve a valid bracket when the midpoint overlaps the ratio.
    def endpoint(upper):
        lo, hi = left, right
        for _ in range(100):
            mid = (lo+hi)/2
            sample = model(mid)
            if upper:
                if sample <= ratio.lower():
                    hi = mid
                else:
                    lo = mid
            elif sample >= ratio.upper():
                lo = mid
            else:
                hi = mid
        return hi if upper else lo

    lo, hi = endpoint(False), endpoint(True)
    g = lo.union(hi)
    mass = low/(2*(-first*g*g/2).exp()*(first*g).cos())
    assert mass.unique_fmpz() == 1
    # The standard indexed zero is queried only after the arithmetic reconstruction.
    index = len(previous)+1
    reference = acb.zeta_zero(index).imag
    assert g.contains(reference) and acb.zeta_zero(index+1).imag > cutoff
    print('ordinate', index, g.str(30), 'width', (hi-lo).str(8), 'mass', mass.str(18),
          'separate zero', reference.str(24), flush=True)
    return g, hi-lo


def two_ordinates():
    first, width = extract_ordinate(arb(3)/8, arb(7)/16, (14, 15), 21, [])
    assert width < arb('1e-12')
    refined, width = extract_ordinate(arb(15)/32, arb(1)/2, (14, 15), 21, [])
    assert first.contains(refined) and width < arb('1e-20')
    _, width = extract_ordinate(arb(1)/4, arb(17)/64, (21, 22), 25, [(refined, 1)])
    assert width < arb('1e-6')


def alias_control():
    pi = arb.pi()
    h = -18*pi**2
    rate = acb(h, 8*pi)
    s = (1+2*rate).sqrt()-1
    assert 0 < s.real < arb(1)/2 and (s+s*s/2-rate).contains(0)
    assert h-2*s.real < h
    q = 16
    assert q*pi > arb(3)/2*(arb(5)/4-2*h).sqrt()
    seq = [4*(6*pi*n/q).cos()+6*(8*pi*n/q).cos() for n in range(q)]
    for k, m in [(3, 2), (4, 3), (12, 3), (13, 2)]:
        coeff = sum((seq[n]*acb(0, -2*pi*n*k/q).exp() for n in range(q)), acb(0))/q
        assert coeff.contains(m) and abs(coeff-m) < arb('1e-65')
    C = [sum((seq[n]*seq[(n+k) % q] for n in range(q)), arb(0))/q for k in range(3)]
    c = (6*pi/q).cos()
    defect = (C[0]+C[2])/2-2*c*C[1]+c*c*C[0]
    assert arb('2.63') < defect < arb('2.64') and C[0].contains(26)
    assert seq[0].contains(10)
    threshold = arb(3)/2*(arb(5)/4-2*h).sqrt()/pi
    assert 9 < threshold < 10
    Q = 20
    values = [4*(6*pi*n/Q).cos()+6*(8*pi*n/Q).cos() for n in range(Q)]
    corr = [sum((values[n]*values[(n+k) % Q] for n in range(Q)), arb(0))/Q
            for k in range(3)]
    expected_cosine = (6*pi/Q).cos()
    calibrated = ((corr[0]+corr[2])/2-2*expected_cosine*corr[1]
                  +expected_cosine**2*corr[0])
    transverse_square = 18*s.real**2
    assert transverse_square/100 < calibrated < 9*transverse_square
    print('half mesh 1/20, three-shift defect', calibrated.str(16),
          'multiplicity-weighted displacement square', transverse_square.str(16))
    print('hostile level d', s.real.str(13), 'integer alias mass squared 100,',
          'unwrapped mass squared', C[0].str(9), 'three-correlation defect', defect.str(16))


if __name__ == '__main__':
    ctx.prec = 256
    alias_control()
    two_ordinates()
