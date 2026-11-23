"""Arb checks of the arithmetic Hardy norm and finite disk-model controls."""
from flint import acb, acb_mat, arb, arb_series, ctx
from math import prod

ctx.prec = 320


def xi(s):
    return s*(s-1)/2 * (-s*arb.pi().log()/2).exp() * (s/2).gamma() * s.zeta()


def finite_model(displacements, a):
    points = [d/(d+2*a) for d in displacements]
    size = len(points)
    gram = acb_mat([[1/(1-u*v.conjugate()) for v in points] for u in points])
    # In the kernel basis the adjoint inverse transform is diagonal.
    vals = [(acb(0, 1)/d).conjugate() for d in displacements]
    mat = acb_mat([[vals[i] if i == j else 0 for j in range(size)] for i in range(size)])
    hs = (gram.inv()*mat.conjugate().transpose()*gram*mat).trace()
    expected = (1/prod(abs(w)**2 for w in points)-1)/(4*a*a)
    assert hs.real.overlaps(expected) and hs.imag.contains(0)
    return expected


if __name__ == '__main__':
    center = arb(1)/2
    series = xi(arb_series([center, 1], prec=3))
    assert series[1].contains(0)
    trace2 = 2*series[2]/series[0]
    for a in [arb(1)/2, arb(3)/4, arb(1)]:
        norm2 = ((xi(center+2*a)/series[0])**2-1)/(4*a*a)
        defect2 = (norm2-trace2)/2
        assert 0 < defect2 < norm2
        print('a', a.str(3), 'squared HS norm', norm2.str(18), 'squared skew defect', defect2.str(16))
        first = [acb(0, 3), acb(0, -3), acb(0, 7), acb(0, -7)]
        second = [acb(arb(1)/4, 9), acb(-arb(1)/4, -9),
                  acb(-arb(1)/4, 9), acb(arb(1)/4, -9)]
        finite_model(first, a)
        finite_model(second, a)
        res = finite_model(first+second, a)
        assert res > finite_model(first, a) + finite_model(second, a)
    print('9 finite Gram norm comparisons and 3 strict product-splitting controls passed')
