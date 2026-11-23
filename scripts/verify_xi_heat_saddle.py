"""Certify scalar bounds for the uniform heat-derivative argument and true xi moments.

The global theorem uses the published finite-height zero theorem. The signed
finite product below separately tests the failure of the all-order extension.
"""
from math import factorial
from flint import acb, acb_series, arb, arb_mat, ctx


def scalar_bounds():
    T = arb(3*10**12)
    N = arb(10**21)
    base = T/2
    tmax = N/base**2
    # F'(s) grows, and log(s+20)<=log(s)+20/s. The log(s) coefficient in
    # 20/(2pi)*log(s/2pi)-.28*(log(s)+log(s+20)) is positive.
    gap = 20/(2*arb.pi())*(base/(2*arb.pi())).log() - arb(28)/100*(2*base.log()+20/base)
    assert gap > 65 and base+20 < T*arb(51)/100
    tail = ((1+(T/(2*arb.pi())).log())/(arb.pi()*T)
            +(arb(28)/100+arb(112)/100*T.log())/T**2)/2
    assert tail < arb('1.480e-12')
    central_phase = tmax*40+N/(12*base**3)
    central_floor = (-2*tmax*20**2).exp()*central_phase.cos()
    assert central_floor > arb('0.700') and central_phase < arb('0.018')
    assert N/(12*T**3) < arb('0.001')
    assert ((N/T**2+tmax)/4).exp() < 2
    # s^2 exp(-s^2/(18N)) decreases for s>=base.
    cost = 12*base**2*(-base**2/(18*N)).exp()
    assert base**2 > 18*N and cost < arb('1e-28')
    print('order',10**21,'zero-count difference lower',gap.str(12),
          'positive head relative lower',central_floor.str(12),
          'far saddle cost per inverse-square unit',cost.str(12),
          'positive-ordinate tail',tail.str(12))


def true_moments():
    order = 10
    ctx.prec, ctx.cap = 512, 2*order+2
    s = acb_series([acb(arb(1)/2),1])
    xi = s*(s-1)/2*(s/2).gamma()*(-s*arb.pi().log()/2).exp()*s.zeta()
    lg = (xi/xi[0]).log()
    assert all(lg[2*k+1].contains(0) for k in range(order))
    S = [arb(0)]+[(-1)**(k-1)*k*lg[2*k].real for k in range(1,order+1)]
    n = 10**21
    c = arb(1)
    moments = [arb(0)]
    for k in range(1,order+1):
        c *= arb(n+k-1)/n
        moments.append(c*200**k*S[k])
    determinants = []
    for rank in range(1,6):
        mat = arb_mat([[moments[i+j+1] for j in range(rank)] for i in range(rank)])
        det = mat.det()
        assert det > 0
        determinants.append(det.str(8))
    for k in range(1,order-1):
        assert S[k]*S[k+2] > arb(n+k)/(n+k+1)*S[k+1]**2
    print('true arithmetic S1',S[1].str(25),'S2',S[2].str(25),'scaled leading minors',determinants)


def signed_control():
    lam = acb(7,arb(1)/2)**2
    a, b = lam.real, lam.imag
    R = abs(lam)/a
    n = 10000
    # Choose a nearest odd phase multiple instead of relying on a sampled phase.
    theta = lam.arg()
    phase = n*(theta-b/a)
    j = ((phase/arb.pi()-1)/2+arb(1)/2).floor().unique_fmpz()
    assert j is not None
    x = b/(theta-(2*int(j)+1)*arb.pi()/n)
    def summand(z):
        return (n*((z/x).log()+1-z/x)).exp()
    result = summand(acb(4)).real+2*summand(lam).real
    assert result < -R**n
    print('off-line control order',n,'positive scan coordinate',x.str(12),
          'normalized signed derivative over maximal exponential weight',(result/R**n).str(12))


if __name__ == '__main__':
    ctx.prec = 180
    scalar_bounds()
    true_moments()
    signed_control()
