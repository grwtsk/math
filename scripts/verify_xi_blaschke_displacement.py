"""Sharp displacement budgets and causal Gram obstructions at a single exterior probe."""
from flint import acb, acb_mat, arb, ctx, fmpq
from verify_xi_reflected_taylor_budget import boxes, kernel, s

LOW = 3 * 10**12
HIGH = 4046 * 10**12
HEIGHT = (LOW + HIGH) // 2
RADIUS = (HIGH - LOW) // 2 + 4


def gram_floor(radius, height, cutoff):
    # Inner product is conjugate-linear in its first argument.
    a = acb(arb(radius)-arb(1)/2, -height)
    alpha, beta = 1+1/a, -1/a

    def power(x, z):
        return (acb(x).log()*z).exp()

    def hh(m, n):
        d = max(m,n)
        return (power(arb(m)/d,a.conjugate())*power(arb(n)/d,a)
                *(1-(arb(d)/cutoff)**(2*radius))/(2*radius*d))

    def ho(m, n):
        d = max(m,n)
        return (power(arb(m)/d,a.conjugate())*(1-power(arb(d)/cutoff,a.conjugate()+1))
                /((a.conjugate()+1)*d))

    def gram(m,n):
        constant = 1/arb(max(m,n))-1/arb(cutoff)
        return (abs(alpha)**2*hh(m,n) + alpha.conjugate()*beta*ho(m,n)
                + beta.conjugate()*alpha*ho(n,m).conjugate() + abs(beta)**2*constant)

    indices = range(1,cutoff)
    matrix = acb_mat([[gram(m,n) for n in indices] for m in indices])
    cross = acb_mat([[alpha.conjugate()*hh(m,1)+beta.conjugate()*ho(1,m).conjugate()]
                     for m in indices])
    result = 2*radius*(hh(1,1)-(cross.conjugate().transpose()*matrix.solve(cross))[0,0])
    assert result.imag.contains(0)
    return result.real


def main():
    ctx.prec = 250
    numerator, denominator = kernel(fmpq(13,20))
    cap = fmpq(3,8)
    assert boxes(numerator + (fmpq(5863,1000)/cap)*s*denominator,cap,0) == 1
    sharp = 2048/(81*arb(3).log()**2)
    local = (arb('10.94575312')/sharp).sqrt()
    assert local > arb('0.72284438') and (-local).exp() < arb('0.485370')
    j = arb(3)*RADIUS/(4*(2*arb(RADIUS)**2+arb(1)/4))
    tolerance = (2*j).expm1()
    lower = gram_floor(RADIUS,HEIGHT,8)
    assert lower > arb('4.32205007597e-16') and lower/tolerance > arb('1.16493')
    print("local mass",cap,"boxes",1,"sharp quadratic coefficient",sharp.str(16),
          "local Jensen threshold",local.str(16))
    print("radius",RADIUS,"height",HEIGHT,"J threshold",j.str(18),
          "quadratic excess tolerance",tolerance.str(18),
          "seven-column Gram floor",lower.str(18),"floor ratio",(lower/tolerance).str(16))

    # The first omitted prime produces a new pulse for every sharp Mobius cutoff.
    b = arb(RADIUS)-arb(1)/2
    max_degree = 10**13
    max_p = 2*max_degree
    preceding = max_p**2*(-b/max_p).exp()
    correction = 2*arb(max_degree)/RADIUS
    target = 2*arb(2)**(-b)
    residual = (-arb(1)/2).exp()-preceding-correction-target
    assert max_p*(arb(1)/(2*RADIUS)).expm1() < 1
    assert residual > arb('0.59')
    # Normalizing |H(s0)|<=2; use 1-exp(-u)>=u/2 for 0<=u<=1.
    tail_excess = arb('0.59')**2/(8*max_p)
    assert tail_excess > tolerance and tail_excess > arb('2.17e-15')
    print("maximum excluded sharp cutoff",max_degree,"preceding pulse ceiling",preceding.str(12),
          "residual floor",residual.str(15),"normalized excess lower",tail_excess.str(16))


if __name__ == '__main__':
    main()
