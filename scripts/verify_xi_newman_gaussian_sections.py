"""Certify low-rank Gaussian averages of Jacobi sections from theta moments."""

from fractions import Fraction
from math import comb, factorial

from flint import arb, arb_mat, ctx
from verify_xi_newman_collisions import check_quadrature_budget


def origin_derivatives(time, count):
    """Even derivatives at x=0 on a refined version of the certified heat-jet grid."""
    assert 0 <= time <= arb(1)/2 and 2*count <= 67
    pi = arb.pi()
    steps = 1024
    first_omitted = 16
    error = arb('1e-180')
    # The strip and spatial-tail bounds are those of check_quadrature_budget.
    alias = 4*(140*arb(23).exp()*3**67+1)/((2*pi*steps/8).exp()-1)
    theta_tail = 300*arb(23).exp()*2**67*first_omitted**4*(-pi*first_omitted**2).exp()
    assert (arb(17)/16)**4*(-33*pi).exp() < arb(1)/2
    assert alias + theta_tail + 2*arb(-1000).exp() < error
    derivatives = [arb(0) for _ in range(count+1)]
    for j in range(2*steps+1):
        u = arb(j)/steps
        e4, e5, e9 = (4*u).exp(), (5*u).exp(), (9*u).exp()
        q = (-pi*e4).exp()
        theta = sum((2*pi**2*n**4*e9-3*pi*n**2*e5)*q**(n*n)
                    for n in range(1,first_omitted))
        term = theta*(time*u*u).exp()/(2*steps if j == 0 else steps)
        for i in range(count+1):
            derivatives[i] += term
            term *= -u*u
    return [x+arb(0,error) for x in derivatives]


def power_sums(time, count):
    derivatives = origin_derivatives(time, count)
    normalized = [derivatives[j]/(factorial(2*j)*derivatives[0])
                  for j in range(count+1)]
    sums = []
    for j in range(1, count+1):
        convolution = sum(sums[i-1]*normalized[j-i] for i in range(1,j))
        sums.append(-j*normalized[j]-convolution)
    return derivatives[0], sums


def jacobi_coefficients(sums, rank):
    moment_matrix = arb_mat([[sums[i+j] for j in range(rank)] for i in range(rank)])
    rhs = arb_mat([[-sums[i+rank]] for i in range(rank)])
    return list(moment_matrix.solve(rhs))


def gaussian_average(polynomial, variance):
    def coefficient(j, k):
        h = k-j
        return (polynomial[k] * comb(2*k,2*j) * factorial(2*h) * variance**h
                / (factorial(h)*2**h))
    return [sum(coefficient(j,k) for k in range(j,len(polynomial)))
            for j in range(len(polynomial))]


def sign_witnesses(polynomial):
    assert polynomial[0] > 0
    witnesses = [0]
    sign = 1
    for x in range(1,1001):
        value = arb(0)
        for coefficient in reversed(polynomial):
            value = value*x*x + coefficient
        if sign*value < 0:
            witnesses.append(x)
            sign = -sign
            if len(witnesses) == len(polynomial):
                return witnesses
    raise AssertionError('could not certify every sign change')


def verify():
    ctx.prec = 720
    check_quadrature_budget()
    time = arb(1)/2
    variance = time/2
    normalizer, sums = power_sums(time,32)
    target = origin_derivatives(arb(0),0)[0]/normalizer
    assert 0 < sums[0] < arb('0.006') and arb('0.9942') < target < arb('0.9943')
    for n in range(1,17):
        coefficients = jacobi_coefficients(sums,n)
        defect = sums[0]+coefficients[-1]
        finite_square_sum = coefficients[-1]**2 - (2*coefficients[-2] if n>1 else 0)
        square_defect = sums[1]-finite_square_sum
        assert defect > 0 and square_defect > 0
        polynomial = [arb(1)] + [4**j*coefficients[n-j] for j in range(1,n+1)]
        raw = gaussian_average(polynomial,variance)
        scale = 1+8*defect*variance
        corrected = gaussian_average(polynomial,variance/scale)
        correction_at_zero = corrected[0]/scale.sqrt()
        error = abs(correction_at_zero-target)
        bound = (arb(3)/2)*square_defect/(1-2*sums[0])**(arb(5)/2)
        assert error < bound and error < abs(raw[0]-target)
        print('rank',n,'raw signs',sign_witnesses(raw),
              'corrected signs (rescaled variable)',sign_witnesses(corrected),
              'corrected error',error.str(8),'certified bound',bound.str(8))
    a, b, v = 100**2, Fraction(1001,10)**2, Fraction(1,4)
    assert (a-b)**2-8*v*(a+b)+24*v*v < 0
    print('simple four-root control acquires nonreal zeros after averaging')


if __name__ == '__main__':
    verify()
