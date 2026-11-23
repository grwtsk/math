"""Certified Euler envelopes and sparse finite-height bounds for exterior Taylor tests."""
from math import factorial, isqrt

from flint import acb_series, arb, ctx


def envelopes(r, n):
    ctx.cap = n+3
    s = acb_series([r+arb(1)/2, 1], ctx.cap)
    a = s.zeta().log().derivative()
    return abs(a[0]), abs(a[n])


def shifted_intervals():
    t = arb(3)*10**12-200
    g = (t/(2*arb.pi())).log()/2
    for n, numerator, denominator in [(3,53,50), (4,5,4), (8,5,2),
                                      (16,4,1), (32,7,1)]:
        left = arb(numerator)/denominator
        lower = arb(100)
        count = 0
        while left < 100:
            # For every radius in the bin, use B_n at the left endpoint
            # and scale the derivative and the elementary error at the right.
            step = arb(10005)/10000 if left < arb(11)/10 else arb(101)/100
            right = min(arb(100), left*step)
            b0, bn = envelopes(left,n)
            # The large-height gamma estimate uses t^{-n+1} for n>=1.
            margin = g - b0 - right**n*bn - 1/t - (right/t)**(n-1)*right/t
            assert margin > 0, (n,left,margin)
            lower = min(lower, margin)
            left = right
            count += 1
        assert left == arb(100)
        print("order",n,"radius interval",f"{numerator}/{denominator}..100",
              "bins",count,"Euler margin lower",lower.str(10))


def prime_weights():
    size = 10**6
    sieve = bytearray([1])*(size+1)
    sieve[:2] = bytes(2)
    for p in range(2,isqrt(size)+1):
        if sieve[p]:
            sieve[p*p::p] = bytes((size-p*p)//p+1)
    w = a = b = slope = arb(0)
    for p in range(2,size+1):
        if sieve[p]:
            x = arb(p).log()
            v = x**4/(6*p*arb(p).sqrt())
            w += v
            a += v*v
            b += p*v*v
            slope += v*abs(x-7)
    return w,a,b,slope


def measured_bounds():
    w,a,b,slope = prime_weights()
    print("prime mass, diagonal, weighted diagonal, slope",
          *(u.str(16) for u in (w,a,b,slope)))
    b0,b3 = envelopes(arb(1),3)
    low = 3*arb(10)**12-2
    cap = (b3+low**(-3))/((low/(2*arb.pi())).log()/2-b0-1/low)
    assert cap < arb("1.339258")
    print("uniform original-radius order-three ratio upper",cap.str(16))
    height = 10**16
    assert (arb(height)/(2*arb.pi())).log()/2-b0-b3-2/arb(height)>0
    cells = length = arb(0)
    for U,V,k in [(3*10**12-2,6*10**13,5), (6*10**13,height,6)]:
        start, stop = U-1,V+1
        def threshold(t):
            return w + (arb(t)/(2*arb.pi())).log()/2-b0-b3-3/arb(start)
        for measured in [False,True]:
            epsilon = threshold(start)/((2*k+1)*slope) if measured else arb(0)
            assert epsilon < arb(1)/2
            power = 2*k
            budget = threshold(start)-slope*epsilon
            assert budget > 0
            x = start
            integral = arb(0)
            while x < stop:
                y = min(stop,33*x//32)
                integral += (y-x)/(threshold(x)-slope*epsilon)**power
                x = y
            upper = factorial(k)*(a**k*integral
                     +3*arb.pi()*(1+arb(1)/2**k)*b**k/budget**power)
            if measured:
                cells += upper/epsilon
            else:
                length += upper
    assert cells < 2250000 and length < 24100
    print("positive unit-cell count upper", cells.str(16),
          "positive exceptional length upper",length.str(16))


if __name__ == "__main__":
    ctx.prec = 150
    shifted_intervals()
    measured_bounds()
