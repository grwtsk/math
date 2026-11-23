"""Exact Honda collision polynomials from the elliptic Laurent equation.

Run with python-flint 0.8.0. Each computed coefficient is rational.
"""
from math import comb

from flint import fmpq, fmpq_poly

from verify_alpoge_twist_descent import moments, power_mod, valuation


def collision(p, r):
    q, n = p*p, p**(2*r)
    k, d = (p+1)//4, (q-1)//4
    mu = moments((n+p)//4)
    # Choose the multiplicities of the nonlinear Honda levels; all
    # remaining degree is supplied by linear factors.
    coefficients = [fmpq(0) for _ in range((n-1)//(q-1)+1)]

    def expand(level, remaining, high, denominator):
        if level:
            weight = q**level
            for count in range(remaining//weight+1):
                expand(level-1, remaining-count*weight, high+[count],
                       denominator+level*count)
            return
        factors = remaining+sum(high)
        j = (factors+p)//4
        assert 4*j == factors+p and (j-k) % d == 0
        multinomial = 1
        left = factors
        for count in high:
            multinomial *= comb(left, count)
            left -= count
        coefficients[(j-k)//d] += (4*j*comb(4*j-1, p-1)*mu[j]
                                    * fmpq(multinomial, p**denominator))

    expand(r, n, [], 0)
    return fmpq_poly(coefficients)


def reduced(poly, p):
    assert all(valuation(a,p) >= 0 for a in poly)
    return [int(a.p)*pow(int(a.q), -1, p) % p for a in poly]


def check(p, r):
    q, k = p*p, (p+1)//4
    m, prev = (q**r-1)//(q-1), (q**(r-1)-1)//(q-1)
    u = fmpq_poly([0,1])
    kap = -((-1)**k)*comb(2*k,k)*pow(2,-1,p) % p
    poly = collision(p, r)
    expected = kap*u**prev*(1+u**(q**(r-1)))
    assert poly.degree() == m
    assert reduced(p**m*poly, p) == reduced(expected, p)
    # The Newton polygon traverses the larger valuation shells first.
    height = -r
    index = 0
    for shell in reversed(range(r)):
        slope = -(q-1)*shell
        assert valuation(poly[index],p) == height
        for _ in range(q**(r-shell-1)):
            index += 1
            height += slope
            assert valuation(poly[index],p) >= height
    assert index == m and height == -m == valuation(poly[m],p)
    # Use c0^d=-1 and divide D_r by c0^k. Check the full scalar
    # polynomial identity even on centers divisible by p.
    scalar = u*poly(-(u**(q-1)))
    for center in (0,p,1):
        translated = p*scalar(center+p**(r-1)*u)
        target = reduced(kap*(u-u**q),p)
        assert reduced(translated,p) == target+[0]*(translated.degree()+1-len(target))
    if r >= 2:
        for center in (-1, -1+p, -1+2*p, -1+p*p):
            fine = p*poly(center+p**(r-1)*u)
            target = reduced(kap*(u-u**q),p)
            assert reduced(fine,p) == target+[0]*(m+1-len(target))
    for e in (2,3,4):
        for h in range(1, r*e):
            if h % e == 0:
                continue
            # The root of X^e-p has valuation 1/e by Eisenstein. In
            # this basis distinct nonzero coordinates have distinct
            # valuations modulo the integers.
            field = u**e-p
            U = (u**h-1) % field
            image = fmpq_poly([])
            for a in reversed(list(poly)):
                image = (image*U+a) % field
            actual = min(e*valuation(a,p)+j for j,a in enumerate(image) if a)
            s, rem = divmod(h,e)
            expected_v = -e*((q**(r-s)-1)//(q-1))+rem*q**(r-s-1)
            assert actual == expected_v
    print('global, fine, and ramified checks passed',p,r,'degree',m,flush=True)
    return poly


def degree_84(poly):
    x = fmpq_poly([0,1])
    aligned = -x * poly(-1)
    assert aligned == x*fmpq(7109870427383233146882397592536214309,
                              9225341050208863777507671356201171875)
    assert valuation(poly(1),3) == -10
    assert [valuation(a,3) for a in poly] == [-2,-10,-8,-8,-9,-8,-8,-9,-8,-8,-10]
    assert [valuation(a,3) for a in poly(3*x-1)] == [0,-1,1,1,1,1,0,1,1,-1,0]
    count = 0
    for a in range(-7,8):
        for b in range(-7,8):
            c = a+b*x
            residue = (c*c+1) % (x*x+1)
            if any(valuation(v,3) < 1 for v in residue):
                continue
            val = sum(v*power_mod(c,2*j+1,x*x+1) for j,v in enumerate(poly))
            assert all(valuation(v,3) >= 0 for v in val)
            count += 1
    assert count == 50
    print('exact degree-84 fraction, both valuation vectors, and 50 Gaussian controls passed')


if __name__ == '__main__':
    for prime, level in [(3,1), (3,2), (3,3), (7,1), (7,2)]:
        result = check(prime,level)
        if (prime,level) == (3,2):
            degree_84(result)
