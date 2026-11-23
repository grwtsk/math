"""Upper-bound the midpoint strip Green sum from two analytic boundary integrals.

Run with python-flint. The optional cache maps a center to the text serialization
of the certified coefficients produced by ZetaJet. Default execution recomputes
the jets. No zero counts or isolated zeros enter this test.
"""
import argparse
import math
from pathlib import Path

from flint import acb, acb_poly, arb, ctx

from verify_xi_contour_traces import ZetaJet


def get_jet(center, cache):
    if cache is None:
        return ZetaJet(arb(center)).poly
    matches = list(cache.glob(f'*-{center}-jet.txt'))
    if len(matches) != 1:
        raise ValueError(f'expected one previously generated jet at {center}')
    return acb_poly([acb(arb(x), arb(y)) for x, y in
                     (line.split(';') for line in matches[0].read_text().splitlines())])


def patch(poly, center, mid, rad):
    # All true coefficients through degree n-1 are enclosed by poly.
    # The uniform remainder on a larger disk follows from the same radius-two
    # Cauchy estimate used to construct the source jet.
    n = len(poly)
    phase = 14 if center >= 100000 else 0
    radius = abs(mid) + rad
    assert radius < 2
    bound = (arb(center)+10)**4 * arb(2*phase).exp()
    error = bound*(radius/2)**n/(1-radius/2)
    coeff = list(poly(acb_poly([mid, 1])))
    keep = 27
    error += sum(abs(v)*rad**j for j, v in enumerate(coeff) if j >= keep)
    return acb_poly(coeff[:keep]), acb(arb(0, error), arb(0, error))


def cell(poly, center, b, sigma, width):
    k = arb.pi()/width
    h = sigma-arb(1)/2
    phase = 14 if center >= 100000 else 0
    total = arb(0)
    subdivisions = 16
    rad = arb(1)/16
    step = arb(1)/subdivisions
    for j in range(subdivisions):
        mid = -arb(1)/2+(arb(j)+arb(1)/2)*step
        part, err = patch(poly, center, acb(mid, -h), rad)

        def integrand(x, analytic):
            if not abs(x) < rad:
                return acb('nan')
            # This is the holomorphic product P(x) * conjugate(P(conjugate x))
            # for the translated column, continued from its real squared norm.
            product = ((part(x)+err) * (part(x.conjugate())+err).conjugate())
            log_abs = product.log(analytic=analytic)/2 - phase*h
            return log_abs / ((x+mid+(center-b))*k).cosh()

        val = acb.integral(integrand, -step/2, step/2,
                           abs_tol=arb('1e-13'), rel_tol=arb('1e-13'), eval_limit=12000)
        assert val.is_finite() and val.imag.contains(0), (center, sigma, j, val)
        total += val.real
    return total


def verify(first, length, sigma, width, cache=None):
    assert 0 < sigma < 1 and sigma+width/2 > 1
    b = arb(first)+(arb(length)-1)/2
    R, k = arb(length)/2, arb.pi()/width
    total = arb(0)
    anchor = None
    for center in range(first, first+length):
        poly = get_jet(center, cache)
        total += cell(poly, center, b, sigma, width)
        total += cell(poly, center, b, sigma+width, width)
        if center == first+length//2:
            x = acb(b-center, arb(1)/2-(sigma+width/2))
            part, err = patch(poly, center, x, arb(1)/1000)
            phase = 14 if center >= 100000 else 0
            anchor = abs(part(0)+err).log() - phase*(sigma+width/2-arb(1)/2)
    # Each boundary has density sech(k*v)/(2*width). Euler summation gives
    # |zeta(sigma+it)| <= |s|*(1/sigma+1/(1-sigma)); the other side uses zeta(a).
    left = ((1/sigma+1/(1-sigma))*(1+abs(b)+R)).log() + 1/(k*(1+abs(b)+R))
    right = (1+1/(sigma+width-1)).log()
    tail_upper = 2/arb.pi()*(-k*R).exp()*(left+right)
    pole = ((k*(1-sigma)).sin()/(k*b).cosh()).atanh()
    upper = total/(2*width)-anchor+pole+tail_upper
    print("center", b.str(25), "finite difference", (total/(2*width)-anchor+pole).str(15),
          "one-sided omitted integral", tail_upper.str(15), "Green upper",upper.str(15),flush=True)
    return upper


def prime_test():
    sigma, width, b, R, N = arb(7)/10, arb(3), arb(41), 19, 20000
    k = arb.pi()/width

    def boundary(v, analytic):
        a = acb(sigma) + acb(0, 1)*(b+v)
        c = acb(sigma) - acb(0, 1)*(b+v)
        return (a.zeta()*c.zeta()).log(analytic=analytic)/(2*(k*v).cosh())

    observed = arb(0)
    for j in range(-R, R):
        cell_value = acb.integral(boundary, j, j+1, abs_tol=arb('1e-12'),
                                  rel_tol=arb('1e-12'), eval_limit=20000)
        assert cell_value.is_finite() and cell_value.imag.contains(0)
        observed += cell_value.real
    sieve = bytearray([1])*(N+1)
    for n in range(2, math.isqrt(N)+1):
        if sieve[n]:
            sieve[n*n:N+1:n] = bytes((N-n*n)//n+1)
    primes = arb(0)
    terms = 0
    for p in range(2, N+1):
        if sieve[p]:
            n, j = p, 1
            while n <= N:
                t = arb(n).log()
                primes += (b*t).cos()*(-sigma*t).exp()/(j*(width*t/2).cosh())
                terms += 1
                n, j = n*p, j+1
    excess = sigma+width/2-1
    prime_tail = 2*arb(N)**(-excess)/excess
    log_bound = ((1/sigma+1/(1-sigma))*(1+abs(b)+R)).log()+1/(k*(1+abs(b)+R))
    boundary_tail = 4/arb.pi()*(-k*R).exp()*log_bound
    pole = ((k*(1-sigma)).sin()/(k*b).cosh()).atanh()
    upper = (observed/width-primes+prime_tail+boundary_tail)/2 + pole
    assert upper < arb('0.000007')
    print('one-boundary prime test',b,'prime powers',terms,'prime tail',prime_tail.str(12),
          'boundary tail',boundary_tail.str(12),'Green upper',upper.str(15),flush=True)


if __name__ == '__main__':
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--cache', type=Path)
    modes = ap.add_mutually_exclusive_group()
    modes.add_argument('--remote', action='store_true', help='ten-cell boundary certificate')
    modes.add_argument('--short-remote', action='store_true', help='four-cell boundary certificate')
    args = ap.parse_args()
    ctx.prec = 160
    if args.remote:
        upper = verify(10**15-2, 10, arb(7)/10, arb(13)/20, args.cache)
        k = arb.pi()/(arb(13)/20)
        cost = ((k*(arb(753)/1000-arb(7)/10)).sin()/(k*arb(5)/2).cosh()).atanh()
        assert upper < cost
        print("right-zero cost within 5/2",cost.str(15),flush=True)
    elif args.short_remote:
        upper = verify(10**15+2, 4, arb(7)/10, arb(13)/20, args.cache)
        k = arb.pi()/(arb(13)/20)
        cost = ((k*(arb(753)/1000-arb(7)/10)).sin()/k.cosh()).atanh()
        assert upper < cost
        print("radius-one exclusion cost", cost.str(15), flush=True)
    else:
        upper = verify(12, 6, arb(7)/10, arb(13)/20)
        assert upper < arb('0.00001')
        prime_test()
