"""Exact reflected-pair certificates and exterior Euler compensation inequalities."""
from math import isqrt
from flint import acb_series, arb, ctx, fmpq, fmpq_mpoly_ctx

ring = fmpq_mpoly_ctx.get(("x","s"))
x,s = ring.gens()


def kernel(h):
    minus,plus = 1-s,1+s
    dm,dp = minus**2+x,plus**2+x
    def term(z):
        return (z-1)*x+z*z*(z+1)-1-h
    return term(minus)*dp**2+term(plus)*dm**2, (dm*dp)**2


def certify(poly, left, right, xmin):
    # x >= xmin, left <= s <= right. Send s=(left+right*v)/(1+v).
    # All coefficients in the remaining two nonnegative variables must be >=0.
    shifted = poly.compose(x+xmin,s)
    terms = shifted.to_dict()
    degree = max(j for i,j in terms)
    cleared = ring.constant(0)
    for (i,j),a in terms.items():
        cleared += a*x**i*(left+right*s)**j*(1+s)**(degree-j)
    return all(a>=0 for a in cleared.to_dict().values())


def boxes(poly, limit, xmin):
    for pieces in [1,4,16,64]:
        if all(certify(poly,limit*j/pieces,limit*(j+1)/pieces,xmin) for j in range(pieces)):
            return pieces
    raise AssertionError((limit,xmin))


def aligned_euler_section(g):
    limit = 10**6
    sieve = bytearray([1]) * (limit+1)
    for p in range(2, isqrt(limit)+1):
        if sieve[p]:
            sieve[p*p::p] = bytes((limit-p*p)//p+1)
    mass_one = arb(0)
    mass_three_halves = arb(0)
    third = arb(0)
    count = 0
    for p in range(2,limit+1):
        if not sieve[p]:
            continue
        logp = arb(p).log()
        m,k = p,1
        while m <= limit:
            term = logp/(m*arb(m).sqrt())
            mass_one += logp/m
            mass_three_halves += term
            third += term*(k*logp)**3/6
            count += 1
            m *= p
            k += 1
    halfplane_lower = g-mass_one
    test_excess = third-(g-mass_three_halves)
    assert halfplane_lower > arb('0.20798563') and test_excess > arb('2.66153079')
    print("Euler section",limit,"prime powers",count,
          "half-plane lower",halfplane_lower.str(14),
          "third Taylor excess",test_excess.str(14))


def main():
    ctx.prec=160
    ctx.cap=4
    z=acb_series([arb(3)/2,1],4).zeta().log().derivative()
    b0,b1=abs(z[0]),abs(z[1])
    T=3*arb(10)**12-2
    g=(T/(2*arb.pi())).log()/2
    for h,dx,far in [(fmpq(13,50),fmpq(253,1000),2),
                     (fmpq(13,20),fmpq(1,10),4)]:
        p,q = kernel(h)
        small_boxes=boxes(p,dx,0)
        far_boxes=boxes(p,fmpq(1,2),far**2)
        compensation=arb(h)*(g+b0)-b1-(arb(h)+1)/T
        assert compensation>0 and arb(h)<arb(2).log()
        print("h",h,"transverse cutoff",dx,"height radius",far,
              "exact box counts",small_boxes,far_boxes,"Euler margin",compensation.str(14))
        if h==fmpq(13,20):
            charged=boxes(p+79*s*s*q,fmpq(1,2),0)
            assert compensation/79>arb('0.07421849')
            print("energy denominator",79,"exact boxes",charged,
                  "local squared displacement lower",(compensation/79).str(14))
    aligned_euler_section(g)


if __name__=="__main__":
    main()
