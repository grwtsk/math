"""Compare the integral chord formula with the sigma series in all three variables.

Uses python-flint 0.8.0. The universal specialization c=1 determines every
coefficient by homogeneity. The last tests keep the two Honda projections separate.
"""
from fractions import Fraction
from math import comb, factorial, gcd
from functools import reduce

from flint import fmpq, fmpq_mpoly_ctx

from verify_alpoge_sigma_dwork import (
    sigma_moments, sigma_beta, d1_beta, d2_beta, substitute_height2,
    formal_exp, dwork_residual, vp,
)

ctx = fmpq_mpoly_ctx.get(("x", "y", "z"))
x, y, z = ctx.gens()
degree = 20


def trunc(f):
    return ctx.from_dict({k:v for k,v in f.terms() if sum(k) <= degree})


def mul(*args):
    result = ctx.constant(1)
    for a in args:
        result = trunc(result*a)
    return result


def inv(f):
    assert f.to_dict().get((0,0,0)) == 1
    v = 1-f
    h = ctx.constant(1)
    term = h
    while term:
        term = mul(term, v)
        h += term
    return h


def powers(t, n):
    terms = [ctx.constant(1)]
    for _ in range(n):
        terms.append(mul(terms[-1], t))
    return terms


def chord_cube():
    def v(t):
        # v=t²(1-v²).
        u = t**2
        for _ in range(degree//4+1):
            u = mul(t,t,1-mul(u,u))
        return u

    def chord(a, b):
        u, v_ = v(a), v(b)
        cu, cv = 1-mul(u,u), 1-mul(v_,v_)
        k = mul(cu,cv,inv(1+mul(u,v_)))
        slope = u+mul(b,a+b,k)
        intercept = -mul(a,b,a+b,k)
        scale = 1+2*mul(slope,a,b,k,inv(1-mul(slope,slope)))
        return slope,intercept,k,scale,mul(a+b,scale)

    a,b,kxy,sxy,xy = chord(x,y)
    _,_,kxz,sxz,_ = chord(x,z)
    _,_,kyz,syz,_ = chord(y,z)
    _,_,_,sxyz,_ = chord(xy,z)
    factors = [1-mul(v(t),v(t)) for t in (x,y,z)]
    top = mul(*factors,1-mul(a,a),sxy,sxz,syz)
    bottom = mul(1+mul(z,mul(z,v(z))+mul(a,z)+b),sxyz,kxy,kxz,kyz)
    return mul(top,inv(bottom))


def analytic_cube():
    ell = [sum(((-1)**j*comb(2*j,j)*fmpq(1,4*j+1)*t**(4*j+1)
                for j in range((degree-1)//4+1)),ctx.constant(0)) for t in (x,y,z)]
    moments = sigma_moments(degree//4)
    weights = [fmpq(a.numerator,a.denominator) for a in moments]
    # Only monomials meeting all three variables survive the third difference.
    def m(t):
        fourth = mul(t,t,t,t)
        return sum((a*b for a,b in zip(weights,powers(fourth,len(weights)-1))),ctx.constant(0))
    a,b,c = ell
    log = m(a+b+c)-m(a+b)-m(b+c)-m(a+c)+m(a)+m(b)+m(c)
    exp = sum((term/factorial(j) for j,term in enumerate(powers(log,degree//4))),
              ctx.constant(0))
    return log, exp


def main():
    chord = chord_cube()
    log, analytic = analytic_cube()
    assert chord == analytic
    assert all(v.q == 1 for _,v in chord.terms())
    assert len([k for k,v in chord.terms() if sum(k)<=16]) == 179
    at = (3,3,6)
    assert log.to_dict()[at]==fmpq(-656,3) and analytic.to_dict()[at]==-57
    coeff = chord.to_dict()
    assert [coeff[k] for k in [(1,1,2),(1,1,6),(1,1,10),(3,3,6)]] == [-5,1,-2,-57]
    for d in range(4,degree+1,4):
        rows = [int(v) for k,v in chord.terms() if sum(k)==d]
        print('degree',d,'monomials',len(rows),'integer content',reduce(gcd,rows,0))
    print('agreement through degree',degree,'including all 179 terms through 16')
    for c, bad_exp,bad_log in [((Fraction(0),Fraction(-1)),0,0),
                               ((Fraction(1),Fraction(0)),121,68)]:
        beta = sigma_beta(3,c,sigma_moments(6),24)
        for polarization in (d1_beta,d2_beta):
            g = substitute_height2(polarization(beta),3,24)
            e = formal_exp(g,24)
            defect = dwork_residual(g,3,24)
            assert len(e)==302
            assert sum(vp(v,3)<0 for v in e.values()) == bad_exp
            assert sum(vp(v,3)<1 for v in defect.values()) == bad_log
        print('both Honda polarizations',c,'302 terms, failures',bad_exp,bad_log)


if __name__ == '__main__':
    main()
