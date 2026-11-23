"""Check signed local coefficients exactly and independently enclose added zeros."""
from math import gcd, isqrt
from flint import arb, acb, ctx

ctx.prec = 384


def check(p, level):
    q = p**level
    A = isqrt(4*q)+1
    assert 4*q < A*A and A < q+1
    coeff = [1 + A*(v >= level) + q*(v >= 2*level) for v in range(6*level+1)]
    # xG'(x)=G(x) times the local logarithmic-derivative series.
    b = [0]
    for n in range(1, len(coeff)):
        b.append(n*coeff[n]-sum(b[j]*coeff[n-j] for j in range(1, n)))
    assert all(v >= 0 for v in b[1:2*level]) and b[2*level] == 1-level*(A*A-2*q) < 0
    assert all(b[i] == 1 for i in range(1, len(b)) if i % level)

    def a(n):
        return 1 + A*(n % q == 0) + q*(n % (q*q) == 0)
    for n in (1,p,q,q*q,p*q*q,2*q+1,3*q+1):
        for m in range(1, 100):
            if gcd(n,m)==1:
                assert a(n*m)==a(n)*a(m)
    Q = arb(q)
    h = Q.log()
    delta = (arb(A)/(2*Q.sqrt())).acosh()/h
    assert 0 < delta and delta < arb(1)/2
    # Select the member of the explicit progression nearest height 14.
    k = round((14*float(h)/3.141592653589793-1)/2)
    ordinate = (2*k+1)*arb.pi()/h
    for shift in (-delta, delta):
        s = acb(arb(1)/2+shift, ordinate)
        x = (-s*h).exp()
        local = 1 + A*x + q*x*x
        assert local.contains(0) and abs(local) < arb('1e-90')
        assert not s.zeta().contains(0) and not (-h*x*(A+2*q*x)).contains(0)
    print(f'p={p} L={level}, height={float(ordinate):.8f}, displacement={float(delta):.9g}, first negative coefficient k={2*level}')


if __name__ == '__main__':
    for p,L in [(2,4), (2,12), (2,48), (3,7), (5,12), (101,5)]:
        check(p,L)
