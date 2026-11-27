"""Certify the sign change of the unsmoothed prime tail used in the probability average."""
from fractions import Fraction
from math import isqrt


def main():
    bound = 2000
    scale = 10**12
    sieve = bytearray([1]) * (bound+1)
    for p in range(2, isqrt(bound)+1):
        if sieve[p]:
            sieve[p*p::p] = bytes(1 + (bound-p*p)//p)
    log_two_lower = 2 * sum(Fraction(1, (2*j+1)*3**(2*j+1)) for j in range(4))
    lower_sum = 0
    for p in range(11, bound+1):
        if sieve[p]:
            k = p.bit_length()-1
            a = 1 << k
            # First positive term of 2*atanh((p-a)/(p+a)).
            log_p_lower = k*log_two_lower + 2*Fraction(p-a, p+a)
            term = scale*log_p_lower/(p*p)
            lower_sum += term.numerator // term.denominator
    gap = Fraction(lower_sum, scale) - Fraction(10,109)
    assert gap > Fraction(1,1000)
    print('PASS: at y=109/10 the sharp prime tail minus 1/y exceeds 1/1000.')
    print('A directed lower bound from just the primes 11 through 2000 is', str(gap))


if __name__ == '__main__':
    main()
