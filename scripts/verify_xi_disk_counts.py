"""Enclose the winding of zeta on full-height boxes and certify real-centered disks.

Run with python-flint. Every disk certificate compares one Taylor monomial with
all other terms including the analytic Cauchy remainder. Sampling only chooses
candidate centers. The rectangle independently supplies the total count.
"""
from fractions import Fraction

from flint import acb, acb_poly, arb, ctx

from verify_xi_contour_traces import ZetaJet


def variation(coeffs, start, radius):
    return sum(abs(a)*radius**j for j, a in enumerate(coeffs) if j >= start)


def winding(jet, vertices):
    count_segments = 0

    def angle(left, right, depth):
        nonlocal count_segments
        mid = (left+right)/2
        radius = abs(right-left)/2
        assert abs(mid)+radius < 1 or depth == 0
        coeffs = list(jet.poly(acb_poly([mid, 1])))
        if abs(mid)+radius < 1 and variation(coeffs, 1, radius)+abs(jet.value_error) < abs(coeffs[0]):
            # The entire image lies in a disk missing zero. Its argument ranges
            # through an interval shorter than pi, including both true endpoints.
            first = jet.poly(left)+jet.value_error
            last = jet.poly(right)+jet.value_error
            turn = (last/first).arg()
            assert turn.is_finite() and abs(turn) < arb.pi()
            count_segments += 1
            return turn
        assert depth < 18, ('unresolved contour', left, right)
        return angle(left, mid, depth+1)+angle(mid, right, depth+1)

    result = sum(angle(left, right, 0) for left, right in zip(vertices, vertices[1:]+vertices[:1]))
    integer = (result/(2*arb.pi())).unique_fmpz()
    assert integer is not None and integer >= 0
    return int(integer), count_segments


def verify(center, jet=None):
    jet = ZetaJet(arb(center)) if jet is None else jet
    width, height = arb(1)/2, arb(9)/16
    vertices = [acb(width,height), acb(-width,height), acb(-width,-height), acb(width,-height)]
    count, segments = winding(jet, vertices)
    disks = []
    for level in [8, 10, 12, 14]:
        if len(disks) == count:
            break
        n = 2**level
        grid = [arb(i)/n-width for i in range(n+1)]
        values = [float(abs(jet.poly(x)).mid()) for x in grid]
        for i in range(1, n):
            if not values[i] <= min(values[i-1], values[i+1]):
                continue
            x = grid[i]
            coeffs = list(jet.poly(acb_poly([x, 1])))
            for power in range(3, level+1):
                r = arb(2)**-power
                if not abs(x)+r < width or not all(abs(x-y) > r+s for y, s in disks):
                    continue
                spread = abs(coeffs[0])+variation(coeffs, 2, r)+abs(jet.value_error)
                if abs(coeffs[1])*r > spread:
                    disks.append((x, r))
                    break
    assert len(disks) == count, (center,count,disks)
    # Refine each certified disk by real Newton proposals and a new Pellet test.
    small = []
    for x, r in disks:
        y = x
        for _ in range(5):
            y = (y-(jet.poly(y)/jet.derivative(y)).real).mid()
        coeffs = list(jet.poly(acb_poly([y, 1])))
        for exponent in [46, 42, 38, 34, 30, 24]:
            s = arb(2)**-exponent
            if (abs(y-x)+s < r and abs(coeffs[1])*s >
                    abs(coeffs[0])+variation(coeffs, 2, s)+abs(jet.value_error)):
                small.append(y+arb(0,s))
                break
        else:
            raise ArithmeticError('disk refinement failed')
    print('CERTIFIED',center,'simple critical-line zeros',count,'winding segments',segments,
          'offsets',[v.str(15) for v in sorted(small,key=float)],flush=True)
    return small


def lehmer_circle_mean():
    jet = ZetaJet(arb(7005))
    roots = verify(7005, jet)
    center, radius = arb(2)/25, arb(1)/20
    assert len(roots) == 2 and all(0 < abs(x-center) and abs(x-center) < radius for x in roots)
    predicted = sum((radius/abs(x-center)).log() for x in roots)
    arcs = 2**15
    # Lipschitz bound for the polynomial on the closed disk about the jet origin.
    slope = sum(j*abs(a)*(abs(center)+radius)**(j-1)
                for j,a in enumerate(jet.poly.coeffs()) if j)
    error = slope*radius*arb.pi()/arcs+abs(jet.value_error)
    total = arb(0)
    for k in range(arcs):
        point = center+radius*(acb(2*k+1)/arcs).exp_pi_i()
        value = abs(jet.poly(point))+arb(0,error)
        assert value > 0
        total += value.log()
    mean = total/arcs-abs(jet.poly(center)+jet.value_error).log()
    assert mean.overlaps(predicted) and mean.rad() < arb(1)/50
    print('Lehmer normalized xi circle mean',mean.str(9),'projected Jensen sum',predicted.str(13),
          'arcs',arcs,flush=True)


def verify_radial_controls():
    for n in range(2, 140):
        g = Fraction(n, 3)
        d = Fraction(1, 2**(1+n%17))
        # A rational radius strictly between g and sqrt(g^2+d^2).
        h = d*d/(4*g)
        assert g*g < (g+h)**2 < g*g+d*d
        for k in (1, 2, 3, 6, 12):
            adaptive_defect = 1/g**(2*k) - 1/(g*g+d*d)**k
            assert adaptive_defect > 0
    print('exact radial-count and inverse-power controls', 138*5, flush=True)


def density_and_trace_controls():
    # Sum of the radial excess interval lengths from one dyadic band.
    for power in [100, 300, 1000]:
        t = arb(10)**power
        L = t.log()
        a, A, C = arb('0.331'), arb('10395.2'), arb('0.1')
        u = (A/C).log()
        B = arb('1.104')*L**2+arb('0.173')*L*L.log()+arb('0.51')*L
        upper = 16*C*(u**2+2*u+2)/L+A*L*(arb(1)/4-a*a)*(-a*L/4).exp()+B/(4*t)
        print('total radial excess length originating at 10^',power,'to twice it <=',upper.str(12))
        assert upper < arb(260)/L
    # Two hypothetical off-line fibers, each with a conjugate pair. Real nodes
    # at either ordinate cancel before this computation. Powers use exact rationals.
    def pair_moment(g, d, p):
        x, y = Fraction(g, 1), Fraction(d)
        den = x*x+y*y
        re, im = Fraction(1), Fraction(0)
        for _ in range(p):
            re, im = (re*x+im*y)/den, (im*x-re*y)/den
        return 2*(1/x**p-re)

    def moment(p):
        return pair_moment(4, Fraction(1, 2), p)+pair_moment(8, Fraction(1, 4), p)

    v, w = moment(1024), moment(1026)
    assert abs(4**1024*v-2) < Fraction(1, 1000)
    assert abs(v/w-16) < Fraction(1, 100)
    print('first off-line fiber squared height 16 and multiplicity 2 recovered within 0.01 and 0.001')


if __name__ == '__main__':
    ctx.prec = 180
    verify_radial_controls()
    density_and_trace_controls()
    lehmer_circle_mean()
    for center in [10**15+2, 10**15+3]:
        verify(center)
