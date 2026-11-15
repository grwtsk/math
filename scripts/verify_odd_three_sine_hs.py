#!/usr/bin/env python3
"""Finite exact arithmetic replay + mathematical proof obligations for q3 T=1.

A source-bound implementation of the HS#2 6886476754 rational envelope.
The output PASS describes assertions of this program. It DOES NOT by itself
prove its interpolation, gamma-tail, Fourier normalization or Lean status.
Attribution: grwtsk contributors, AI-assisted development.
"""
from fractions import Fraction as F
from math import factorial, isqrt
import json

S=10**12
GRID=128
RADIUS=256
PI_LO=3141592653589
PI_HI=3141592653590
TAU=2*PI_HI
ALPHA=S
# Signed source response coefficients: -2*w_n, NOT the pairedPrimeWeight w_n.
# (n, approx log(n) * S, approx (-w_n) * S)
PRIME=(
    (2,693147180600,+490129071700),
    (4,1386294361100,-346573590300),
    (5,1609437912400,+719762515600),
    (7,1945910149100,-735484904000),
)

# The only nonzero original chi mod 3 arithmetic weights in Icc 2 7.
# n=3 and n=6 have genuine native zero weight; n=4 is 2^2, with
# absolute paired weight log(2)/2 but the shift is log(4).
assert tuple(n for n,r,w in PRIME)==(2,4,5,7)
assert tuple((w>0)-(w<0) for n,r,w in PRIME)==(1,-1,1,-1)
assert GRID==128 and S==10**12 and RADIUS==256

def atan_interval(x, count=20):
    s=sum(((-1)**k * x**(2*k+1) / (2*k+1) for k in range(count)), F(0))
    assert count%2==0
    return (s,s+x**(2*count+1)/(2*count+1))

def log_interval(x,count=80):
    assert x>1
    z=(x-1)/(x+1)
    s=sum((2*z**(2*k+1)/(2*k+1) for k in range(count)), F(0))
    return (s,s+2*z**(2*count+1)/((2*count+1)*(1-z*z)))

