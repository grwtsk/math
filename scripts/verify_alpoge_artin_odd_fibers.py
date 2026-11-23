"""Check the explicit Artin fibers of a finite cyclotomic compositum."""
from collections import Counter
from math import gcd, isqrt


def legendre(x, p):
    value = pow(x, (p-1)//2, p)
    return -1 if value == p-1 else value


def prime(n):
    return n >= 2 and all(n % d for d in range(2, isqrt(n)+1))


if __name__ == '__main__':
    # Real degree-4 layer of Q(zeta_16), real cubic subfield of Q(zeta_43),
    # and Q(sqrt(-11)), Q(sqrt(-7)). This checks host-group arithmetic.
    M = 16*43*11*7
    tower = {sign*pow(5, j, 16) % 16: j for sign in (-1, 1) for j in range(4)}
    generator = next(g for g in range(2, 43) if len({pow(g, j, 43) for j in range(42)}) == 42)
    cubic = {pow(generator, j, 43): j % 3 for j in range(42)}

    def image(x):
        return legendre(x, 11), legendre(x, 7), tower[x % 16], cubic[x % 43]

    fibers, outside, inside = Counter(), Counter(), Counter()
    for x in range(1, M):
        if gcd(x, M) != 1:
            continue
        g = image(x)
        fibers[g] += 1
        outside[g] += legendre(x, 43)
        inside[g] += legendre(x, 11)
    assert len(fibers) == 48 and set(fibers.values()) == {420}
    assert all(outside[g] == 0 and inside[g] == g[0]*420 for g in fibers)
    odd = [g for g in fibers if g[:3] == (-1, -1, 0)]
    assert len(odd) == 3 and all(inside[g] == -420 for g in odd)
    primes = [n for n in range(5, 10001) if prime(n) and gcd(n, M) == 1]
    selected = [p for p in primes if image(p) in odd and image(p)[3] != 0]
    assert selected and all(p % 16 in (1, 15) for p in selected)
    print(f'{sum(fibers.values())} reduced residues, {len(fibers)} fibers of 420, '
          f'{len(selected)} nonzero odd inert primes through 10000')
