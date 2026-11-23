"""Finite ball certificates for XiSechTraceDefect.md, using python-flint 0.8.0."""

from fractions import Fraction

from flint import arb, arb_series, ctx

from verify_xi_shifted_hankel import ball, xi_sign


def check_central_trace():
    ctx.cap = 3
    s = arb_series([arb(1) / 2, 1])
    xi = s*(s-1)*(-s*arb.pi().log()/2).exp()*(s/2).gamma()*s.zeta()/2
    second = 2*xi[2]/xi[0]
    assert second > 0 and 5*arb(9)/7*second < arb(3)/10


def arithmetic_trace(terms):
    """Use the alternating Euler-series transform and its first-omitted-term bound."""
    ctx.cap = 2
    pi = arb.pi()
    weighted_sum = arb(0)
    for j in range(terms):
        s = arb_series([arb(3) / 2 + 2*j, 1])
        zeta = s.zeta()
        log_derivative = zeta[1] / zeta[0]
        if j == 0:
            first = -log_derivative
        weighted_sum += (-1)**j * log_derivative
    remainder = first * arb(4)**(-terms)
    explicit = 2*arb(2).sqrt() + ((arb(3)/8).digamma() + (2/pi).log() +
                                 4*(weighted_sum + arb(0, remainder))) / pi
    return explicit


def endpoint_trace(last):
    """The pole and the prime term at one have already been canceled analytically."""
    ctx.cap = 2
    total = arb(0)
    for j in range(1, last+1):
        zeta = arb_series([j+1, 1]).zeta()
        ratio = zeta[1]/zeta[0]
        if j == 1:
            first = -ratio
        total += (-1)**j * ratio
    tail = first * arb(2)**(-last)
    return (3*arb.const_euler() - 1 - (4*arb.pi()).log() + 4*(total+arb(0, tail))) / (2*arb.pi())


def sign_brackets():
    """Find real zeros by sign changes only, without a complex zero count."""
    left = Fraction(0)
    previous = xi_sign(left)
    intervals = []
    for j in range(1, 401):
        right = Fraction(j, 4)
        sign = xi_sign(right)
        if sign != previous:
            intervals.append((left, right))
        left, previous = right, sign
    assert len(intervals) == 29
    return intervals


def real_pair_sum(brackets, steps, scale):
    """Enclose the contributions of one real pair for each sign-changing bracket."""
    total = arb(0)
    for lo, hi in brackets:
        initial = xi_sign(lo)
        for _ in range(steps):
            mid = (lo + hi) / 2
            if xi_sign(mid) == initial:
                lo = mid
            else:
                hi = mid
        z = ball((lo+hi)/2) + arb(0, ball((hi-lo)/2))
        total += 2 / (scale*z).cosh()
    return total


def previous_defects(height):
    """Twice the uniform positive-ordinate squared-reciprocal tail bound."""
    t = arb(height)
    mass = ((1 + (t/(2*arb.pi())).log()) / (arb.pi()*t) +
            (arb(28)/100 + arb(112)/100*t.log()) / t**2)
    return mass, mass/8


if __name__ == "__main__":
    ctx.prec = 384
    roots = sign_brackets()
    check_central_trace()
    source = arithmetic_trace(145)
    known = real_pair_sum(roots, 275, arb.pi()/2)
    residual = source - known
    print("remaining arithmetic mass after 29 real pairs", residual)
    print("maximum inferred height", (2/residual).acosh()*2/arb.pi())
    assert residual*arb(10)**69 > arb("3.12386095281304273")
    assert residual*arb(10)**69 < arb("3.12386095281304276")
    assert residual < 2/(arb.pi()*arb("101.3025")/2).cosh()
    assert residual < 2*arb(2).sqrt()/(arb.pi()*arb("101.52")/2).cosh()
    scaled = arb(10)**10 * source
    assert scaled > arb("9.1101667962757150464273702789687703678817110881614607308130")
    assert scaled < arb("9.1101667962757150464273702789687703678817110881614607308132")
    height = arb(100)
    tail = arb(3)/10 * height**2 * (-arb.pi()*height/2).exp()
    spectral = known + arb(0, tail)
    assert source.overlaps(spectral)
    assert source.rad() < arb("1e-71") and spectral.rad() < arb("3e-65")
    print("prime-gamma trace", source)
    print("29 real pairs plus full tail", spectral)
    height = 3*10**12
    mass, log_residual = previous_defects(height)
    print("reciprocal-square tail upper bound", mass)
    print("log determinant residual upper bound", log_residual)
    assert mass < arb("2.960e-12") and log_residual < arb("3.70e-13")
    log10_gap = ((arb(3)/10).log() + 2*arb(height).log() -
                 arb.pi()*height/2) / arb(10).log()
    print("base-10 logarithm of exponential tail bound", log10_gap)
    assert log10_gap < -2_046_564_530_738

    ctx.prec = 768
    endpoint = endpoint_trace(540)
    endpoint_known = real_pair_sum(roots, 510, arb.pi())
    endpoint_residual = endpoint - endpoint_known
    print("endpoint arithmetic trace", endpoint.str(65))
    print("endpoint residual", endpoint_residual.str(30))
    print("endpoint real-pair cutoff", ((2/endpoint_residual).acosh()/arb.pi()).str(28))
    assert endpoint*arb(10)**19 > arb("2.07479522615617953960928505127375798")
    assert endpoint*arb(10)**19 < arb("2.07479522615617953960928505127375799")
    assert endpoint_residual*arb(10)**138 > arb("2.32598082280383616")
    assert endpoint_residual*arb(10)**138 < arb("2.32598082280383618")
    assert endpoint_residual < 2/(arb.pi()*arb("101.31768")).cosh()
    endpoint_tail = arb(9)/40 * arb(100)**2 * (-arb.pi()*100).exp()
    assert endpoint_residual < endpoint_tail
    endpoint_log10 = ((arb(9)/40).log() + 2*arb(height).log() -
                      arb.pi()*height) / arb(10).log()
    print("endpoint log10 bound", endpoint_log10.str(32))

    assert endpoint_log10 < -4_093_129_061_501
