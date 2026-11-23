"""Bracket first heat collisions of finite theta-Jacobi determinants using interval Sturm counts."""

from fractions import Fraction
from flint import arb, ctx
from verify_xi_newman_gaussian_sections import (
    check_quadrature_budget, gaussian_average, jacobi_coefficients, power_sums,
)


def sign(value):
    if value > 0:
        return 1
    if value < 0:
        return -1
    raise ArithmeticError("undecided endpoint or leading sign")


def positive_root_count(coefficients):
    """Sturm chain over Arb balls; eliminated leading terms vanish identically."""
    a = coefficients
    b = [i*a[i] for i in range(1,len(a))]
    chain = [a,b]
    while len(b) > 1:
        residual = list(a)
        for offset in reversed(range(len(a)-len(b)+1)):
            scale = residual.pop()/b[-1]
            for i in range(len(b)-1):
                residual[i+offset] -= scale*b[i]
        assert not residual[-1].contains(0)
        a, b = b, [-x for x in residual]
        chain.append(b)
    def variations(index):
        signs = [sign(row[index]) for row in chain]
        return sum(x != y for x,y in zip(signs,signs[1:]))
    return variations(0)-variations(-1)


def as_ball(number):
    return arb(number.numerator)/number.denominator


def verify():
    ctx.prec = 720
    check_quadrature_budget()
    _, moments = power_sums(arb(1)/2,32)
    for n in range(1,17):
        coefficients = jacobi_coefficients(moments,n)
        polynomial = [arb(1)]+[4**j*coefficients[n-j] for j in range(1,n+1)]
        def count(v):
            return positive_root_count(gaussian_average(polynomial,as_ball(v)))
        low, high = Fraction(1,4), Fraction(1)
        assert count(low) == n
        while count(high) == n:
            low, high = high, 2*high
        while high-low > Fraction(1,65536):
            midpoint = (low+high)/2
            if count(midpoint) == n:
                low = midpoint
            else:
                high = midpoint
        assert count(low) == n and count(high) < n
        print('rank',n,'first collision variance in',low,high,
              'positive square-root nodes at endpoints',count(low),count(high))
    # The pair x²-a² reaches its first collision at variance a².
    assert positive_root_count([arb(-1),arb(1)]) == 1
    assert positive_root_count([arb(1),arb(1)]) == 0


if __name__ == '__main__':
    verify()
