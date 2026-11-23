"""Exact controls for the CM −23 short model and inert quadratic twist signs."""
from fractions import Fraction
from math import isqrt


def legendre(a, p):
    r = pow(a % p, (p - 1) // 2, p)
    return -1 if r == p - 1 else r


def primes(limit):
    return [p for p in range(5, limit + 1)
            if all(p % k for k in range(2, isqrt(p) + 1))]


def class_polynomial(j):
    return j**3 + 3491750*j**2 - 5151296875*j + 12771880859375


def scaled(y):
    return y**3 + 27934*y**2 - 329683*y + 6539203


def lift(f, levels):
    x, modulus = 1, 5
    assert f(x) % modulus == 0
    for _ in range(1, levels):
        roots = [x + t*modulus for t in range(5) if f(x + t*modulus) % (5*modulus) == 0]
        assert len(roots) == 1
        x, modulus = roots[0], 5*modulus
    return x


def quadratic_count(p, a, b):
    """Count via the Legendre symbol of the norm, in F_p[u] with u²=−23."""
    def mul(x, y):
        return ((x[0]*y[0] - 23*x[1]*y[1]) % p, (x[0]*y[1] + x[1]*y[0]) % p)

    total = p*p + 1
    for i in range(p):
        for j in range(p):
            x = (i, j)
            cube = mul(mul(x, x), x)
            linear = mul(a, x)
            r, s = (cube[k] + linear[k] + b[k] for k in range(2))
            total += legendre(r*r + 23*s*s, p)
    return total


def main():
    for y in range(-100, 101):
        assert class_polynomial(125*y) == 5**9*scaled(y)
    norm = -Fraction(500, 27)**3 * Fraction(class_polynomial(1728), class_polynomial(0))
    assert norm == Fraction(-687695111488, 96702579)
    quotient = norm / (-23)**3
    assert quotient == Fraction(29899787456, 51155664291)
    assert isqrt(quotient.numerator)**2 != quotient.numerator
    # At 37 the root j=3+3u, u²=−23, has nonsquare (1728−j)/j.
    p = 37
    j2 = (9-23*9, 18)
    j3 = (3*j2[0]-69*j2[1], 3*j2[0]+3*j2[1])
    assert (j3[0]+3491750*j2[0]-5151296875*3+12771880859375) % p == 0
    assert (j3[1]+3491750*j2[1]-5151296875*3) % p == 0
    ratio_norm = ((1728-3)**2+23*9)*pow(9+23*9, -1, p) % p
    assert ratio_norm == 13 and legendre(ratio_norm, p) == -1
    for level in range(1, 21):
        modulus = 5**level
        y = lift(scaled, level)
        b = lift(lambda b: 27*y*b*b - 4*(1728-125*y), level)
        denom = 500 + 27*b*b
        assert (denom*y - 6912) % modulus == 0
        assert 1728*500*pow(denom, -1, modulus) % modulus == 125*y % modulus
        if level in (9, 20):
            print(f"mod 5^{level}: Y={y}, B={b}")

    for d in (23, 71, 103, 151, 167, 199, 263):
        witnesses = [p for p in primes(2000) if p % 4 == 1 and legendre(-d, p) == -1][:5]
        assert len(witnesses) == 5
        for p in witnesses:
            trace = -sum(legendre(x**3-x, p) for x in range(p))
            assert trace % p
        print(f"d={d}, ordinary lemniscatic witnesses {witnesses}")

    inert = [p for p in primes(113) if legendre(-23, p) == -1]
    for p in inert:
        # A rational reduced class root; at exceptional singular invariants
        # choose a simple representative directly rather than divide by j−1728.
        roots = [j for j in range(p) if class_polynomial(j) % p == 0]
        assert roots
        for j in roots:
            if j == 0:
                a, b = 0, 1
            elif (j-1728) % p == 0:
                a, b = -1, 0
            else:
                v = j*pow(1728-j, -1, p) % p
                a, b = 3*v, 2*v
            assert (1728*4*a**3-j*(4*a**3+27*b*b)) % p == 0
            assert (4*a**3 + 27*b*b) % p != 0
            assert sum(legendre(x**3+a*x+b, p) for x in range(p)) == 0
            count = quadratic_count(p, (a, 0), (b, 0))
            assert count == (p+1)**2
            # tau=3u, tau²=−207, tau³=−621u
            twisted = quadratic_count(p, (-207*a, 0), (0, -621*b))
            char = legendre(207, p)
            assert char == -legendre(-1, p)
            assert twisted == (p + char)**2
            if p == 5:
                assert (count, twisted) == (36, 16)
    print(f"F_p and F_p² counts passed for all rational class roots at {len(inert)} inert primes: {inert}")


if __name__ == "__main__":
    main()
