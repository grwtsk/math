"""Exact elliptic coefficients in the original even-orbit torus average.

Run with python-flint 0.8.0. The degree-four and degree-six fields are
cyclotomic, with prime-to-three conductors 5 and 7 and Frobenius z -> z^3.
"""
from itertools import product
from math import comb, factorial

from flint import fmpq, fmpq_poly

from verify_alpoge_twist_descent import moments, power_mod, valuation


def check_source_table():
    mu = moments(20)
    for p, projected, polarized in [(3, 410, 10850), (5, 60, 1506),
                                    (7, 73, 1959), (11, 27, 645), (19, 14, 386)]:
        terms = {(a, 4*j-a): mu[j]*comb(4*j, a) for j in range(1, 21)
                 for a in range(1, 4*j) if (a-p*(4*j-a)) % (p*p-1) == 0 and mu[j]}
        first = {(i,a-i,b): value*comb(a,i) for (a,b),value in terms.items()
                 for i in range(1, a)}
        second = {(i,b-i,a): value*comb(b,i) for (a,b),value in terms.items()
                  for i in range(1, b)}
        assert (len(terms),len(first)) == (projected,polarized) and first == second
        for h in range(3):
            lag = p**h
            projected_section = comb(2*(p+1)*lag,2*p*lag)*comb(2*p*lag,p*lag)
            assert projected_section % p == 2
        print('source', p, projected, polarized, 'first failure', 2*p*p*(p+1))


class CyclotomicOrbit:
    def __init__(self, conductor):
        self.conductor = conductor
        self.period = conductor-1
        self.z = fmpq_poly([0,1])
        self.modulus = fmpq_poly([1]*conductor)
        self.one = fmpq_poly([1])

    def power(self, x, n):
        return power_mod(x, n, self.modulus)

    def sigma(self, x, i):
        return x(self.power(self.z, pow(3, i % self.period, self.conductor))) % self.modulus

    def bases(self):
        # Relative minimal polynomial and trace-dual of its power basis.
        h = self.period//2
        poly = [self.one]
        for i in range(h):
            root = self.sigma(self.z, 2*i)
            coeffs = [fmpq_poly() for _ in range(len(poly)+1)]
            for j, c in enumerate(poly):
                coeffs[j] -= c*root % self.modulus
                coeffs[j+1] += c
            poly = coeffs
        b = [self.power(self.z,j) for j in range(h)]
        derivative = sum(j*poly[j]*b[j-1] for j in range(1,h+1)) % self.modulus
        gcd, inverse, _ = derivative.xgcd(self.modulus)
        assert gcd == 1
        dual = [sum(poly[k]*b[k-j-1] for k in range(j+1,h+1))*inverse % self.modulus
                for j in range(h)]
        for j,k in product(range(h),repeat=2):
            assert sum(self.sigma(b[j]*dual[k],2*i) for i in range(h)) == int(j == k)
        return b,dual

    def valuation(self, x):
        # The modulus is irreducible mod 3, so the power basis is integral and unramified.
        return min((valuation(c,3) for c in (x % self.modulus) if c),default=float('inf'))


def honda_partitions(n):
    """Multiplicities of X^(9^j) in a contribution to X^n."""
    powers = [1]
    while 9*powers[-1] <= n:
        powers.append(9*powers[-1])

    def collect(index, remaining):
        if index == 0:
            yield (remaining,)
        else:
            for count in range(remaining//powers[index]+1):
                for lower in collect(index-1,remaining-count*powers[index]):
                    yield (*lower,count)

    return collect(len(powers)-1,n)


def slice_value(field, c, mu, split, complement, s, r, t, n, orbit):
    # All three blocks must appear. The odd (respectively even) unsplit
    # variable has exponent one, so higher exponential powers cannot enter.
    if (n*3**s + 2*3**r - 3**t) % (3**orbit-1):
        return fmpq_poly()
    value = fmpq_poly()
    for counts in honda_partitions(n):
        total = sum(counts)+3
        if total % 4:
            continue
        integer = factorial(total)//factorial(2)
        for k in counts:
            integer //= factorial(k)
        weight = fmpq(integer,3**sum(j*k for j,k in enumerate(counts)))
        coeff = weight*mu[total//4]*field.power(c,total//4)
        for b,v in zip(split,complement):
            term = field.power(field.sigma(b,r),2)*field.sigma(v,t) % field.modulus
            for j,k in enumerate(counts):
                term = term*field.power(field.sigma(b,s+2*j),k) % field.modulus
            value += coeff*term % field.modulus
    return value % field.modulus


def check_orbit(conductor):
    field = CyclotomicOrbit(conductor)
    b, dual = field.bases()
    # Trace of z, and its two quadratic shifts giving sqrt(5) or sqrt(-7).
    c0 = 1+2*sum(field.sigma(field.z,2*i) for i in range(field.period//2))
    assert field.valuation(c0*c0+1) >= 1
    for depth in range(3):
        n = 9**(depth+1)
        c = field.one if depth == 0 else c0*field.power(1+3**depth*field.z,4) % field.modulus
        mu = moments((n+3)//4)
        base = slice_value(field,c,mu,[field.one],[field.one],0,0,1,n,2)
        assert field.valuation(base) == -1
        for odd in (0,1):
            s = field.period-2+odd
            r = (s+2*(depth+1)) % field.period
            t = (r+1) % field.period
            split, other = (b,dual) if odd else (dual,b)
            for k in range(1,n):
                lower = slice_value(field,c,mu,split,other,s,r,t,k,field.period)
                assert field.valuation(lower) >= 0
            actual = slice_value(field,c,mu,split,other,s,r,t,n,field.period)
            aligned = slice_value(field,c0,mu,split,other,s,r,t,n,field.period)
            assert field.valuation(actual) == -1
            assert field.valuation(actual-base) >= 0
            assert field.valuation(aligned) >= 0
        print('orbit',field.period,'relative degree',len(b),'depth',depth,
              'both polarizations match the two-site residue at degree',n+3)


if __name__ == '__main__':
    check_source_table()
    for conductor in (5,7):
        check_orbit(conductor)
