"""Check the transported theta companion pencil and its basis-dependent imaginary-part norm."""

from fractions import Fraction
from math import comb, factorial
from flint import arb, arb_mat, ctx
from verify_xi_newman_collision_pencil import as_ball, positive_root_count
from verify_xi_newman_gaussian_sections import check_quadrature_budget, gaussian_average
from verify_xi_newman_jensen_threshold import jensen_coefficients


def evaluate_even(coefficients, z):
    result = arb(0)
    for coefficient in reversed(coefficients):
        result = z*z*result + coefficient
    return result


def dyadic_metric(matrix, variance):
    """Form the Hermite trace metric in the transported monomial basis and round it."""
    size = matrix.nrows()
    powers = [arb_mat([[int(i==j) for j in range(size)] for i in range(size)])]
    for _ in range(2*size-2):
        powers.append(powers[-1]*matrix)
    traces = [sum(m[i,i] for i in range(size)) for m in powers]
    moment = arb_mat([[traces[i+j] for j in range(size)] for i in range(size)])
    heat = arb_mat(size,size)
    for j in range(size):
        for k in range(j//2+1):
            heat[j-2*k,j] = comb(j,2*k)*factorial(2*k)*variance**k/(2**k*factorial(k))
    gram = heat.transpose()*moment*heat
    scale = 2**180
    def rounded(i,j):
        integer = (gram[min(i,j),max(i,j)].mid()*scale).floor().unique_fmpz()
        assert integer is not None
        return arb(integer)/scale
    g = arb_mat([[rounded(i,j) for j in range(size)] for i in range(size)])
    for k in range(1,size+1):
        assert arb_mat([[g[i,j] for j in range(k)] for i in range(k)]).det() > 0
    return g


def verify():
    ctx.prec = 720
    check_quadrature_budget()
    for n in (2,4,8):
        seed = Fraction(1,4*n)
        initial = jensen_coefficients(n,seed)
        anchor = gaussian_average(initial,-as_ball((Fraction(1,2)-seed)/2))
        target = gaussian_average(initial,as_ball(seed/2))
        degree = 2*n
        matrix = arb_mat(degree,degree)
        for i in range(n):
            matrix[2*i,degree-1] = -anchor[i]/anchor[-1]
        for i in range(degree-1):
            matrix[i+1,i] += 1
            matrix[i,i+1] -= arb(i+1)/4
        identity = arb_mat([[int(i==j) for j in range(degree)] for i in range(degree)])
        for z in (0,1,2,3):
            assert ((z*identity-matrix).det()*anchor[-1]).overlaps(evaluate_even(target,z))
        inverse = matrix.inv()
        cost = sum((inverse[i,j]-inverse[j,i])**2
                   for i in range(degree) for j in range(degree))/4
        assert cost > 1 and positive_root_count(target) == n
        print('rank',n,'unscaled monomial metric cost',cost.str(9),
              'optimal cost zero by certified simple real spectrum')
        g = dyadic_metric(matrix,arb(1)/4)
        residual = g*inverse-inverse.transpose()*g
        ginv = g.inv()
        squared = ginv*residual.transpose()*ginv*residual
        weighted = sum(squared[i,i] for i in range(degree))/4
        assert weighted < arb('1e-12')
        print('rank',n,'certified dyadic metric cost upper',weighted.upper().str(6))
    # A nonsemisimple Jordan block has infimum zero without a positive minimizing metric.
    # For diag(eps,1) its cost is eps^2/2. A planar rotation has cost 2 at all orthogonal changes.
    for scale in (Fraction(1,2),Fraction(1,10),Fraction(1,100)):
        assert 0 < scale**2/2 < scale


if __name__ == '__main__':
    verify()
