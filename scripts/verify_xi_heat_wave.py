"""Interval checks for heat-wave separation, the prime formula and sampled rates."""
from math import gcd, isqrt
from flint import acb, arb, ctx, fmpz_poly

ctx.prec = 256
TAU = arb(1)/100
HEIGHT = 3*10**12
RADIUS = 18*10**22-1000


def two_ordinate_window():
    g1, g2 = [acb.zeta_zero(j).imag for j in (1, 2)]
    alpha = g2/g1
    N = 10**24
    assert RADIUS*g1/arb.pi()+1 < N
    # Use the interval only to propose a continued-fraction convergent.
    # A single final rational comparison certifies the entire denominator range.
    x = alpha
    a0, a1, b0, b1 = 0, 1, 1, 0
    while b1 <= 2*N:
        q = x.floor().unique_fmpz()
        assert q is not None
        q = int(q)
        a0, a1, b0, b1 = a1, q*a1+a0, b1, q*b1+b0
        x = 1/(x-q)
    assert gcd(a1,b1) == 1 and b1 > 2*N
    det_floor = arb(1)/b1-N*abs(alpha-arb(a1)/b1)
    delta = arb.pi()*det_floor/(1+alpha)
    head = (-TAU*g2*g2).exp()*2*(delta/arb.pi())**2
    logtail = (2*arb(HEIGHT)**2).log()-TAU*(arb(HEIGHT)**2-arb(1)/4)+arb(RADIUS)/2
    assert delta > arb('1e-27') and delta < arb('0.01')
    assert head > arb('1e-57') and logtail < arb('1e-170').log()
    # Small r<=1/10: the negative cosine defect carries r^2, too.
    small_head = (-TAU*g1*g1).exp()*2*(g1/arb.pi())**2
    small_tail = (arb(HEIGHT)**4*(-TAU*(arb(HEIGHT)**2-arb(1)/4)+1).exp())
    assert g1/10 < arb.pi()/2 and small_head > 1 and small_tail < arb('1e-100')
    print('rational separation',a1,b1,'phase lower',delta.str(13),'positive head',head.str(13),
          'log tail upper',logtail.str(12),'radius',RADIUS,flush=True)


def wave_sections():
    orders = [acb.zeta_zero(j).imag for j in range(1,18)]
    ds = [b-a for i,a in enumerate(orders) for b in orders[i+1:]]
    assert min(ds)>1 and max(orders)<100
    N = 10**24
    rmax = arb(18*10**22-10000)/15
    assert rmax*max(ds)/(2*arb.pi())+1<N
    smallest = arb(1)
    pairs = 0
    for i,d1 in enumerate(ds):
        for d2 in ds[i+1:]:
            ratio = d2/d1
            x = ratio
            a0,a1,b0,b1 = 0,1,1,0
            while b1<=2*N:
                q = x.floor().unique_fmpz()
                assert q is not None
                q = int(q)
                a0,a1,b0,b1 = a1,q*a1+a0,b1,q*b1+b0
                x = 1/(x-q)
            assert gcd(a1,b1)==1 and b1>N
            sep = (arb(1)/b1-N*abs(ratio-arb(a1)/b1))/(1+ratio)
            assert sep>arb('1e-36')
            smallest = min(smallest,sep)
            pairs += 1
    # At most one edge of the 17 phases is shorter than 1e-36.
    # Use the least selected Gaussian weight and the coefficient l1 norms
    # of the Lagrange basis to bound the genuine wave quadratic from below.
    sep = arb('1e-36')
    headlog = -TAU*orders[-1]**2-arb(32).log()+30*(sep/2).log()
    taillog = (16*arb(HEIGHT)**2).log()-TAU*(arb(HEIGHT)**2-arb(1)/4)+15*rmax/2
    assert taillog < headlog
    headsmall = -TAU*orders[-1]**2-arb(32).log()+30*(arb('0.1')/101).log()
    tailsmall = (16*arb(HEIGHT)**2).log()+30*(2*arb(HEIGHT)).log()-TAU*(arb(HEIGHT)**2-arb(1)/4)
    assert tailsmall < headsmall
    print('rank 16 wave kernel, difference pairs',pairs,'phase lower',smallest.str(13),
          'admissible total span',18*10**22-10000,'log head lower',headlog.str(12),
          'log tail upper',taillog.str(12),flush=True)


def arbitrary_time_section():
    d = 256
    span = arb(1)/30000
    gs = [acb.zeta_zero(i).imag for i in range(1,d+1)]
    G = arb(500)
    gap = min(b-a for a,b in zip(gs,gs[1:]))
    assert gap > arb('0.01') and gs[-1] < G
    angle = d*span*(gs[-1]-gs[0])/4
    assert angle < arb.pi()/3
    span = arb(1)/41
    mean = sum(gs,arb(0))/d
    vary = sum(((y-mean)**2 for y in gs),arb(0))
    variance = d*span**2*vary/(4*(d*d-1))
    # Global quadratic support to cos(theta), tangent at +/- pi/2.
    orbital = arb.pi()/4-variance/arb.pi()
    assert orbital > arb('0.01')
    M = d*(d-1)//2
    log_sigma = M*(gap/G).log()+orbital.log()-(d-1)*arb(d).log()
    log_head = -TAU*gs[-1]**2-arb(2).log()+2*log_sigma
    log_tail = (d*arb(HEIGHT)**2).log()+2*(d-1)*(2*arb(HEIGHT)/G).log()+span-TAU*(arb(HEIGHT)**2-arb(1)/4)
    assert log_head > -10**6 and log_tail < log_head
    print('arbitrary rank',d,'span 1/41, ordinate gap',gap.str(12),
          'short-span phase upper',angle.str(12),'large-span variance upper',variance.str(12),
          'orbital lower',orbital.str(12),'log head lower',log_head.str(12),
          'log tail upper',log_tail.str(12),flush=True)


