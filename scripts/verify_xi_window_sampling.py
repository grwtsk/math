"""Check counting constants, variance inequalities and the discrete shift formula."""
from fractions import Fraction

from flint import arb, ctx


def counting_bound(height, coefficients, error, density, width):
    t = arb(height)
    x = t.log()
    z = (2*t).log()
    a, b, c = map(arb, coefficients)
    bound = (a*z+b*z.log()+c)/x
    e, f = arb(error), arb(density)
    assert bound < e and (t/(2*arb.pi())).log()/(2*arb.pi()*x) > f
    e, f = Fraction(error), Fraction(density)
    offset = Fraction(width, 2)-2*e/f
    assert offset > 0
    margin = 2*f*offset**3/3-(Fraction(width, 6)+2*e)/4
    slope = f*offset**2-Fraction(1, 24)
    assert margin > 0 and slope > 0
    print('width', width, 'threshold', height, 'error ratio', bound.str(10),
          'squared-distance margin', margin, 'derivative margin', slope)


def shift_controls():
    for q in range(1, 26):
        for j in range(-31, 32):
            phase = Fraction(j, 29)
            average = sum(((phase+Fraction(k, q)) % 1-Fraction(1, 2))**2
                          for k in range(q))/q
            u = (q*phase) % 1
            correction = (u**2-u+Fraction(1, 6))/q**2
            assert average == Fraction(1, 12)+correction
            assert abs(correction) <= Fraction(1, 6*q*q)
    print('exact discrete phase averages', 25*63)


if __name__ == '__main__':
    ctx.prec = 160
    rough = ('0.1038', '0.2573', '9.3675')
    sharp = ('0.1120', '0.1900', '3.7470')
    threshold = arb(10**6)
    x = (2*threshold).log()
    assert arb(rough[0])*x+arb(rough[1])*x.log()+arb(rough[2]) < threshold.log()
    assert (threshold/(2*arb.pi())).log()/(2*arb.pi()) > threshold.log()/8
    assert (arb(1)/100).cosh()-1 < arb(1)/10000
    assert arb.pi()*3183 < 10000
    counting_bound(2*10**12, sharp, '0.270', '0.1485', 11)
    counting_bound(10**100, sharp, '0.134', '0.157', 7)
    counting_bound(10**300, rough, '0.121', '0.158', 6)
    shift_controls()
