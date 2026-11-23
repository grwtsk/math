"""Certified local radial Gaussian scans from boundary values of zeta.

Run with python-flint. The circular winding algorithm uses only the Taylor
enclosure of zeta. The disjoint-disk comparison is an independent enclosure
of the same finite-window observable. Coordinates are offsets in the rotated
plane about the indicated real height.
"""
from flint import acb, arb, ctx

from verify_xi_contour_traces import ZetaJet
from verify_xi_disk_counts import verify


def count_circle(jet, center, radius):
    """Certify the winding on curved arcs by mapping each into a zero-free disk."""
    bound = abs(center) + radius
    assert bound < 1 and radius > 0
    slope = sum(j * abs(a) * bound**(j-1)
                for j, a in enumerate(jet.poly.coeffs()) if j)

    def value(phase):
        return jet.poly(center + radius * acb(phase).exp_pi_i())

    def angle(left, right, depth):
        mid = (left + right)/2
        error = slope * radius * arb.pi() * (right-left)/2 + abs(jet.value_error)
        if abs(value(mid)) > error:
            ratio = (value(right)+jet.value_error)/(value(left)+jet.value_error)
            change = ratio.arg()
            if abs(change) < arb.pi():
                return change
        if depth >= 48:
            raise ArithmeticError("unresolved circular arc")
        return angle(left, mid, depth+1) + angle(mid, right, depth+1)

    winding = sum(angle(arb(k)/4, arb(k+1)/4, 0) for k in range(8))/(2*arb.pi())
    count = winding.unique_fmpz()
    assert count is not None and count >= 0
    return int(count)


def local_scan(jet, center, outer, t, steps=14):
    count = count_circle(jet, center, outer)
    cache = {}

    def enclosed(radius, code):
        if code not in cache:
            cache[code] = count_circle(jet, center, radius)
        return cache[code]

    value = arb(0)
    for rank in range(1, count+1):
        lo, hi = 0, 2**steps
        while hi-lo > 1:
            mid = (lo+hi)//2
            if enclosed(outer*mid/2**steps, mid) < rank:
                lo = mid
            else:
                hi = mid
        lower = (-t*(outer*hi/2**steps)**2).exp()
        upper = (-t*(outer*lo/2**steps)**2).exp()
        value += lower.union(upper)
    return count, value, len(cache)+1


def main():
    ctx.prec = 180
    jet = ZetaJet(arb(7005))
    # Both scans contain the Lehmer pair. No root coordinates enter local_scan.
    roots = verify(7005, jet)
    for center in (arb(2)/25, arb(3)/32):
        outer, t = arb(1)/16, arb(512)
        count, observed, circles = local_scan(jet, center, outer, t)
        assert count == len(roots) == 2
        assert all(abs(x-center) < outer for x in roots)
        predicted = sum((-t*(x-center)**2).exp() for x in roots)
        assert observed.contains(predicted) and observed.rad() < arb(1)/1000
        print("Lehmer boundary scan", center.str(8), "winding circles", circles,
              "Gaussian sum", observed.str(13), "disk comparison", predicted.str(13))


if __name__ == "__main__":
    main()