def chebyshev_nodes():
    lam = acb(7,arb.pi()/7)**2
    d = arb.pi()/7
    for h in (arb(1)/10000,arb(1)/10**10,arb(2).sqrt()):
        z = (-h*lam).exp()
        u = 2*z-1
        root = (u*u-1).sqrt()
        R = max(abs(u+root),abs(u-root))
        D = ((R.log()/2).cosh().log()*2/h).sqrt()
        assert 0 < D < d and (h > arb('1e-8') or d-D < arb('1e-8'))
        print('model step',h.str(8),'displacement lower',D.str(12),flush=True)
    # At h=1, Im lambda=2*pi exactly so both nodes fold to the positive real axis.
    assert lam.imag.contains(2*arb.pi())
    z = (-lam).exp()
    assert z.imag.contains(0) and 0 < z.real < 1

    # First 29 true positive ordinates are <100 and all lie on the line.
    gs = [acb.zeta_zero(j).imag for j in range(1,30)]
    assert gs[-1] < 100 < acb.zeta_zero(30).imag
    nodes = [(-TAU*g*g).exp() for g in gs]
    tail = arb(100)**2*(-TAU*(arb(100)**2-arb(1)/4)).exp()
    N = 20
    U = fmpz_poly([-1,2])
    prev, pol = fmpz_poly([1]), U
    for _ in range(2,N+1):
        prev, pol = pol, 2*U*pol-prev
    samples = [sum((v**(j+1) for v in nodes),arb(0))+arb(0,tail) for j in range(N+1)]
    total = sum((arb(c)*v for c,v in zip(pol.coeffs(),samples)),arb(0))
    direct = sum((v*(N*(2*v-1).acos()).cos() for v in nodes),arb(0))
    # The true remote-node effect is bounded by the same absolute coefficient sum.
    err = sum(abs(int(c)) for c in pol.coeffs())*tail
    assert abs(total-direct) < arb('1e-20') and err < arb('1e-20')
    print('order 20 arithmetic time-sample polynomial',total.str(14),
          'full omitted-tail upper',err.str(6),flush=True)
    return gs


def prime_powers(M):
    pflags = bytearray([1])*(M+1)
    for p in range(2,isqrt(M)+1):
        if pflags[p]:
            pflags[p*p::p] = bytes((M-p*p)//p+1)
    for p in range(2,M+1):
        if pflags[p]:
            q,lp = p,arb(p).log()
            while q <= M:
                yield q,lp
                q *= p


def prime_comparison(gs,r):
    r = arb(r)
    pole = (TAU/4).exp()*(r/2).cosh()
    pos = arb(0)
    M = 20000
    for m,lp in prime_powers(M):
        l = arb(m).log()
        pos += lp/arb(m).sqrt()*((-(r-l)**2/(4*TAU)).exp()+(-(r+l)**2/(4*TAU)).exp())
    coef = 1/(4*(arb.pi()*TAU).sqrt())
    b = arb(M).log()
    k = (b-r)/(2*TAU)-arb(1)/2
    assert k>0
    prime_tail = 2*coef*(b/2-(b-r)**2/(4*TAU)).exp()*(b/k+1/k**2)
    def integrand(u,analytic):
        z = acb(1)/4+acb(0,1)*u/2
        zz = acb(1)/4-acb(0,1)*u/2
        return (-TAU*u*u).exp()*(r*u).cos()*((z.digamma()+zz.digamma())/2-arb.pi().log())
    arch = sum((acb.integral(integrand,j,j+1,rel_tol=arb('1e-22'),abs_tol=arb('1e-25'))
                for j in range(100)),acb(0)).real/(2*arb.pi())
    arch_tail = (-100*arb(1)).exp()/(4*arb.pi()*TAU)
    actual = sum(((-TAU*g*g).exp()*(r*g).cos() for g in gs),arb(0))
    zero_tail = 100**2*(-TAU*(100**2-arb(1)/4)+r/2).exp()
    prime_value = pole+arch-coef*pos+arb(0,arch_tail+prime_tail)
    true_value = actual+arb(0,zero_tail)
    assert (prime_value-true_value).contains(0) and abs(prime_value-true_value)<arb('1e-16')
    print('wave at',r.str(4),'true divisor',true_value.str(17),'prime formula',prime_value.str(17),flush=True)


if __name__ == '__main__':
    two_ordinate_window()
    wave_sections()
    arbitrary_time_section()
    gs = chebyshev_nodes()
    for r in (0,2,6):
        prime_comparison(gs,r)
