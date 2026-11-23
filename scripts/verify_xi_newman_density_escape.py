"""Exact dyadic and Möbius controls, and interval checks of the actual heat function.

Run with python-flint installed. The heat enclosures use the adjacent Euler
transition fixture's implementation of the finite Polymath15 error formula.
"""

from fractions import Fraction
from math import isqrt

from flint import acb, arb, ctx

from verify_xi_newman_euler_transition import real_axis


def binary_prefix(length, size):
    """Decompose [0,length) into maximal aligned binary intervals."""
    assert 0 <= length <= size and size.bit_count() == 1
    offset = 0
    blocks = []
    for power in reversed(range(size.bit_length())):
        width = 1 << power
        if length & width:
            blocks.append((offset, width))
            offset += width
    return blocks


def check_maximal_prefix():
    size = 256
    # Real and imaginary integer coefficients with nonconstant signs and phases.
    pairs = [((41*n*n+5) % 89 - 44, (37*n+8) % 67 - 33) for n in range(size)]
    for end in range(size+1):
        blocks = binary_prefix(end, size)
        assert sum(w for _, w in blocks) == end
        assert len({w for _, w in blocks}) == len(blocks)
        assert [n for a, w in blocks for n in range(a,a+w)] == list(range(end))
        block_energy = 0
        for a, w in blocks:
            assert a % w == 0
            u, v = map(sum, zip(*pairs[a:a+w]))
            block_energy += u*u+v*v
        u = sum(x for x, _ in pairs[:end])
        v = sum(y for _, y in pairs[:end])
        assert u*u+v*v <= len(blocks)*block_energy


def check_mollifiers():
    limit = 161
    mu = [0]*(limit+1)
    mu[1] = 1
    for d in range(1,limit+1):
        for n in range(2*d,limit+1,d):
            mu[n] -= mu[d]
    total = 0
    for y in [7,16,31,48,97,161]:
        coeffs = [0]*(y*y+1)
        for m in range(1,y+1):
            for n in range(1,y+1):
                coeffs[m*n] += mu[n]
        assert coeffs[1] == 1 and all(v == 0 for v in coeffs[2:y+1])
        for n, value in enumerate(coeffs[1:],1):
            divisors = sum(2 for d in range(1,isqrt(n)+1) if n % d == 0)
            divisors -= int(isqrt(n)**2 == n)
            assert abs(value) <= divisors
        # A sharp product cut is essential: the coefficient at the next prime
        # greater than y vanishes, but many composite contributions survive.
        assert any(coeffs[y+1:])
        total += len(coeffs)-1
    return total


def check_optimization():
    for c in [Fraction(201,100),Fraction(9,4),Fraction(5,2),Fraction(7,2)]:
        a0 = 1-2/c
        for j in range(1,32):
            h = a0/Fraction(j+1)
            a = a0-h
            exponent = 1-c*a*(1-a)/2
            assert exponent-2/c == (4-c)*h/2+c*h*h/2 > 0
            for k in range(33):
                u = a+(Fraction(1,2)-a)*k/32
                assert c*u*(1-u) >= c*a*(1-a)


def heat_brackets(base, num, den):
    t = arb(num)/den
    c = t*(arb(base)/(4*arb.pi())).log()
    grid = [real_axis(arb(base)+arb(j)/16,t) for j in range(65)]
    signs = [1 if a > 0 else -1 if a < 0 else 0 for a in grid]
    brackets = [(j,j+1) for j,(s,r) in enumerate(zip(signs,signs[1:])) if s*r < 0]
    assert len(brackets) >= 3
    print(f"X={base}, t={num}/{den}, c={c.str(8)}, opposite-sign offsets /16: {brackets}")
    return c


def check_complex_saddle(base, denominator):
    """Compare the exact 64-term heat polynomial at the actual shifted argument."""
    t = arb(1)/denominator
    s = acb(1, base)/2
    alpha = (s/(2*arb.pi())).log()/2+1/(2*s)+1/(s-1)
    w = s+t*alpha/2
    logs = [arb(n).log() for n in range(1,65)]

    def value_and_derivative(point):
        terms = [(-point*ell).exp() for ell in logs]
        return sum(terms), -sum(term*ell for term,ell in zip(terms,logs))

    v = acb(0)
    for _ in range(16):
        value, derivative = value_and_derivative(w+v)
        v = t*derivative/(2*value)
    value, derivative = value_and_derivative(w+v)
    assert abs(v-t*derivative/(2*value)) < arb("1e-14")
    actual = sum((-w*ell+t*ell*ell/4).exp() for ell in logs)
    model = value*(-v*v/t).exp()
    relative = abs(actual/model-1)
    assert arb("0.07") < relative < arb("0.08")
    print(f"X={base}, 64-term complex saddle relative error {relative.str(8)}.")


if __name__ == "__main__":
    ctx.prec = 144
    check_maximal_prefix()
    check_optimization()
    print(f"257 exact binary prefixes and {check_mollifiers()} mollifier coefficients passed.")
    assert heat_brackets(2_000_000,1,8) < 2
    assert heat_brackets(4_000_000,1,6) > 2
    check_complex_saddle(2_000_000,8)
    check_complex_saddle(4_000_000,6)
