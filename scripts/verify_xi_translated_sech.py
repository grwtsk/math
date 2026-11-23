"""Arb certificate for a translated xi zero-count window, using python-flint 0.8.0."""

from fractions import Fraction
from flint import acb, arb, arb_series, ctx

from verify_xi_shifted_hankel import ball, xi_sign


U, V = 9996, 10004
LOW, HIGH = U + 1, V - 1


def continuous_zeta_argument(left, right):
    """Certify a lift of arg ζ(1+it) by enclosing each local ratio in Re>0."""
    def point(t):
        return acb(1, ball(t)).zeta()

    count = 0
    def lift(l, r, zl, zr):
        nonlocal count
        mid = (l+r)/2
        tube = ball(mid) + arb(0, ball((r-l)/2))
        if (acb(1, tube).zeta() / zl).real > 0:
            count += 1
            return (zr/zl).arg()
        assert r-l > Fraction(1, 2**18)
        zm = point(mid)
        return lift(l, mid, zl, zm) + lift(mid, r, zm, zr)

    value = lift(Fraction(left), Fraction(right), point(left), point(right))
    return value, count


def gamma_average(t, analytic):
    z = 1 + acb(0, 1)*t
    beta = (((z+1)/2).digamma() - (z/2).digamma())/2
    return z.digamma() + (2*z-3)*beta - 1 - arb(2).log()


def arithmetic_window(left, right, last):
    gamma = acb.integral(gamma_average, left, right).real
    arch = (gamma-(right-left)*arb.pi().log())/(2*arb.pi())
    args, count = continuous_zeta_argument(left, right)
    for j in range(1, last+1):
        # For sigma >= 2 all values lie in Re>0 by the absolute zeta series.
        diff = acb(j+1, right).zeta().arg() - acb(j+1, left).zeta().arg()
        args += (-1)**j * diff
    z = arb_series([2, 1]).zeta()
    tail = (right-left)*arb(2)**(1-last)*(-z[1]/z[0])
    return arch + 2*(args + arb(0, tail))/arb.pi(), count


def find_real_roots():
    step = 16
    lo, hi = U-4, V+4
    last = Fraction(lo)
    previous = xi_sign(last)
    roots = []
    for j in range(lo*step+1, hi*step+1):
        t = Fraction(j, step)
        sign = xi_sign(t)
        if sign != previous:
            a, b = last, t
            for _ in range(25):
                mid = (a+b)/2
                if xi_sign(mid) == previous:
                    a = mid
                else:
                    b = mid
            roots.append((a,b))
        last, previous = t, sign
    return roots


def cumulative(t):
    return (arb.pi()*t).sinh().atan()/arb.pi()


if __name__ == "__main__":
    ctx.prec = 112
    ctx.cap = 2
    area, leaves = arithmetic_window(U, V, 48)
    intervals = find_real_roots()
    credited = arb(0)
    inside = 0
    for lo, hi in intervals:
        root = ball((lo+hi)/2) + arb(0, ball((hi-lo)/2))
        credited += cumulative(V-root) - cumulative(U-root)
        if LOW <= lo < hi <= HIGH:
            inside += 1
        else:
            assert hi < LOW or HIGH < lo
    deficit = area-credited
    q = 2*cumulative(arb(1))
    print("arithmetic interval mass", area)
    print("continuous argument segments", leaves)
    print("credited roots and target roots", len(intervals), inside)
    print("remaining mass", deficit)
    print("uniform cost per additional zero", q)
    assert len(intervals) == 19 and inside == 7
    assert arb("8.8391050320624") < area < arb("8.8391050320626")
    assert arb("0.0000024") < deficit < arb("0.0000025")
    assert deficit < q and arb("0.945") < q
