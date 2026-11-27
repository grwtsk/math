"""Enclose E|2-10Z+4Z²| for Z ~ Gamma(3/4,1) using integer enclosures."""

from fractions import Fraction


def certify(cells_per_unit=4096):
    """Return a rational upper bound. The integration variable is u = Z^(1/4)."""
    if cells_per_unit < 1:
        raise ValueError("cells_per_unit must be positive")
    n = cells_per_unit
    r = n**4
    precision = 1 << 64
    steps = 1 << 14

    def exp_bounds(z):
        # Actual exponent argument is x=z/r in [0,16]. Since 1-t <= exp(-t)
        # <= 1/(1+t), approximate exp(-x/steps) outwards and square 14 times.
        lo = (r * steps - z) * precision // (r * steps)
        hi = -(-(r * steps * precision) // (r * steps + z))
        for _ in range(steps.bit_length() - 1):
            lo = lo * lo // precision
            hi = -(-(hi * hi) // precision)
        return lo, hi

    def qabs(z):
        return abs(2 * r**2 - 10 * z * r + 4 * z**2)

    numerator_upper = denominator_lower = 0
    z = 0
    _, hi = exp_bounds(z)
    for i in range(2 * n):
        w = (i + 1)**4
        lo, next_hi = exp_bounds(w)
        largest = max(qabs(z), qabs(w))
        if 4 * z <= 5 * r <= 4 * w:
            # Q has one interior extremum at x=5/4, of magnitude 17/4.
            largest = max(largest, (17 * r**2 + 3) // 4)
        volume = (i + 1)**3 - i**3
        numerator_upper += volume * largest * hi
        denominator_lower += volume * lo
        z, hi = w, next_hi

    # For z>=16, z^(-1/4)<=1 and |Q(z)|<=4z²+10z+2.
    # Integrating that polynomial against exp(-z) gives 1332*exp(-16).
    # Cell volumes in the numerator omit the common factor 4/(3*n³).
    tail = Fraction(3 * n**3 * 1332 * hi * r**2, 4)
    return (numerator_upper + tail) / (r**2 * denominator_lower)


if __name__ == "__main__":
    bound = certify()
    assert bound <= Fraction(2853535, 1000000)
    millionths = -((-bound.numerator * 10**6) // bound.denominator)
    print(f"E|Q| <= {millionths}/1000000 < 143/50")
