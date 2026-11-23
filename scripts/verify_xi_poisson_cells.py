"""Certify genuine zeta divisor cells using real signs and one exterior probe.

The mathematical certificate is in XiPoissonCellCertificate.md. No previously
computed zeta zeros, zero counts, or verified-height theorem enter this test.
Requires python-flint; all comparisons deciding a certificate use Arb balls or
exact integer arithmetic.
"""
from bisect import bisect_left, bisect_right
from concurrent.futures import ProcessPoolExecutor
from fractions import Fraction
from functools import lru_cache

from flint import acb, acb_series, arb, ctx

UNIT = 64  # grid tick denominator
SCALE = 2**40


@lru_cache(maxsize=None)
def sign_at(tick):
    t = arb(tick)/UNIT
    s = acb(arb(1)/2, t)
    # The discarded gamma modulus, pi power modulus and s(s-1)/2 factor
    # have a common fixed sign. Only differences of signs enter the test.
    angle = (s/2).lgamma().imag - t*arb.pi().log()/2
    z = s.zeta()*acb(0, angle).exp()
    assert z.imag.contains(0)
    if z.real > 0:
        return 1
    assert z.real < 0, (tick, z)
    return -1


def outer_probe(n):
    s = acb(arb(3)/2, n)
    pair = acb_series([s, 1], 2).zeta()
    return (1/s+1/(s-1)-arb.pi().log()/2+(s/2).digamma()/2+pair[1]/pair[0]).real


def brackets(ticks):
    result = []
    for l, u in zip(ticks, ticks[1:]):
        if sign_at(l) == sign_at(u):
            continue
        lo, hi = l, u
        while hi-lo > 1:
            mid = (lo+hi)//2
            if sign_at(lo) == sign_at(mid):
                lo = mid
            else:
                hi = mid
        result.append((lo, hi))
    return result


def certificate(n, spans, left_ends, probe):
    center = UNIT*n
    l = bisect_left(left_ends, center-UNIT*16)
    u = bisect_right(left_ends, center+UNIT*16)
    paid = 0
    for lo, hi in spans[l:u]:
        furthest = max(abs(lo-center), abs(hi-center))
        paid += SCALE*UNIT**2//(UNIT**2+furthest**2)
    return probe - arb(paid)/SCALE


