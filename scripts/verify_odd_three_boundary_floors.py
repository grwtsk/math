#!/usr/bin/env python3
"""Exact rational interval verification of five q=3 odd boundary floors.

Scope: only the scalar boundary potential. No full signed Weil sign or Lean proof.
Attribution: grwtsk contributors; AI-assisted development.
Euler constant enclosure follows an elementary trapezoid-error argument:
0 < gamma - (H_n - log(n) - 1/(2*n)) < 1/(8*n*n).
Indeed the trapezoid error on [k,k+1] for t -> 1/t is
int_k^(k+1) (t-k)*(k+1-t)/t**3 dt
<= (1/4) int_k^(k+1) t**(-3) dt;
sum for k >= n. All other bounds use rational series remainders.
"""
from fractions import Fraction as F
from math import factorial, isqrt
import json

NLOG=24
NATAN=20

def log_atanh_t(t):
    assert F(0) <= t <= F(1,3), t
    s=sum((2*t**(2*k+1)/F(2*k+1) for k in range(NLOG)),F(0))
    rem=2*t**(2*NLOG+1)/((2*NLOG+1)*(1-t*t))
    return (s, s+rem)
LN2=log_atanh_t(F(1,3))

def interval_add(a,b):return (a[0]+b[0],a[1]+b[1])
def interval_sub(a,b):return (a[0]-b[1],a[1]-b[0])
def interval_mul(a,b):
    vals=[x*y for x in a for y in b];return (min(vals),max(vals))
def interval_div(a,b):
    assert b[0]*b[1]>0
    return interval_mul(a,(1/b[1],1/b[0]))
def point(x):return (x,x)

def log_pos_point(x):
    assert x>0
    if x<1:
        lo,hi=log_pos_point(1/x)
        return -hi,-lo
    y=x;k=0
    while y>=2:y/=2;k+=1
    while y<1:y*=2;k-=1
    assert F(1)<=y<=2
    t=(y-1)/(y+1)
    ans=log_atanh_t(t)
    if k>=0:
        return interval_add(ans,(k*LN2[0],k*LN2[1]))
    return interval_sub(ans,((-k)*LN2[0],(-k)*LN2[1]))

def log_interval(x):
    return (log_pos_point(x[0])[0],log_pos_point(x[1])[1])

def atan_small(x):
    assert F(0)<=x<=F(1,2)
    s=sum(((-1)**k*x**(2*k+1)/F(2*k+1) for k in range(NATAN)),F(0))
    rem=x**(2*NATAN+1)/F(2*NATAN+1)
    if NATAN%2 == 0:return (s,s+rem)
    return (s-rem,s)

PI=interval_sub(tuple(16*z for z in atan_small(F(1,5))),
                tuple(4*z for z in atan_small(F(1,239))))

def atan_point(x):
    assert 0<=x<=1
    if x<=F(1,2):return atan_small(x)
    y=(1-x)/(1+x)
    pi4=(PI[0]/4,PI[1]/4)
    return interval_sub(pi4,atan_small(y))

