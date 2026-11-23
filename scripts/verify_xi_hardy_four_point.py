"""Arb controls of the four-xi determinant, including the double-root limit."""
from fractions import Fraction
from math import prod

from flint import acb, acb_mat, acb_poly, acb_series, arb, ctx


I = acb(0, 1)


def four_point(value, derivative, a, z):
    discriminant = 4*a*a - z*z
    middle = I*z/2
    if discriminant == 0:
        left, right = middle-a, middle+a
        return (value(left)*value(right)
                + a*(derivative(left)*value(right)-value(left)*derivative(right)))
    difference = discriminant.sqrt()
    upper, lower = middle+difference/2, middle-difference/2
    u = value(upper-a)*value(lower+a)
    v = value(lower-a)*value(upper+a)
    return (u+v)/2 + a*(u-v)/difference


def identity(size):
    return acb_mat([[int(i == j) for j in range(size)] for i in range(size)])


def companion(points, a):
    """The two endpoint substitutions on the numerator polynomial basis."""
    size = len(points)
    p0 = prod((acb_poly([1, -1/w]) for w in points), start=acb_poly([1]))
    q1 = prod((acb_poly([-1/w.conjugate(), 1]) for w in points), start=acb_poly([1]))
    inverse = acb_mat(size, size)
    adjoint = acb_mat(size, size)
    for row in range(size):
        inverse[row, 0] = -p0[row+1]
        adjoint[row, size-1] = -q1[row]
        if row+1 < size:
            inverse[row, row+1] = 1
            adjoint[row+1, row] = 1
    return (inverse-adjoint)*(I/(4*a))


def kernel_gram(points, a):
    """Use the Hilbert Gram adjoint in the distinct-point reproducing kernels."""
    size = len(points)
    gram = acb_mat([[1/(1-u*v.conjugate()) for v in points] for u in points])
    adjoint = acb_mat(size, size)
    for i, w in enumerate(points):
        adjoint[i, i] = 1/w.conjugate()
    inverse = gram.inv()*adjoint.conjugate().transpose()*gram
    return (inverse-adjoint)*(I/(4*a))


def agree(left, right):
    difference = left-right
    assert difference.contains(0) and difference.abs_upper() < arb(2)**-200, difference


def finite_checks():
    unit = arb(1)/4
    quartet = [acb(r*unit, 2*j) for r in (-1, 1) for j in (-1, 1)]
    imaginary = [acb(0, t) for t in (-3, 3)]
    controls = [(quartet, True), (imaginary+quartet, True),
                ([acb(-unit), acb(unit)], True), (quartet*2, False),
                (imaginary*3+quartet, False)]
    counts = [0, 0, 0]
    for roots, distinct in controls:
        poly = prod((acb_poly([1, -1/d]) for d in roots), start=acb_poly([1]))
        derivative = poly.derivative()
        for a in (arb(1)/2, arb(1)):
            points = [d/(d+2*a) for d in roots]
            assert all(abs(w) < 1 for w in points)
            direct = companion(points, a)
            gram = kernel_gram(points, a) if distinct else None
            eye = identity(len(roots))
            agree(direct.trace(), acb(0))
            for z in map(acb, (0, arb(3)/4, 2*a, -2*a, arb(5)/4, acb(1, 2), acb(-2, 1))):
                expected = four_point(poly, derivative, a, z)
                agree((eye-direct*z).det(), expected)
                counts[0] += 1
                if gram is not None:
                    agree((eye-gram*z).det(), expected)
                    counts[1] += 1
                if z*z == 4*a*a:
                    counts[2] += 1
    return counts


def completed_zeta(s):
    return s*(s-1)/2 * ((-s/2)*arb.pi().log()).exp() * (s/2).gamma() * s.zeta()


def actual_checks():
    half = arb(1)/2
    normalizer = completed_zeta(acb(half))

    def y(t):
        if t == half or t == -half:
            return acb(half)/normalizer
        return completed_zeta(t+half)/normalizer

    def dy(t):
        return completed_zeta(acb_series([t+half, 1], 2))[1]/normalizer

    def sign_at(a, t):
        result = four_point(y, dy, a, acb(arb(t.numerator)/t.denominator))
        assert result.imag.contains(0) and result.real.is_finite()
        if result.real > 0:
            return 1
        assert result.real < 0
        return -1

    for a in (half, arb(1)):
        agree(four_point(y, dy, a, acb(0)), acb(1))
        # Compare the removable value with both nearby ordinary expressions.
        at_collision = four_point(y, dy, a, acb(2*a))
        for h in (arb(2)**-48, -arb(2)**-48):
            nearby = four_point(y, dy, a, acb(2*a+h))
            assert (nearby-at_collision).abs_upper() < abs(h)
        left, sign_left = Fraction(0), 1
        found = 0
        for quarter in range(1, 161):
            right = Fraction(quarter, 4)
            sign_right = sign_at(a, right)
            if sign_right != sign_left:
                lo, hi = left, right
                for _ in range(40):
                    mid = (lo+hi)/2
                    if sign_at(a, mid) == sign_left:
                        lo = mid
                    else:
                        hi = mid
                assert sign_at(a, lo) == sign_left and sign_at(a, hi) == sign_right
                print(f'a={float(a):g}: [{lo}, {hi}] ({sign_left:+d}, {sign_right:+d}) '
                      f'near {float((lo+hi)/2):.12f}')
                found += 1
                if found == 3:
                    break
            left, sign_left = right, sign_right
        assert found == 3


if __name__ == '__main__':
    ctx.prec = 384
    companion_count, gram_count, collisions = finite_checks()
    print(f'{ctx.prec}-bit Arb: {companion_count} companion and {gram_count} independent '
          f'Gram comparisons passed; {collisions} companion confluences')
    print('First three sampled sign changes on a quarter-step grid from zero:')
    actual_checks()
