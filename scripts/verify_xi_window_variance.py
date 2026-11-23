"""Reconstruct zeta fibers by adaptive rectangles using only moments 0, 1, 2.

All window coordinates are offsets from an exact integer center. No list of
zeta zeros or real-axis sign samples enters the computation.
"""
from fractions import Fraction

from flint import acb, arb, ctx, fmpq

from verify_xi_contour_traces import ZetaJet


def ball(x):
    return arb(x.numerator)/x.denominator


class Window:
    def __init__(self, center):
        self.center = center
        self.jet = ZetaJet(arb(center))
        self.height = arb(9)/16

    def read(self, left, right):
        l, r = ball(left), ball(right)
        vertices = [acb(r,self.height), acb(l,self.height), acb(l,-self.height),
                    acb(r,-self.height)]
        sums = [acb(0) for _ in range(3)]
        tolerance = arb(2)**-57
        for start, end in zip(vertices,vertices[1:]+vertices[:1]):
            half = (end-start)/16
            for j in range(8):
                mid = start+(2*j+1)*half
                logderiv = self.jet.patch(mid)
                for k in range(3):
                    def integrand(z, analytic):
                        return (z+mid)**k*logderiv(z)
                    sums[k] += acb.integral(integrand,-half,half,rel_tol=tolerance,
                                            abs_tol=tolerance,eval_limit=40000)
        sums = [s/acb(0,2*arb.pi()) for s in sums]
        assert all(s.is_finite() and s.imag.contains(0) for s in sums), (left,right,sums)
        count = sums[0].real.unique_fmpz()
        assert count is not None and count >= 0
        return int(count), sums[1].real, sums[2].real

    def verify(self):
        left, right = Fraction(-1,2), Fraction(1,2)
        initial = self.read(left,right)
        active = [(left,right,initial)]
        roots = []
        cuts = 0
        while active:
            l,r,(n,s1,s2) = active.pop()
            if n == 0:
                assert s1.contains(0) and s2.contains(0)
                continue
            det = n*s2-s1**2
            print(' cell',str(l),str(r),'count',n,'det',det.str(11),flush=True)
            if n == 1:
                assert det.contains(0)
                roots.append(s1)
            elif n == 2 and det > 0:
                roots.extend([(s1-det.sqrt())/2,(s1+det.sqrt())/2])
            else:
                assert not det < 0, ('negative variance on a full-strip interval',l,r,det)
                assert r-l > Fraction(1,2**16), ('unresolved or multiple node',l,r)
                m = (l+r)/2
                na,sa,qa = self.read(l,m)
                assert 0 <= na <= n
                active.extend([(m,r,(n-na,s1-sa,s2-qa)),(l,m,(na,sa,qa))])
                cuts += 1
        roots.sort(key=float)
        assert len(roots) == initial[0]
        assert all(ball(left)<x and x<ball(right) for x in roots)
        assert all(a<b for a,b in zip(roots,roots[1:]))
        print('CERTIFIED',self.center,'simple roots',len(roots),'interior cuts',cuts,
              'offsets',[x.str(14) for x in roots],flush=True)


def hostile_checks():
    # Two unit-mass real nodes at +/-1/4 plus one reflected nonreal pair at
    # zero. Large windows can have positive determinant even with the pair.
    for j in range(4,64):
        delta = fmpq(1,2**j)
        broad = 4*(fmpq(1,8)-2*delta**2)
        narrow = -4*delta**2
        assert broad>0 and narrow<0
        # Even a real node at exactly the same ordinate cannot mask the pair.
        assert 3*(-2*delta**2)<0
    print('exact mixed-window and coincident-height controls',60,flush=True)


if __name__ == '__main__':
    ctx.prec = 180
    hostile_checks()
    for center in [7005,10**14,10**15,10**15+1]:
        print('center',center,flush=True)
        Window(center).verify()
