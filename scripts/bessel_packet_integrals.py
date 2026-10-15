#!/usr/bin/env python3
"""Certified finite Bessel integrals for the actual complete Mobius packets.

Human mathematical direction: R.A. Jacob Martone.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

The entire signed coefficient is evaluated, along with all three cubic
branches and all mixed energies. Exact rational Taylor coefficients and an
explicit analytic-disk remainder replace unpriced numerical quadrature.
Finite integrals and finite degree shells do not prove the infinite bound.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction as Q
from functools import lru_cache
from math import comb, isqrt
import json
from typing import Sequence

import bessel_mobius_packet_compiler as compiler


def integer(value: int, name: str, lower: int = 0) -> int:
    if type(value) is not int or value < lower:
        raise ValueError(f'{name} must be an integer >= {lower}')
    return value


def rational(value: int | Q) -> Q:
    if type(value) is not int and not isinstance(value, Q):
        raise TypeError('an exact int or Fraction is required')
    return Q(value)


@dataclass(frozen=True)
class Ball:
    """Closed rational interval; no floating-point arithmetic is used."""
    lo: Q
    hi: Q

    def __post_init__(self) -> None:
        object.__setattr__(self, 'lo', rational(self.lo))
        object.__setattr__(self, 'hi', rational(self.hi))
        if self.lo > self.hi:
            raise ValueError('reversed interval')

    @staticmethod
    def point(x: int | Q) -> Ball:
        return Ball(rational(x), rational(x))

    @staticmethod
    def coerce(x: int | Q | Ball) -> Ball:
        return x if isinstance(x, Ball) else Ball.point(x)

    def __add__(self, other: int | Q | Ball) -> Ball:
        b = self.coerce(other)
        return Ball(self.lo + b.lo, self.hi + b.hi)

    __radd__ = __add__

    def __neg__(self) -> Ball:
        return Ball(-self.hi, -self.lo)

    def __sub__(self, other: int | Q | Ball) -> Ball:
        return self + -self.coerce(other)

    def __rsub__(self, other: int | Q | Ball) -> Ball:
        return self.coerce(other) + -self

    def __mul__(self, other: int | Q | Ball) -> Ball:
        b = self.coerce(other)
        ends = [x*y for x in (self.lo, self.hi) for y in (b.lo, b.hi)]
        return Ball(min(ends), max(ends))

    __rmul__ = __mul__

    def __truediv__(self, other: int | Q) -> Ball:
        b = rational(other)
        if not b:
            raise ZeroDivisionError('zero scalar')
        return self * (1/b)

    def square(self) -> Ball:
        a, b = self.lo**2, self.hi**2
        return Ball(Q(0) if self.lo <= 0 <= self.hi else min(a,b), max(a,b))

    def rounded(self, bits: int) -> Ball:
        integer(bits, 'rounding bits', 1)
        grid = 1 << bits
        lo = self.lo.numerator*grid//self.lo.denominator
        hi = -((-self.hi.numerator*grid)//self.hi.denominator)
        return Ball(Q(lo, grid), Q(hi, grid))

    def widen(self, radius: Q) -> Ball:
        r = rational(radius)
        if r < 0:
            raise ValueError('negative radius')
        return Ball(self.lo-r, self.hi+r)

    def zero_inside(self) -> bool:
        return self.lo <= 0 <= self.hi

    def json(self) -> dict[str,str]:
        return {'lower':str(self.lo), 'upper':str(self.hi)}


def positive_root(x: Q, order: int, bits: int) -> Ball:
    x = rational(x)
    integer(order, 'root order', 2)
    integer(bits, 'root bits', 1)
    if x <= 0:
        raise ValueError('root input must be positive')
    grid = 1 << bits
    target = x.numerator*grid**order//x.denominator
    low, high = 0, 1 << ((target.bit_length()+order-1)//order)
    while high-low > 1:
        mid = (low+high)//2
        if mid**order <= target:
            low = mid
        else:
            high = mid
    l = Q(low,grid)
    r = l if l**order == x else Q(low+1,grid)
    if not l**order <= x <= r**order:
        raise ArithmeticError('root inclusion failed')
    return Ball(l,r)


def multiply(a: Sequence[Q], b: Sequence[Q], count: int) -> list[Q]:
    out = [Q(0)]*count
    for i, x in enumerate(a[:count]):
        for j, y in enumerate(b[:count-i]):
            out[i+j] += x*y
    return out


@lru_cache(maxsize=16)
def _potential(count: int) -> tuple[Q,...]:
    # A(y)=asin(sqrt(y))/sqrt(y); r=(1-A^-2)/(18y)+1/[16(1-y)].
    A = [Q(comb(2*k,k), 4**k*(2*k+1)) for k in range(count+1)]
    inverse = [Q(1)]
    for k in range(1,count+1):
        inverse.append(-sum((A[j]*inverse[k-j] for j in range(1,k+1)), Q(0)))
    inv_square = multiply(inverse,inverse,count+1)
    return tuple(Q(1,16)-inv_square[k+1]/18 for k in range(count))


def potential(count: int) -> tuple[Q,...]:
    integer(count,'coefficient count',1)
    return _potential(count)


def normalization(n: int) -> Q:
    integer(n,'degree')
    result = Q((-1)**n)
    for k in range(1,n+1):
        result *= Q(6*k+1,6*k)
    return result


def kernel_coefficients(n: int, order: int) -> list[Q]:
    """Taylor coefficients c_0,...,c_order of the SAME complete B_n(y).

    y(1-y)B''+(7/6-13y/6)B'+[lambda-r(y)]B=0.
    The analytic branch is fixed by c_0=(-1)^n (7/6)_n/n!.
    """
    integer(n,'degree',2)
    integer(order,'Taylor order',1)
    r = potential(order)
    lam = n*(n+Q(7,6))
    c = [normalization(n)]
    for m in range(order):
        correction = sum((r[k]*c[m-k] for k in range(m+1)),Q(0))
        c.append(((m*(m+Q(7,6))-lam)*c[m]+correction)/((m+1)*(m+Q(7,6))))
    return c


def disk_parameters(n: int) -> tuple[Q,Q,Q]:
    integer(n,'degree',2)
    rho = min(Q(3,4), Q(2,n))
    nu = n+Q(7,12)
    target = 4*nu**2*rho/(1-rho)
    h = isqrt(target.numerator//target.denominator)
    if h*h < target:
        h += 1
    # exp(2nu sqrt(rho/(1-rho))) <= exp(h) < 3^h.
    majorant = abs(normalization(n))*3**h/(1-rho)
    return rho, Q(1,n)/rho, majorant


def derivative_tail(n: int, order: int) -> Q:
    integer(order,'Taylor order',1)
    rho, q, majorant = disk_parameters(n)
    return majorant/rho*q**order*((order+1)-order*q)/(1-q)**2


def choose_order(n: int, error_bits: int, max_order: int = 1024) -> int:
    integer(error_bits,'error bits',1)
    integer(max_order,'maximum Taylor order',1)
    target = Q(1,1 << error_bits)
    for order in range(1,max_order+1):
        if derivative_tail(n,order) <= target:
            return order
    raise ArithmeticError('Taylor remainder budget exhausted; no result accepted')


def horner(c: Sequence[Q], x: Q) -> Q:
    out = Q(0)
    for a in reversed(c):
        out = out*x+a
    return out


class KernelIntegral:
    """Integrate a certified Taylor approximation with analytic remainder."""
    def __init__(self, n: int, bits: int, amplification: int = 1,
                 order: int | None = None) -> None:
        integer(n,'degree',2)
        integer(bits,'output bits',16)
        integer(amplification,'amplification',1)
        if n > 64 or bits > 128:
            raise ValueError('finite resource guard: degree <=64 and bits <=128')
        self.n, self.bits = n,bits
        self.work_bits = bits+64+4*n+amplification.bit_length()
        error_bits = bits+24+amplification.bit_length()
        self.order = choose_order(n,error_bits) if order is None else integer(order,'order',1)
        self.tail = derivative_tail(n,self.order)
        if self.tail > Q(1,1 << error_bits):
            raise ArithmeticError('requested Taylor order has an unpaid remainder')
        self.c = kernel_coefficients(n,self.order)
        self.lam = n*(n+Q(7,6))
        # (1-y)B'_Taylor = sum q_r y^r, r=0,...,order.
        self.q = [(r+1)*self.c[r+1] if r < self.order else Q(0)
                  for r in range(self.order+1)]
        for r in range(1,self.order+1):
            self.q[r] -= r*self.c[r]
        self.F = [Q(0)]+[q/(r+1) for r,q in enumerate(self.q)]
        self.H = [q/(r+Q(3,4)) for r,q in enumerate(self.q)]
        self._primitives: dict[Q,tuple[Q,Ball]] = {}
        self._roots: dict[int,Ball] = {}

    def invsqrt(self,k: int) -> Ball:
        if k not in self._roots:
            self._roots[k] = positive_root(Q(1,k),2,self.work_bits)
        return self._roots[k]

    def primitives(self,y: Q) -> tuple[Q,Ball]:
        if y not in self._primitives:
            h = positive_root(y**3,4,self.work_bits)*horner(self.H,y)
            self._primitives[y] = horner(self.F,y),h
        return self._primitives[y]

    def polynomial_integral(self,left: Q,right: Q,A: Ball,M: int) -> Ball:
        if not Q(1,self.n**4) <= left <= right <= Q(1,self.n):
            raise ValueError('integral outside certified window')
        if left == right:
            return Ball.point(0)
        f0,h0 = self.primitives(left)
        f1,h1 = self.primitives(right)
        return (M*Ball.point(f1-f0)/3 - Q(5,6)*A*(h1-h0))/(2*self.lam)

    def atom(self,k: int) -> Ball:
        integer(k,'atom',1)
        left = Q(1,self.n**4)
        right = min(Q(1,self.n),Q(1,k*k))
        if right <= left:
            return Ball.point(0)
        value = self.polynomial_integral(left,right,self.invsqrt(k),1)
        # Upper bound on integral |(1-y)(1/3-5*y^-1/4/(6sqrt(k)))|/(2lambda).
        # Both differences below are nonnegative. Not an arithmetic sign split.
        upper_root = positive_root(right**3,4,self.work_bits).hi
        lower_root = positive_root(left**3,4,self.work_bits).lo
        mass = ((right-left)/3+Q(10,9)*self.invsqrt(k).hi*(upper_root-lower_root))/(2*self.lam)
        return value.widen(self.tail*mass).rounded(self.work_bits)

    def from_cells(self,coeff: Sequence[int]) -> Ball:
        """Independent carried-prefix integration over every active integer cell."""
        if len(coeff) != self.n**2+1 or coeff[0] != 0 or any(type(v) is not int for v in coeff):
            raise ValueError('need the exact closed coefficient array')
        left,right = Q(1,self.n**4),Q(1,self.n)
        A,M,total = Ball.point(0),0,Ball.point(0)
        for k in range(1,self.n**2):
            A = (A+coeff[k]*self.invsqrt(k)).rounded(self.work_bits)
            M += coeff[k]
            a,b = max(left,Q(1,(k+1)**2)),min(right,Q(1,k*k))
            if a < b:
                total = (total+self.polynomial_integral(a,b,A,M)).rounded(self.work_bits)
        if any(abs(v)>1 for v in coeff):
            raise ValueError('cell remainder bound requires |a_k|<=1')
        # From |g'|<=(4/3)y^-5/3: error <=4*tail/(3lambda sqrt(n)).
        radius = 4*self.tail*positive_root(Q(1,self.n),2,self.work_bits).hi/(3*self.lam)
        return total.widen(radius)


def contract(coeff: Sequence[int], kernels: Sequence[Ball], bits: int) -> Ball:
    if len(coeff) != len(kernels):
        raise ValueError('mismatched contraction arrays')
    if any(type(v) is not int for v in coeff):
        raise TypeError('exact integer coefficients required')
    result = Ball.point(0)
    for a,b in zip(coeff,kernels):
        if a:
            result = (result+a*b).rounded(bits)
    return result


def record(n: int, packet: compiler.CubicPacket, bits: int = 48) -> tuple[dict,tuple[Ball,...]]:
    integer(n,'degree',2)
    integer(bits,'bits',16)
    limit = n*n
    if packet.limit < limit or packet.limit >= (packet.cutoff+1)**3:
        raise ValueError('packet does not cover the coefficient with its strict cubic gate')
    mu = packet.recombined()[:limit+1]
    independent = tuple([0]+[compiler.mobius_by_factorization(k) for k in range(1,limit+1)])
    if mu != independent:
        raise ArithmeticError('actual coefficient reconstruction failed')
    rows = [row[:limit+1] for row in packet.branches]
    amplification = sum((3,3,1)[i]*sum(map(abs,row)) for i,row in enumerate(rows))+limit
    calc = KernelIntegral(n,bits,amplification)
    kernels = [Ball.point(0)]+[calc.atom(k) for k in range(1,limit+1)]
    t = contract(mu,kernels,calc.work_bits)
    T1,T2,T3 = (contract(row,kernels,calc.work_bits) for row in rows)
    assembled = 3*T1-3*T2+T3
    cells = calc.from_cells(mu)
    checks = {'coefficient_reconstruction':True,
              'packet_assembly':(t-assembled).zero_inside(),
              'source_cell_return':(t-cells).zero_inside(),
              'touching_atom_is_zero':kernels[-1] == Ball.point(0)}
    vals = {'t':t,'T1':T1,'T2':T2,'T3':T3,'assembled':assembled,'source_cells':cells,
            'discarded_carry_control':contract(mu[:isqrt(n)+1],kernels[:isqrt(n)+1],calc.work_bits)}
    if not all(checks.values()):
        raise ArithmeticError('independently organized integrals disagree')
    if any(v.hi-v.lo > Q(1,1 << (bits+2)) for v in vals.values()):
        raise ArithmeticError('unresolved cancellation; increase working precision')
    rho,q,majorant = disk_parameters(n)
    rec = {'degree':n,'physical_range':[f'sqrt({n})',str(n*n)],
           'closed_source_limit':limit,'shared_mobius_prefix':packet.cutoff,
           'taylor_order':calc.order,'work_bits':calc.work_bits,'analytic_radius':str(rho),
           'radius_ratio':str(q),'disk_majorant':str(majorant),
           'uniform_derivative_remainder':str(calc.tail),
           'intervals':{k:v.rounded(bits).json() for k,v in vals.items()},'checks':checks}
    return rec,(t,T1,T2,T3)


def shell(start: int, bits: int = 48) -> dict:
    plan = compiler.shell_plan(start)
    if start > 32:
        raise ValueError('finite resource guard: shell start <=32')
    packet = compiler.compile_prefix(plan['closed_source_limit'])
    records = []
    names = ('first','second','third','first_second','first_third','second_third')
    energy = {name:Ball.point(0) for name in names}
    direct = Ball.point(0)
    for n in range(start,2*start):
        rec,(t,a,b,c) = record(n,packet,bits)
        records.append(rec)
        w = 4*n+Q(7,3)
        terms = (9*a.square(),9*b.square(),c.square(),-18*a*b,6*a*c,-6*b*c)
        for name,term in zip(names,terms):
            energy[name] = (energy[name]+w*term).rounded(bits+32)
        direct = (direct+w*t.square()).rounded(bits+32)
    expanded = sum(energy.values(),Ball.point(0))
    diagonal = energy['first']+energy['second']+energy['third']
    mixed = energy['first_second']+energy['first_third']+energy['second_third']
    if not (expanded-direct).zero_inside():
        raise ArithmeticError('six-term mixed-energy check failed')
    energy.update({'joint':direct,'diagonal_only':diagonal,'mixed':mixed,
                   'expanded':expanded,'identity_residual':expanded-direct})
    if any(v.hi-v.lo > Q(1,1 << (bits-4)) for v in energy.values()):
        raise ArithmeticError('shell energy uncertainty exceeds requested tolerance')
    return {'plan':plan,'records':records,
            'energies':{k:v.rounded(bits).json() for k,v in energy.items()},
            'mixed_identity_consistent':True,'bessel_source_integrals_evaluated':True,
            'uniform_bound_proved':False,'lean_replay':'NOT_RUN'}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--shell',type=int,action='append')
    parser.add_argument('--bits',type=int,default=48)
    args = parser.parse_args()
    try:
        out = {'schema':'bessel-packet-actual-integrals-v1',
               'scope':'finite certified integrals only; no infinite shell-tail estimate',
               'shells':[shell(start,args.bits) for start in (args.shell or [2,4])],
               'uniform_energy_bound_proved':False,'native_lean_replay':'NOT_RUN'}
    except (ValueError,TypeError,ArithmeticError) as error:
        parser.exit(2,f'error: {error}\n')
    print(json.dumps(out,indent=2))


if __name__ == '__main__':
    main()