def check_source_constants():
    low5,up5=atan_interval(F(1,5))
    low239,up239=atan_interval(F(1,239))
    assert F(PI_LO,S)<16*low5-4*up239<16*up5-4*low239<F(PI_HI,S)
    lo2,hi2=log_interval(F(2))
    for n,r,w in PRIME:
        ln_lo,ln_hi=log_interval(F(n))
        assert F(r-100,S)<ln_lo<ln_hi<F(r+100,S)
        if n==4:
            wlo,whi=lo2/2,hi2/2
        else:
            sqrtlo=isqrt(n*S*S)
            wlo,whi=ln_lo*S/(sqrtlo+1),ln_hi*S/sqrtlo
        assert F(abs(w)-100,S)<wlo<whi<F(abs(w)+100,S)
    derivative = 2*(F(1,2)*F(7,10) + F(35,100)*F(14,10) + F(73,100)*F(17,10) + F(74,100)*2) + F(14,9)
    assert derivative<9
    for (n,r,w),rc,wc in zip(PRIME,[F(7,10),F(14,10),F(17,10),F(2)],[F(1,2),F(35,100),F(73,100),F(74,100)]):
        assert F(r+100,S)<rc and F(abs(w)+100,S)<wc
    Euler_up=F(sum((S+k-1)//k for k in range(1,2049)),S)-11*lo2
    assert F(1)+log_interval(F(3))[0]-log_interval(F(PI_HI,S))[1]-Euler_up+F(PI_LO,2*S)-3*hi2>F(-133,1000)
    assert F(4**26,factorial(26))*S<12
    assert F(4**27,factorial(27))*S<2
    return derivative

def trig(x,sine=False):
    turns=(x+TAU//2)//TAU
    assert abs(turns)<=82
    y=x-turns*TAU
    assert abs(y)<4*S
    term=y if sine else S
    total=term
    for k in range(1,13):
        d=2*k if sine else 2*k-1
        term=(-term*y*y)//(S*S*d*(d+1))
        total+=term
    return total

def gamma_lower(num,den):
    # x=num/den, 2a_j=3+4j.
    nn=(2*num)**2
    v=0
    for j in range(64):
        a=3+4*j
        v+=4*nn*S//(a*((a*den)**2+nn))
    an=3+4*64
    z=nn*S//(2*(an*den)**2+nn)
    zsq=z*z//S
    term=z
    for k in range(12):
        v+=term//(2*k+1)
        term=term*zsq//S
    return v

def exact_trig_error_contract():
    # Recurrence e_k<1+r_k e_(k-1); scaled true Taylor term uses
    # multiplication by -y^2/(S^2*d_k*(d_k+1)), |y|<4*S.
    max_errors=[]
    for sine in (False,True):
        e=F(0)
        v=[]
        for k in range(1,13):
            d=2*k if sine else 2*k-1
            e=F(1)+F(16,d*(d+1))*e
            v.append(e)
        assert max(v)<3
        assert sum(v)<36
        max_errors.append(str(max(v)))
    # Total <36 floors +12 omitted Taylor +164 period reductions =212.
    assert 36+12+2*82==212
    assert 212<500
    # Four actual prime weights, shifts. x<=256 on the original grid.
    shift_cos_err=256*100+1+212
    sum_weight_caps=F(1,2)+F(35,100)+F(73,100)+F(74,100)
    signed_prime_err=2*(4*100+sum_weight_caps*shift_cos_err)+4
    assert signed_prime_err==F(3014408,25)
    assert signed_prime_err<S//10**6
    assert signed_prime_err<S//(4*10**6)
    return dict(max_recurrence_error_bounds=max_errors, trig_error_units=212, native_prime_response_error_units=str(signed_prime_err))

def finite_enclosure():
    base=-133*S//1000
    mass=2*sum(abs(w)+100 for _,_,w in PRIME)
    tail=base+gamma_lower(RADIUS,1)-mass
    assert tail>=ALPHA
    cells=[]
    for k in range(RADIUS*GRID):
        m=base+gamma_lower(2*k+1,2*GRID)-S//10**6
        for n,r,w in PRIME:
            m+=2*w*trig(r*(2*k+1)//(2*GRID))//S
        # derivative global bound |m'|<9; interval half-width 1/(2 GRID)
        D=ALPHA-m+9*S//(2*GRID)
        if D>0:
            cells.append((k,D))
    assert cells
    last=cells[-1][0]
    sinc=[S]
    for j in range(1,2*last+2):
        sinc.append(trig(j*S//GRID,sine=True)*GRID//j)
    variation=2*(500*GRID+1)+S//GRID
    total=0
    for i,(k,d) in enumerate(cells):
        major=abs(S-sinc[2*k+1])+variation
        total+=d*d*major*major
        for l,e in cells[:i]:
            major=abs(sinc[k-l]-sinc[k+l+1])+variation
            total+=2*d*e*major*major
    denominator=S*S*GRID*GRID*PI_LO*PI_LO
    assert total*100<81*denominator
    # Published §11 radius-one margin: (219/250)^2 = 47961/62500.
    assert total*62500<47961*denominator
    assert len(cells)==1381 and last==20275
    return {
      'tail_m_lower_scaled':[tail,S],
      'cells':len(cells),
      'last_cell':last,
      'hs_squared_upper':[total,denominator],
      'rational_upper_fraction':str(F(total,denominator)),
      'compare_hs_squared_lt_81_over_100':True,
      'compare_hs_norm_lt_219_over_250':True,
      'potential_grid_frequency_cells':RADIUS*GRID,
      'omitted_cell_count':RADIUS*GRID-len(cells)
    }

if __name__=='__main__':
    derivative=check_source_constants()
    trig_error=exact_trig_error_contract()
    result=finite_enclosure()
    print(json.dumps({
      'schema':'q3-sine-HS-integer-certificate-v1',
      'source_math_revision':'5b5896a3aa9d0fd92d4217c9e82ff79c9a7e3782',
      'source_HS_comment':6886476754,
      'status':'FINITE_INTEGER_ASSERTIONS_PASS',
      'scope':'exact integer/Fraction replay and stated preconditions; independent analytic soundness, source correspondence, Lean/kernel NOT ESTABLISHED',
      'gamma_plus_prime_derivative_upper':str(derivative),
      **trig_error,
      **result
    },sort_keys=True,indent=2))
