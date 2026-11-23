"""Xi Newton pencil and multiplicities. Requires python-flint 0.8.0."""
from fractions import Fraction
from flint import arb, arb_mat

from verify_xi_shifted_hankel import xi_moments


def ball(q):
    return arb(q.numerator) / q.denominator


def sign_at(coeff, q):
    value = arb(0)
    for a in reversed(coeff):
        value = value * ball(q) + a
    if value > 0:
        return 1
    if value < 0:
        return -1
    raise ArithmeticError("The computed ball does not determine the sign")


def isolate(coeff, iterations):
    """Count disjoint sign changes, then bisect each using rational endpoints."""
    grid = [Fraction(j, 20) for j in range(161)]
    signs = [sign_at(coeff, q) for q in grid]
    roots = []
    for i in range(len(grid) - 1):
        if signs[i] == signs[i+1]:
            continue
        lo, hi = grid[i:i+2]
        for _ in range(iterations):
            mid = (lo + hi) / 2
            if sign_at(coeff, mid) == signs[i]:
                lo = mid
            else:
                hi = mid
        roots.append(ball((lo+hi)/2) + arb(0, ball((hi-lo)/2)))
    assert len(roots) == len(coeff) - 1
    return roots


def pencil(moments, n, r):
    # Scaling each reciprocal node by 1000 keeps the root search convenient.
    # We recover the same multiplicities after normalizing by the scaled node.
    p = [moments[k] * 1000**k for k in range(len(moments))]
    h = arb_mat([[p[r+i+j] for j in range(n)] for i in range(n)])
    rhs = arb_mat([[-p[r+n+i]] for i in range(n)])
    q = h.solve(rhs)
    nodes = isolate([q[i, 0] for i in range(n)] + [arb(1)], 100 + 5*r)
    vandermonde = arb_mat([[x**i for x in nodes] for i in range(n)])
    fitted = vandermonde.solve(arb_mat([[p[r+i]] for i in range(n)]))
    return [((1000/x).sqrt(), fitted[j,0]/x**r) for j,x in enumerate(nodes)]


if __name__ == "__main__":
    moments = xi_moments(88)
    for r in (16, 40, 80):
        pairs = sorted(pencil(moments, 4, r), key=lambda item: float(item[0].mid()))
        for height, mass in pairs:
            print(f"shift {r}: height {height.str(14)}; mass {mass.str(14)}")
        if r == 16:
            assert pairs[-1][1] > arb(3)/2
        if r == 80:
            assert all(abs(mass-1) < arb("0.001") for _,mass in pairs)
        if r == 40:
            assert all(abs(mass-1) < arb("0.25") for _,mass in pairs)