def verify(last):
    ctx.prec = 112
    halo = 20
    limit = (last+halo)*UNIT
    grid = set(range(0, limit+1, UNIT//4))
    probes = [outer_probe(n) for n in range(last+1)]
    rounds = []
    for step in [UNIT//4, UNIT//16, 1]:
        ticks = sorted(grid)
        positive = brackets(ticks)
        spans = [(-u,-l) for l,u in reversed(positive)] + positive
        left_ends = [lo for lo,_ in spans]
        residuals = [certificate(n, spans, left_ends, v) for n,v in enumerate(probes)]
        failed = [n for n,r in enumerate(residuals) if not r < arb(4)/5]
        rounds.append((step, len(failed)))
        if not failed:
            break
        if step != 1:
            spacing = UNIT//16 if step==UNIT//4 else 1
            for n in failed:
                left, right = max(0, (n-3)*UNIT), min(limit, (n+3)*UNIT)
                grid.update(range(left, right+1, spacing))
    assert not failed, failed
    endpoint = (2*last+1)*UNIT//2
    within = [(l,u) for l,u in positive if u <= endpoint]
    assert not any(l < endpoint < u for l,u in positive)
    worst = max(range(len(residuals)), key=lambda j: float(residuals[j].upper()))
    assert all(r < arb(4)/5 for r in residuals)
    print("cells",len(probes),"certified through",Fraction(endpoint,UNIT),
          "simple positive zeros",len(within))
    print("resolution/failing-cell counts",rounds,"distinct critical sign evaluations",sign_at.cache_info().misses)
    print("largest residual (rounded for display)",residuals[worst].str(16),"at",worst)
    print("all residuals nonnegative",all(r >= 0 for r in residuals))
    assert all(r >= 0 for r in residuals)


def high_sign(tick):
    ctx.prec = 80
    return sign_at(tick)


def beyond_height_sample():
    # A separate island at a large ordinate, independently of any preceding
    # verified height. All grid endpoints and received signs are exact.
    ctx.prec = 112
    center = 10**13
    cells = range(center, center+5)
    ticks = list(range((center-46)*UNIT, (center+50)*UNIT+1, UNIT//32))
    with ProcessPoolExecutor(max_workers=8) as pool:
        signs = list(pool.map(high_sign, ticks, chunksize=12))
        spans = [(l,u) for l,u,sl,su in zip(ticks,ticks[1:],signs,signs[1:]) if sl!=su]
        mids = [(l+u)//2 for l,u in spans]
        mid_signs = list(pool.map(high_sign, mids, chunksize=8))
        even = [l for l,sl,su in zip(ticks,signs,signs[1:])
                if (center-2)*UNIT<=l<(center+5)*UNIT and sl==su]
        local_mid_signs = list(pool.map(high_sign, [l+1 for l in even], chunksize=3))
    by_tick = dict(zip(ticks,signs))
    extra = [(l+i,l+i+1) for l,v in zip(even,local_mid_signs) if v!=by_tick[l] for i in (0,1)]
    spans = [(m,u) if by_tick[l]==v else (l,m) for (l,u),m,v in zip(spans,mids,mid_signs)]
    # Direct absolutely convergent prime series. The integral of log(t)t^-3/2
    # from N to infinity bounds every omitted prime-power contribution.
    cutoff = 65536
    prime = bytearray([1])*(cutoff+1)
    prime[:2] = bytes(2)
    powers = []
    for p in range(2,cutoff+1):
        if not prime[p]:
            continue
        if p*p<=cutoff:
            prime[p*p::p] = bytes((cutoff-p*p)//p+1)
        power = p
        while power<=cutoff:
            powers.append((arb(power).log(),arb(p).log()/(arb(power)*arb(power).sqrt())))
            power *= p
    tail = (2*arb(cutoff).log()+4)/arb(cutoff).sqrt()
    certified = []
    for n in cells:
        s = acb(arb(3)/2,n)
        elementary = (1/s+1/(s-1)+(s/2).digamma()/2-arb.pi().log()/2).real
        prime_part = sum(weight*(n*logq).cos() for logq,weight in powers)
        upper = elementary-prime_part+tail
        paid = sum(SCALE*UNIT**2//(UNIT**2+max(abs(n*UNIT-l),abs(n*UNIT-u))**2) for l,u in spans)
        residual = upper-arb(paid)/SCALE
        direct = outer_probe(n)
        assert abs(direct-(elementary-prime_part)) < tail
        # The two certified endpoint signs fix the parity of the real-root
        # count in this entire half-integer cell. Any missing real roots
        # therefore cost at least two elementary real-root contributions.
        lo,hi = n*UNIT-UNIT//2,n*UNIT+UNIT//2
        chosen = sum(lo<=l and u<=hi for l,u in spans)
        assert (-1)**chosen == by_tick[lo]*by_tick[hi]
        assert not any(l<t<u for l,u in spans for t in [lo,hi])
        passed = residual < arb(8)/5
        label = "certified simple zeros" if passed else "sign-changing brackets only"
        print("remote cell", n, "interval", Fraction(lo,UNIT), Fraction(hi,UNIT),
              "coarse residual upper", residual.str(14), label, chosen, flush=True)
        extra_paid = sum(SCALE*UNIT**2//(UNIT**2+max(abs(n*UNIT-l),abs(n*UNIT-u))**2)
                         for l,u in extra)
        residual -= arb(extra_paid)/SCALE
        chosen += sum(lo<=l and u<=hi for l,u in extra)
        assert not any(l<t<u for l,u in extra for t in [lo,hi])
        assert (-1)**chosen == by_tick[lo]*by_tick[hi]
        if residual < arb(8)/5:
            certified.append((n, chosen))
            print("refined certified cell", n, "simple zeros", chosen,
                  "residual upper", residual.str(14), flush=True)
        else:
            print("refined inconclusive cell", n, "brackets", chosen,
                  "residual upper", residual.str(14), flush=True)
    assert certified == list(zip(cells, (5, 5, 4, 5, 4)))
    print("certified remote centers and counts", certified, "raw signs", len(ticks)+len(mids)+len(even),
          "prime-series tail", tail.str(12), flush=True)


if __name__ == '__main__':
    verify(2048)
    beyond_height_sample()
