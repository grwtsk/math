"""Exact checks of the elliptic coordinate and theta convergence theorem.

The full-jet checks use only degrees below the second Honda power at 3.
The later orbit slices retain every Honda level through the requested degree.
Run with python-flint 0.8.0.
"""
from math import comb
from fractions import Fraction
from functools import lru_cache

from flint import fmpq, fmpq_poly

from verify_alpoge_sigma_dwork import sigma_moments, sigma_beta, d1_beta
from verify_alpoge_sigma_dwork import substitute_height2, formal_exp, vp
from verify_alpoge_twist_descent import valuation, moments
from verify_alpoge_orbit_polarization import CyclotomicOrbit, slice_value


def coordinate_checks():
    primes = [3,7,11,19,23,31]
    twists = [(0,-1),(-1,-1),(0,-1),(-2,-1),(-3,-3),(-3,-1)]
    # Inverting the invariant differential gives t''=8t^3 at c=1.
    b, square = [fmpq(1)], [fmpq(1)]
    for j in range(1,(31**2-1)//4+1):
        b.append(8*sum(square[j-1-i]*b[i] for i in range(j))/fmpq(4*j*(4*j+1)))
        square.append(sum(b[i]*b[j-i] for i in range(j+1)))
    x = fmpq_poly([0,1])
    for p, (re,im) in zip(primes,twists):
        q, d = p*p, (p*p-1)//4
        h = [fmpq((-1)**j*comb(2*j,j),4*j+1) for j in range(d+1)]
        assert all(valuation(a,p) >= 0 for a in h[:-1]+b[:d])
        # Logarithmic derivative of (ell(t)/t)^(-q) in Lagrange inversion.
        power = [fmpq(1)]
        for j in range(1,d+1):
            power.append(-sum((j-i+q*i)*h[i]*power[j-i] for i in range(1,j+1))/j)
        assert power[d]/q == b[d] and valuation(p*b[d]-1,p) >= 1
        unit = (fmpq(1,p)+b[d]*(re+im*x)**d) % (x*x+1)
        assert all(valuation(a,p) >= 0 for a in unit)
        assert valuation(fmpq(1,p)+b[d],p) == -1
    assert b[2] == fmpq(2,15)
    print('coordinate: both recurrences and six Gaussian twists passed',flush=True)


def fractional_first():
    # u^4=3^a and c0=-i. Every coefficient of the complete first
    # polarization is calculated, including nonlinear exponential powers.
    for a, degree in [(1,20),(2,28),(3,36)]:
        c = (Fraction(0), Fraction(-3**a))
        log = d1_beta(sigma_beta(3,c,sigma_moments(degree//4),degree))
        terms = formal_exp(substitute_height2(log,3,degree),degree)
        bad = [(sum(idx),vp(v,3)) for idx,v in terms.items() if vp(v,3)<0]
        assert min(bad)==(degree,-1) and all(d==degree for d,_ in bad)
        print('complete jet: v(c)',a,'first degree',degree,'terms',len(terms),flush=True)


def orbit_levels():
    for conductor in (5,7):
        f = CyclotomicOrbit(conductor)
        b,dual = f.bases()
        c0 = 1+2*sum(f.sigma(f.z,2*j) for j in range(f.period//2))
        # u^4=9, so v(u)=1/2, and p*v(u)=3/2 masks part of the
        # denominator in this slice. c=1 supplies an unramified control.
        for c, valuations in [(9*c0,[1,-4,-49]),(f.one,[-1,-10,-91])]:
            for r, v in enumerate(valuations, start=1):
                n, mu = 9**r, moments((9**r+3)//4)
                base = slice_value(f,c,mu,[f.one],[f.one],0,0,1,n,2)
                assert f.valuation(base)==v,(conductor,r,v,f.valuation(base))
                for odd in (0,1):
                    s = f.period-2+odd
                    y = (s+2*r) % f.period
                    z = (y+1) % f.period
                    split, other = (b,dual) if odd else (dual,b)
                    actual = slice_value(f,c,mu,split,other,s,y,z,n,f.period)
                    assert f.valuation(actual)==v and f.valuation(actual-base)>v
        print('even orbit:',f.period,'both orientations, three successive levels passed',flush=True)


def integer_dilation():
    # c=3^4 is the multiplication-by-three pullback of the bad unit
    # twist c=1. Compute the actual exponential coefficient, independently
    # of the pullback and of the degree cutoff proof.
    p, c = 3, 81
    target = (81,18,9)
    mu = moments(sum(target)//4)
    honda = fmpq_poly([0,1])+fmpq_poly([0,1])**9/3+fmpq_poly([0,1])**81/9
    def powers(cap):
        value, out = fmpq_poly([1]), {}
        for i in range(1,cap+1):
            value = (value*honda).truncate(cap+1)
            out[i] = [(n,a) for n,a in enumerate(value) if a]
        return out
    a,b,z = [powers(cap) for cap in target]
    log = {}
    for i, ax in a.items():
        for j, by in b.items():
            for k, cz in z.items():
                h = i+j+k
                if h%4 or (i+j-p*k)%8: continue
                weight = mu[h//4]*c**(h//4)*comb(h,k)*comb(i+j,i)
                for x,aa in ax:
                    for y,bb in by:
                        for t,cc in cz:
                            key=(x,y,t)
                            log[key]=log.get(key,0)+weight*aa*bb*cc
    terms=[(idx,v*sum(idx)) for idx,v in log.items() if v]
    @lru_cache(None)
    def exponential(x,y,z):
        if x+y+z==0: return fmpq(1)
        if min(x,y,z)==0 or (x+y+z)%4 or (x+y-3*z)%8: return fmpq(0)
        return sum((v*exponential(x-i,y-j,z-k) for (i,j,k),v in terms
                    if i<=x and j<=y and k<=z),fmpq(0))/(x+y+z)
    assert valuation(exponential(*target),3)==-1
    assert all(valuation(exponential(x,y,z),3)>=0 for x in range(82)
               for y in range(19) for z in range(10) if x+y+z<108)
    print('integer dilation: degree-108 witness valuation -1, complete lower coefficient box integral',flush=True)


if __name__ == '__main__':
    coordinate_checks()
    fractional_first()
    orbit_levels()
    integer_dilation()
