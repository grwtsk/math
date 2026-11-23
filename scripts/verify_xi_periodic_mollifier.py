"""Rigorous upper norm for a pole-cancelling Dirichlet mollifier at the exterior center."""
from collections import defaultdict
from fractions import Fraction
from math import gcd, lcm
from flint import arb, ctx

ctx.prec = 160
R = 2021500000000004
TAU = 2024500000000000
N = 750


def rational(q):
    return arb(q.numerator) / q.denominator


def arithmetic_coefficients():
    mu = [1] * (N + 1)
    phi = list(range(N + 1))
    jordan = [n*n for n in range(N + 1)]
    for p in range(2, N + 1):
        if phi[p] != p:
            continue
        for n in range(p, N + 1, p):
            mu[n] *= -1
            phi[n] -= phi[n]//p
            jordan[n] -= jordan[n]//(p*p)
        for n in range(p*p, N + 1, p*p):
            mu[n] = 0
    # Common-denominator quantization of the two totient weights.
    b = [0, 0] + [mu[r]*(10**10//(176*phi[r] + jordan[r]))
                   for r in range(2, N + 1)]
    den = sum(mu[r]*b[r] for r in range(1, N + 1))
    c = [0] + [d*sum(mu[k]*b[d*k] for k in range(1, N//d+1))
               for d in range(1, N+1)]
    assert c[1] == den and all(c[d] % d == 0 for d in range(1, N+1))
    for r in range(1, N+1):
        assert sum(c[d]//d for d in range(r, N+1, r)) == b[r]
    v = Fraction(sum(phi[r]*b[r]**2 for r in range(1,N+1)), den**2)
    variance = Fraction(sum(jordan[r]*b[r]**2 for r in range(1,N+1)), 12*den**2)
    return c, den, v, variance


def main():
    c, den, v, variance = arithmetic_coefficients()
    weights = defaultdict(int)
    # The independent lcm and gcd sums check both diagonalized forms.
    variance_sum = 0
    for d in range(1, N+1):
        if c[d]:
            for e in range(1, d+1):
                if c[e]:
                    mult = 1 if d == e else 2
                    weights[lcm(d,e)] += mult*c[d]*c[e]
                    variance_sum += mult*(c[d]//d)*(c[e]//e)*gcd(d,e)**2
    assert Fraction(variance_sum, 12*den**2) == variance
    assert sum(Fraction(val, m*den**2) for m, val in weights.items()) == v
    correction = sum(arb(val)*arb(m).log()/m for m,val in weights.items())/den**2
    mass = arb(sum(abs(x) for x in c))/den
    density = rational(v)

    def harmonic(x):
        return density*(arb(x).log()+arb.const_euler()) - correction

    def harmonic_error(x):
        assert x > 2*N*N
        return 4*mass**2/x

    def upper_certificate(ray, center):
        u = arb(ray)-arb(1)/2
        slope = (u*u+center**2).sqrt()/u
        Y = 4*ray
        head = harmonic(Y)+harmonic_error(Y)
        rows = 1/u+1/(u+1)
        head += rows*(Y*density+mass**2)
        tail_integral = rational(variance)/Y + mass**2*N**2/(2*arb(Y)**2)
        tail = 2*ray*((1+slope)**2*tail_integral
                      +(1+slope)*slope*mass**2/(4*(u+1)*Y))
        return head, tail

    head, tail = upper_certificate(R, TAU)
    evaluation_error = mass/arb(2)**99
    upper = (head+tail)/(1-evaluation_error)**2
    X = R//8
    decay = (-arb(R)/X).exp()
    lower_gram = 1-(-arb(R)/(arb(X)+arb(1)/2)).exp()-2*decay/(1-decay)
    lower = lower_gram*(harmonic(X)-harmonic_error(X))/(1+evaluation_error)**2
    assert lower > 1 and lower < upper and upper < arb('9.44')
    deficit = upper.log()/2
    assert deficit < arb('1.123')
    for label, val in [('mean coefficient square',density),('centered primitive variance',rational(variance)),
                       ('absolute coefficient sum',mass),('Mellin head upper',head),('Mellin tail upper',tail),
                       ('mollifier Q lower',lower),('mollifier Q upper',upper),('true Jensen upper',deficit)]:
        print(label, val.str(14))
    target = 3*arb(R)/(4*(2*arb(R)**2+arb(1)/4))
    for cutoff in (22*10**30, 4*10**31, 5*10**31, 8*10**31, 10**40):
        U = arb(cutoff)
        radius = 3*U/4
        center = arb(15).sqrt()*U/4
        head2, tail2 = upper_certificate(radius, center)
        other_deficit = ((head2+tail2)/(1-evaluation_error)**2).log()/2
        eps = R/(U-TAU)**2
        factor = (4*R/(3*U))*(1+1/(4*radius**2))/((1-TAU/U)**2*(1-eps**2))
        remainder = factor*other_deficit
        assert remainder < target
        if cutoff >= 5*10**31:
            assert 2*remainder < target
        print('divisor cutoff',cutoff,'positive Jensen tail upper',remainder.str(13),
              'relative to order-three tolerance',(remainder/target).str(11))
    # Finite control of the leading logarithmic coefficient for this same D.
    remote = 10**600
    h3, t3 = upper_certificate(remote, remote)
    inv_rows = 1/(arb(remote)-arb(1)/2)+1/(arb(remote)+arb(1)/2)
    loss = inv_rows*(remote*density+mass**2)+mass**2*(1/arb(remote)+1/(2*arb(remote)))
    lower3 = (harmonic(remote)-harmonic_error(remote)-loss)/(1+evaluation_error)**2
    upper3 = (h3+t3)/(1-evaluation_error)**2
    scaled_lo = lower3/arb(remote).log()
    scaled_hi = upper3/arb(remote).log()
    assert scaled_lo > density-arb('0.005') and scaled_hi < density+arb('0.005')
    print('Q/log R at R=tau=1e600 lies between',scaled_lo.str(12),scaled_hi.str(12))
    print('support',N,'common denominator',den,'nonzero coefficients',sum(x!=0 for x in c))


if __name__ == '__main__':
    main()
