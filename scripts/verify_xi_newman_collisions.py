"""Interval enclosures of the real theta heat flow and its collision Jacobian."""
from functools import lru_cache
from math import factorial
from flint import arb, ctx

ctx.prec = 192
PI = arb.pi()
STEP = 256
ORDER = 32
JET_ERROR = arb('1e-30')


@lru_cache(maxsize=1)
def theta_samples():
    samples = []
    for j in range(2*STEP+1):
        u = arb(j)/STEP
        e4, e5, e9 = (4*u).exp(), (5*u).exp(), (9*u).exp()
        theta = sum(((2*PI**2*n**4*e9-3*PI*n*n*e5)*(-PI*n*n*e4).exp()
                     for n in range(1, 7)), arb(0))
        samples.append((u, theta/(2*STEP if j == 0 else STEP)))
    return samples


def check_quadrature_budget():
    # Shift both full-line Fourier contours by 1/8. On 0..2 their
    # L1 norms before the oscillatory factor are <= 2*70 exp(18+5)*3^67.
    alias = 4 * (140 * arb(23).exp() * 3**67 + 1) * (arb(110)/8).exp()
    alias /= (2*PI*STEP/8).exp()-1
    # For omitted n>=7, successive n^4 exp(-pi n^2) terms have ratio <1/2.
    theta = 3*100*arb(23).exp()*2**67*7**4*(-49*PI).exp()
    assert alias + theta + arb('1e-90') < JET_ERROR
    # The u>=2 tails on the real and shifted lines are < exp(-1000-u).
    # Using log(u+1)<=u, u^2<=exp(2u), and exp(4u)>=exp(8)*(1+4*(u-2))
    # bounds the polynomial and heat costs by a portion of the double exponential.
    assert (PI*(arb(1)/2).cos()) > 2
    assert arb(8).exp() > 2000
    assert arb(8).exp() > 80*2 + 1005
    assert arb(8).exp()*4 > 80
    assert ((arb(8)/7)**4 * (-15*PI).exp()) < arb(1)/2


def heat_jet(x, t, degree):
    assert abs(x) <= 110 and abs(t) <= 2 and t <= arb(1)/2 and degree <= 67
    values = [arb(0) for _ in range(degree+1)]
    for u, base in theta_samples():
        term = base*(t*u*u).exp()
        cosine, sine = (x*u).cos(), (x*u).sin()
        phases = (cosine, -sine, -cosine, sine)
        for k in range(degree+1):
            values[k] += term*phases[k % 4]
            term *= u
    return [v+arb(0, JET_ERROR) for v in values]


def heat_box(jet, derivative, x_offset, t_offset, order):
    # Total-degree expansion in (dx, dt); heat time differentiates as -d_x^2.
    rows = []
    for b in range(order+1):
        row = arb(0)
        for a in reversed(range(order+1-b)):
            row = row*x_offset + jet[derivative+2*b+a]/factorial(a)
        rows.append((-1)**b*row/factorial(b))
    value = arb(0)
    for row in reversed(rows):
        value = value*t_offset + row
    v = (2*abs(x_offset)+4*abs(t_offset)).upper()
    # On 0<=u<=2 the center heat costs at most exp(2), and integral Phi <1.
    # Above 2, the exponential majorant controls both full and truncated integrands.
    error = 2**derivative * (2+v).exp()*v**(order+1)/factorial(order+1) + arb('1e-90')
    return value+arb(0, error)


def certify_positive_window():
    visited = 0
    for x in range(110):
        center = arb(x)+arb(1)/2
        jet = heat_jet(center, arb(1)/4, 2*ORDER+1)
        stack = [(arb(0), arb(1)/2, arb(0), arb(1)/4, 0)]
        while stack:
            cx, rx, ct, rt, depth = stack.pop()
            visited += 1
            dx, dt = arb(cx, rx), arb(ct, rt)
            if any(not heat_box(jet, j, dx, dt, ORDER).contains(0) for j in (0, 1)):
                continue
            assert depth < 14, (center, cx, ct)
            if depth % 2 == 0:
                stack.extend((cx+s*rx/2, rx/2, ct, rt, depth+1) for s in (-1, 1))
            else:
                stack.extend((cx, rx, ct+s*rt/2, rt/2, depth+1) for s in (-1, 1))
    print('no collision on [0,110] x [0,1/2]; tested boxes', visited, flush=True)


def certify_negative_collision():
    center = arb('99.32846930557575')
    time = arb('-1.877909072972535')
    radius = arb('1e-9')
    jet = heat_jet(center, time, 11)
    f, fx, fxx, fxxx = jet[:4]
    det = fxx**2-fx*fxxx
    inverse = [[(-fxxx/det).mid(), (fxx/det).mid()],
               [(-fxx/det).mid(), (fx/det).mid()]]
    shift = max(abs(row[0]*f + row[1]*fx).upper() for row in inverse)
    delta = arb(0, radius)
    dx, dxx, dxxx = [heat_box(jet, j, delta, delta, 4) for j in (1, 2, 3)]
    jac = [[dx, -dxx], [dxx, -dxxx]]
    contraction = max(sum(abs(int(i == j)-sum(inverse[i][k]*jac[k][j] for k in range(2)))
                          for j in range(2)).upper() for i in range(2))
    assert shift + radius*contraction < radius and contraction < arb(1)/2
    assert not dxx.contains(0)
    print('unique simple double collision; center', center.str(17), time.str(17),
          'radius', radius.str(3), 'center correction', shift.str(6),
          'contraction', contraction.str(6), flush=True)


if __name__ == '__main__':
    check_quadrature_budget()
    certify_negative_collision()
    certify_positive_window()