def square_root_interval(x,precision=10**12):
    assert x[0]>0
    lo=isqrt(x[0].numerator*precision**2//x[0].denominator)
    hi=isqrt(x[1].numerator*precision**2//x[1].denominator)
    return (F(lo,precision),F(hi+1,precision))

def tail_of_x_point(x):
    assert 0<x<1
    l=log_pos_point((1+x)/(1-x))
    a=atan_point(x)
    return interval_sub((l[0]/2,l[1]/2),a)

def tail_of_x_interval(x):
    return (tail_of_x_point(x[0])[0],tail_of_x_point(x[1])[1])

NE=19
es=sum((F(1,factorial(k)) for k in range(NE+1)),F(0))
efirst=F(1,factorial(NE+1))
EULER_NUM=(es,es+efirst*F(NE+2,NE+1))
SQ2=square_root_interval(point(F(2)),10**12)
SQ5=square_root_interval(point(F(5)),10**12)
SQ7=square_root_interval(point(F(7)),10**12)
SQE=square_root_interval(EULER_NUM,10**12)

NH=250
H=sum((F(1,k) for k in range(1,NH+1)),F(0))
gamma_low=interval_sub(point(H-F(1,2*NH)),log_pos_point(F(NH)))
GAMMA=(gamma_low[0],gamma_low[1]+F(1,8*NH**2))

logs={i:log_pos_point(F(i)) for i in [2,3,4,5,7]}
p=interval_div(logs[2],SQ2)
a=interval_div(logs[2],point(F(2)))
b=interval_div(logs[5],SQ5)
c=interval_div(logs[7],SQ7)
C=interval_add(
    interval_sub(interval_sub(logs[3],log_interval(PI)),GAMMA),
    interval_sub((PI[0]/2,PI[1]/2),(3*LN2[0],3*LN2[1]))
)

# x=exp(-y/2) at y=1-u and y=1+u, u at five support left endpoints.
pairs=[(interval_div(point(F(1)),SQE),interval_div(point(F(1)),SQE)),
       (interval_div(point(F(1)),SQ2),interval_div(SQ2,EULER_NUM)),
       (interval_div(point(F(2)),EULER_NUM),point(F(1,2))),
       (interval_div(SQ5,EULER_NUM),interval_div(point(F(1)),SQ5)),
       (interval_div(SQ7,EULER_NUM),interval_div(point(F(1)),SQ7))]
assert all(0<z[0]<=z[1]<1 for ab in pairs for z in ab)

A=[F(1),F(2,3),F(3,8),F(5,4),F(11,8)]
source=["[0,1-log2)","[1-log2,log4-1)","[log4-1,log5-1)",
        "[log5-1,log7-1)","[log7-1,1)"]
rows=[]
for j,(x1,x2) in enumerate(pairs):
    hx=interval_add(tail_of_x_interval(x1),tail_of_x_interval(x2))
    dj=interval_add(interval_add(C,point(F(1))),
                    interval_add((2*p[0],2*p[1]),hx))
    for k,weight in [(0,p),(1,a),(2,b),(3,c)]:
        if k<j:
            if k in (0,1,3):dj=interval_sub(dj,weight)
            else:dj=interval_add(dj,weight)
    threshold=A[j]+F(1,100)
    pass0=dj[0]>threshold
    lo6=(dj[0].numerator*1000000)//dj[0].denominator
    hi6=-((-dj[1].numerator*1000000)//dj[1].denominator)
    rows.append(dict(interval=source[j],
                     rational_bracket_1e6=(str(lo6)+"/1000000",str(hi6)+"/1000000"),
                     D_min_interval=(str(float(dj[0])),str(float(dj[1]))),
                     rational_threshold=str(threshold),
                     exact_strict_pass=pass0,
                     lower_margin=str(float(dj[0]-threshold))))

order_tests=[
    logs[2][1]<point(F(1))[0],
    (point(F(1))[0]-logs[2][1])<(logs[4][0]-point(F(1))[1]),
    (logs[4][1]-1)<(logs[5][0]-1),
    (logs[5][1]-1)<(logs[7][0]-1),
    logs[7][1]<2
]
print(json.dumps({"method":"exact-Fraction-Taylor-intervals",
                  "log_terms":NLOG,"atan_terms":NATAN,"harmonic_n":NH,
                  "gamma_interval":[float(GAMMA[0]),float(GAMMA[1])],
                  "pi_interval":[float(PI[0]),float(PI[1])],
                  "gammaConstant_3_1_interval":[float(C[0]),float(C[1])],
                  "breakpoint_order":order_tests,"rows":rows},indent=2))
assert all(order_tests) and all(z["exact_strict_pass"] for z in rows)
print("PASS: all five D(u) >= alpha_j + 1/100 using exact rational comparisons")
