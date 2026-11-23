"""Count the heat zeros in [0,108] × [-1,1] at time 1/8 by a certified winding."""

from functools import lru_cache
from math import factorial

from flint import acb, arb

from verify_xi_newman_collisions import check_quadrature_budget, heat_jet

ORDER = 44
TIME = arb(1) / 8


@lru_cache(maxsize=None)
def coefficients(center):
    jet = heat_jet(arb(center), TIME, ORDER)
    return [v / factorial(j) for j, v in enumerate(jet)]


def theta_image(x0, y0, x1, y1):
    """Enclose the image of a closed axis-aligned segment with dyadic coordinates."""
    center = round((x0 + x1) / 2)
    dx = arb((x0+x1)/2-center, abs(x1-x0)/2)
    dy = arb((y0+y1)/2, abs(y1-y0)/2)
    offset = acb(dx, dy)
    values = coefficients(center)
    out = acb(0)
    for coefficient in reversed(values):
        out = out * offset + coefficient
    v = 2 * abs(offset).upper()
    assert v < 4
    # Truncate the cosine Taylor series on 0 <= u <= 2. On the remaining
    # real tail, both the translated integrand and its Taylor sum are
    # bounded by the double-exponential majorant used for the original jets.
    error = (2+v).exp() * v**(ORDER+1) / factorial(ORDER+1) + arb('1e-90')
    return out + acb(arb(0,error), arb(0,error))


@lru_cache(maxsize=None)
def vertex(x, y):
    value = theta_image(x, y, x, y)
    return value.real.mid().fmpq(), value.imag.mid().fmpq()


def crossing(left, right):
    x, y = left
    u, v = right
    orientation = x*v-y*u
    if y <= 0 < v and orientation > 0:
        return 1
    if v <= 0 < y and orientation < 0:
        return -1
    return 0


def edge(x0, y0, x1, y1, depth=0):
    image = theta_image(x0, y0, x1, y1)
    left, right = vertex(x0, y0), vertex(x1, y1)
    for ball, (a,b) in zip((image.real, image.imag), zip(left, right)):
        if (ball > 0 and a > 0 and b > 0) or (ball < 0 and a < 0 and b < 0):
            return crossing(left, right), 1
    assert depth < 20
    xm, ym = (x0+x1)/2, (y0+y1)/2
    first, n = edge(x0, y0, xm, ym, depth+1)
    second, m = edge(xm, ym, x1, y1, depth+1)
    return first+second, n+m


def verify():
    check_quadrature_budget()
    boundary = [(x,-1) for x in range(109)] + [(108,0)]
    boundary += [(x,1) for x in range(108,-1,-1)] + [(0,0),(0,-1)]
    # Integers and recursive dyadic midpoints are all exact here.
    segments = [edge(*a,*b) for a,b in zip(boundary,boundary[1:])]
    winding = sum(k for k,_ in segments)
    samples = [0,35,46,55,63,70,78,84,91,97,102,108]
    for i,x in enumerate(samples):
        assert (-1)**i * coefficients(x)[0] > 0
    assert winding == len(samples)-1 == 11
    print('time 1/8, rectangle [0,108] x [-1,1], winding', winding,
          'accepted segments', sum(n for _,n in segments))
    print('11 disjoint sign changes; all 11 enclosed zeros real and simple')


if __name__ == '__main__':
    verify()
