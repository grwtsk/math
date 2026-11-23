"""Exact finite controls for the CM–Honda comparison, using python-flint 0.8.0."""
from flint import fmpq, fmpq_poly


def mul(a, b, p):
    x, y = a
    u, v = b
    return ((x*u-y*v) % p, (x*v+y*u) % p)


def power(a, n, p):
    result = (1, 0)
    while n:
        if n % 2:
            result = mul(result, a, p)
        a = mul(a, a, p)
        n //= 2
    return result


def curve_orders(p, c):
    elements = [(x, y) for x in range(p) for y in range(p)]
    roots = {}
    for z in elements:
        square = mul(z, z, p)
        roots[square] = roots.get(square, 0) + 1
    counts = []
    for k in (c, (1, 0)):
        count = 1
        for z in elements:
            a, b = power(z, 3, p)
            u, v = mul(k, z, p)
            count += roots.get(((a-u) % p, (b-v) % p), 0)
        counts.append(count)
    return tuple(counts)


def strict_jet(aligned, degree):
    # At c=1 the inverse logarithm t has t''=8t^3, t(0)=0, t'(0)=1.
    # Scaling to c=-i rotates each monomial coefficient by (-i)^j.
    b, square = [fmpq(1)], [fmpq(1)]
    for j in range(1, (degree-1)//4+1):
        b.append(8*sum(square[j-1-i]*b[i] for i in range(j))/fmpq(4*j*(4*j+1)))
        square.append(sum(b[i]*b[j-i] for i in range(j+1)))
    log = fmpq_poly([0, 1])
    x = fmpq_poly([0, 1])
    level, denominator = 9, 3
    while level <= degree:
        log += x**level/denominator
        level *= 9
        denominator *= 3
    step = (log**4).truncate(degree+1)
    monomial, real, imag = log, fmpq_poly([]), fmpq_poly([])
    for j, coefficient in enumerate(b):
        re, im = [(1,0),(0,-1),(-1,0),(0,1)][j % 4] if aligned else (1,0)
        real += coefficient*re*monomial
        imag += coefficient*im*monomial
        monomial = (monomial*step).truncate(degree+1)
    return real, imag


def main():
    for p, c in zip([3,7,11,19,23,31], [(0,-1),(-1,-1),(0,-1),(-2,-1),(-3,-3),(-3,-1)]):
        assert power(c, (p*p-1)//4, p) == (p-1, 0)
        counts = curve_orders(p, c)
        assert counts == ((p-1)**2, (p+1)**2)
        print(p, c, counts)
    h, j = strict_jet(True, 180)
    bad, _ = strict_jet(False, 180)
    assert all(int(a.q) % 3 for f in (h,j) for a in f)
    assert h[9] == fmpq(1,5) and j[9] == 0
    assert next(n for n in range(181) if int(bad[n].q) % 3 == 0) == 9
    assert bad[9] == fmpq(7,15)
    print('Gaussian rational jets through degree 180 passed; h9 = 1/5 and 7/15')


if __name__ == '__main__':
    main()
