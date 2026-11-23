"""Continuous exterior Taylor bounds from prime phases and exact integer dot products."""
import argparse
from math import isqrt

import numpy as np
from flint import acb_series, arb, ctx, fmpq
from verify_xi_reflected_taylor_budget import boxes, kernel

Q = 1 << 28
COARSE = 1 << 17
WIDTH = 2048
LEFT = 3*10**12-2


def prime_data():
    primes = [p for p in range(2, 5001) if all(p % d for d in range(2, isqrt(p)+1))]
    logs = [arb(p).log() for p in primes]
    weights = [x**4/(6*p*arb(p).sqrt()) for x,p in zip(logs,primes)]
    frequencies = [x-arb(11)/2 for x in logs]
    return frequencies, weights


def nearest(x):
    n = (x*Q+arb(1)/2).floor().unique_fmpz()
    assert n is not None
    return int(n)


def phase(freq, t):
    z = [(v*t).sin_cos() for v in freq]
    return (np.array([nearest(c) for s,c in z], dtype=np.int64),
            np.array([nearest(s) for s,c in z], dtype=np.int64))


def multiply(z, r):
    a,b = z
    c,d = r
    return (a*c-b*d+Q//2)//Q, (a*d+b*c+Q//2)//Q


def rows(z, step, count, weights=None):
    real = np.empty((count,len(z[0])),dtype=np.float64)
    imag = np.empty_like(real)
    for j in range(count):
        a,b = z
        if weights is not None:
            a,b = (a*weights+Q//2)//Q, (b*weights+Q//2)//Q
        unit = Q//COARSE
        real[j] = (a+unit//2)//unit
        imag[j] = (b+unit//2)//unit
        z = multiply(z,step)
    return real,imag,z


def multiplicity_caps():
    p,q = kernel(fmpq(13,20))
    caps = [(375,458),(309,630),(276,732),(255,806),
            (241,865),(231,914),(223,956),(216,993)]
    for k,(sx,dy) in enumerate(caps,1):
        budget=p+fmpq(5863,1000*k)*q
        assert boxes(budget,fmpq(sx,1000),0)==1
        assert boxes(budget,fmpq(1,2),fmpq(dy,1000)**2)==1
    print("certified per-multiplicity caps (thousandths)",caps,flush=True)


def main(blocks):
    assert 1 <= blocks <= 1048576
    ctx.prec = 160
    ctx.cap = 6
    multiplicity_caps()
    freq, w = prime_data()
    n = len(w)
    W = sum(w)
    curvature = sum(u*v*v for u,v in zip(w,freq))
    zeta = acb_series([arb(3)/2,1],6).zeta().log().derivative()
    required = W+(arb(LEFT)/(2*arb.pi())).log()/2-abs(zeta[0])-abs(zeta[3])-2/arb(LEFT)
    rounded = np.array([nearest(u) for u in w],dtype=np.int64)
    a,b,_ = rows(phase(freq,0),phase(freq,arb(1)/2),WIDTH,rounded)
    z,step = phase(freq,LEFT),phase(freq,WIDTH//2)
    # Each complex fixed-point step contributes at most (2+e)/Q to error e.
    # For j<=131072, the accumulated phase error is at most 3(j+1)/Q.
    ds = 3*arb(WIDTH+1)/Q
    dl = 3*arb(min(blocks,65536)+1)/Q
    small = W*ds+n*(arb(3)/Q+arb(1)/COARSE)
    large = dl+arb(1)/COARSE
    error = small+(W+small)*large
    assert ds < arb('0.01') and dl < arb('0.01') and n < 700
    assert np.finfo(np.float64).nmant == 52
    # All dot products and the final integer polygon score are exactly representable.
    assert 17*4*n*(COARSE+1024)**2 < 2**53
    assert all(0 < v < 1 for v in w)
    maximum = 0
    for start in range(0,blocks,128):
        if start and start % 65536 == 0:
            z=phase(freq,LEFT+start*(WIDTH//2))
        count=min(128,blocks-start)
        c,d,z = rows(z,step,count)
        real = np.abs(a@c.T-b@d.T)
        imag = np.abs(a@d.T+b@c.T)
        score=12*np.maximum(real,imag)+5*np.minimum(real,imag)
        maximum=max(maximum,int(np.max(score)))
        if (start+count)%65536==0:
            prefix = arb(maximum)/(12*COARSE**2)+error+curvature/32
            assert prefix < required
            print("completed nodes",(start+count)*WIDTH,"integer polygon score",maximum,
                  "strict margin",(required-prefix).str(12),flush=True)
    sampled=arb(maximum)/(12*COARSE**2)+error
    bound=sampled+curvature/32
    assert bound < required, (bound,required)
    print("height endpoints",LEFT,LEFT+(WIDTH*blocks-1)//2,
          "final grid half-units",WIDTH*blocks-1,"grid nodes",WIDTH*blocks,
          "primes",n,"integer polygon score",maximum,
          "phase and quantization error",error.str(14),
          "chord penalty",(curvature/32).str(14),"sample plus error",sampled.str(14),
          "continuous prime norm upper",bound.str(14),"violation threshold",required.str(14),
          "strict margin",(required-bound).str(14),flush=True)


if __name__ == '__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--blocks',type=int,default=1048576)
    main(parser.parse_args().blocks)
