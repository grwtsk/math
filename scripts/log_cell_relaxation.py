#!/usr/bin/env python3
"""Source-specific logarithmic-cell centering with outward rational arithmetic.

Human mathematical direction: grwtsk contributors. Derivation/implementation:
OpenAI ChatGPT. MIT. Written continuum proofs and historical candidates are in
evidence/number-theory/moebius/log-cell-relaxation-20261014/. These computations
do not constitute Lean admission or an RH proof. Integration hardening retains
the original arithmetic and source signs.

The source is F(t)=2*(sum_{k<=exp(t)} mu(k)/sqrt(k)
                      -exp(-t/2)*sum_{k<=exp(t)} mu(k)).
No zeta evaluator, imported zero table, floating-point acceptance, or sign
replacement is used. Approximation interval endpoints are exact Fractions.
"""
from __future__ import annotations
from dataclasses import dataclass
from fractions import Fraction as Q
from math import isqrt
import argparse
import hashlib
import json

MAX_REPORT_BYTES = 16 * 1024 * 1024
MAX_SUBCELLS = 262144
PREFIX_FIELDS = frozenset({
    'schema', 'source', 'horizon', 'cutoff', 'level', 'bits', 'mu_sha256',
    'integrated_energy', 'cell_mean_energy', 'prefix_variance',
    'uncomputed_variance_tail_upper', 'all_height_variance_upper',
    'theoretical_all_height_bound', 'whole_source_energy_bounded',
    'native_lean_admission', 'rows',
})
OPERATOR_FIELDS = frozenset({
    'schema', 'cutoff', 'bits', 'linfinity_norm_squared_prefix',
    'linfinity_norm_squared_tail_upper', 'linfinity_norm_squared_upper',
    'hilbert_schmidt_squared_prefix', 'hilbert_schmidt_squared_tail_upper',
    'hilbert_schmidt_squared_upper', 'universal_bounds', 'source_scope',
    'full_signed_energy_bound', 'native_lean_admission',
})


def unique_object(pairs):
    """Reject ambiguous JSON objects at every nesting level."""
    result = {}
    for key, value in pairs:
        if key in result:
            raise ValueError(f'duplicate JSON key: {key}')
        result[key] = value
    return result


def nonexact_json_number(value):
    raise ValueError(f'nonexact JSON number: {value}')


def integer(x: int, name: str, lo: int, hi: int) -> int:
    if type(x) is not int or not lo <= x <= hi:
        raise ValueError(f'{name} must be an integer in [{lo},{hi}]')
    return x


def rational(x) -> Q:
    if isinstance(x, bool) or isinstance(x, float):
        raise TypeError('exact integers/Fractions/strings required')
    return Q(x)


def floorq(x: Q) -> int:
    return x.numerator // x.denominator


def ceilq(x: Q) -> int:
    return -((-x.numerator) // x.denominator)


@dataclass(frozen=True)
class Interval:
    lo: Q
    hi: Q
    bits: int = 160

    def __post_init__(self):
        object.__setattr__(self, 'lo', rational(self.lo))
        object.__setattr__(self, 'hi', rational(self.hi))
        integer(self.bits, 'bits', 64, 512)
        if self.lo > self.hi:
            raise ValueError('reversed interval')

    @classmethod
    def exact(cls, x, bits=160):
        return cls(rational(x), rational(x), bits)

    @classmethod
    def rounded(cls, lo, hi, bits=160):
        integer(bits, 'bits', 64, 512)
        lo, hi = rational(lo), rational(hi)
        if lo > hi:
            raise ValueError('reversed interval before rounding')
        s = 1 << bits
        return cls(Q(floorq(lo*s), s), Q(ceilq(hi*s), s), bits)

    def coerce(self, other):
        if not isinstance(other, Interval):
            return Interval.exact(other, self.bits)
        if other.bits != self.bits:
            raise ValueError('mixed precision profile')
        return other

    def __add__(self, other):
        b = self.coerce(other)
        return Interval.rounded(self.lo+b.lo, self.hi+b.hi, self.bits)

    __radd__ = __add__

    def __neg__(self):
        return Interval(-self.hi, -self.lo, self.bits)

    def __sub__(self, other):
        return self + (-self.coerce(other))

    def __rsub__(self, other):
        return self.coerce(other) - self

    def __mul__(self, other):
        b = self.coerce(other)
        ends = [self.lo*b.lo, self.lo*b.hi, self.hi*b.lo, self.hi*b.hi]
        return Interval.rounded(min(ends), max(ends), self.bits)

    __rmul__ = __mul__

    def reciprocal(self):
        if self.lo <= 0 <= self.hi:
            raise ZeroDivisionError('interval contains zero')
        return Interval.rounded(1/self.hi, 1/self.lo, self.bits)

    def __truediv__(self, other):
        return self * self.coerce(other).reciprocal()

    def square(self):
        lo = Q(0) if self.lo <= 0 <= self.hi else min(self.lo**2, self.hi**2)
        return Interval.rounded(lo, max(self.lo**2, self.hi**2), self.bits)

    def intersect(self, lo, hi):
        return Interval(max(self.lo, rational(lo)), min(self.hi, rational(hi)), self.bits)

    def contains(self, x):
        return self.lo <= rational(x) <= self.hi

    def overlaps(self, other):
        return max(self.lo, other.lo) <= min(self.hi, other.hi)

    def record(self):
        return {'lower': str(self.lo), 'upper': str(self.hi)}


def inverse_power_two_root(n: int, order: int, bits=160) -> Interval:
    """Enclose n^(-1/order); order must be a power of two."""
    if type(n) is not int or n < 1 or n.bit_length() > 65536:
        raise ValueError('positive bounded-size radicand required')
    integer(order, 'root order', 2, 128)
    integer(bits, 'bits', 64, 512)
    if order & (order-1):
        raise ValueError('root order is not a power of two')
    s = 1 << bits
    k = (1 << (bits*order)) // n
    for _ in range(order.bit_length()-1):
        k = isqrt(k)
    hi = k if k**order*n == s**order else k+1
    return Interval(Q(k,s), Q(hi,s), bits)


def log_cell_width(n: int, bits=160) -> Interval:
    """log(1+1/n) from an atanh series and an explicit geometric tail."""
    integer(n, 'cell index', 1, 10**9)
    integer(bits, 'bits', 64, 512)
    z = Q(1,2*n+1)
    z2 = z*z
    total, power = Q(0), z
    for j in range(1024):
        total += 2*power/(2*j+1)
        power *= z2
        tail = 2*power/((2*j+3)*(1-z2))
        if tail <= Q(1,1 << (bits+12)):
            return Interval.rounded(total,total+tail,bits)
    raise ArithmeticError('log series resource guard; no result')


def moebius_sieve(n: int) -> list[int]:
    integer(n, 'cutoff', 1, 1000000)
    mu = [0]*(n+1)
    mu[1] = 1
    primes, composite = [], [False]*(n+1)
    for i in range(2,n+1):
        if not composite[i]:
            primes.append(i)
            mu[i] = -1
        for p in primes:
            if i*p > n:
                break
            composite[i*p] = True
            if i % p == 0:
                mu[i*p] = 0
                break
            mu[i*p] = -mu[i]
    return mu


def subcell_endpoints(n: int, level: int, index: int, bits=160):
    integer(level,'level',0,6)
    q = 1 << level
    integer(index,'subcell',0,q-1)
    def endpoint(k):
        return inverse_power_two_root(n**(q-k)*(n+1)**k,2*q,bits)
    return endpoint(index),endpoint(index+1)


def cell_components(n: int, A: Interval, M: int, level=0):
    """Exact expressions enclosed, with all signed prefix cross terms retained."""
    integer(n,'cell index',1,1000000)
    integer(M,'Mertens prefix',-n,n)
    integer(level,'level',0,6)
    bits = A.bits
    q = 1 << level
    width = log_cell_width(n,bits)
    h = width/q
    mean_energy = Interval.exact(0,bits)
    variance = Interval.exact(0,bits)
    direct = Interval.exact(0,bits)
    means = []
    for k in range(q):
        a,b = subcell_endpoints(n,level,k,bits)
        S = 2*(a-b)
        C = Interval.exact(Q(1,n*(n+1)),bits) if level == 0 else a.square()-b.square()
        mean = 2*(A - M*(S/h))
        v = 4*M*M*(C - S.square()/h)
        # Derived continuum inequality: Var_I(F)<=M^2*h^3/(12*n).
        # The archived written derivation justifies this, not sampling.
        v = v.intersect(0,Q(M*M,12*n)*h.hi**3)
        g = h*mean.square()
        e = 4*(A.square()*h - 2*M*A*S + M*M*C)
        if not e.overlaps(g+v):
            raise ArithmeticError('centering formula enclosure mismatch')
        mean_energy += g
        variance += v
        direct += e
        means.append(mean)
    if variance.hi > Q(1,12*q*q*n*n):
        raise ArithmeticError('variance exceeds unconditional source bound')
    return dict(mean_energy=mean_energy,variance=variance,direct=direct,
                width=width,means=means)


def full_prefix(cutoff=4096,level=0,bits=160,keep_rows=False):
    integer(cutoff,'cutoff',1,1000000)
    integer(level,'level',0,6)
    integer(bits,'bits',64,512)
    if type(keep_rows) is not bool:
        raise ValueError('keep_rows must be Boolean')
    if cutoff * (1 << level) > MAX_SUBCELLS:
        raise ValueError('subcell resource guard; no result')
    mu = moebius_sieve(cutoff)
    A = Interval.exact(0,bits)
    M = 0
    G = V = E = Interval.exact(0,bits)
    rows=[]
    for n in range(1,cutoff+1):
        M += mu[n]
        A += mu[n]*inverse_power_two_root(n,2,bits)
        c=cell_components(n,A,M,level)
        G += c['mean_energy']; V += c['variance']; E += c['direct']
        if keep_rows:
            rows.append({'n':n,'mu':mu[n],'M':M,'A':A.record(),
                         'variance':c['variance'].record(),
                         'mean_energy':c['mean_energy'].record()})
    # Sum_{n>cutoff} 1/n^2 <= 1/cutoff, with no arithmetic assumption.
    tail=Q(1,12*(4**level)*cutoff)
    if not E.overlaps(G+V):
        raise ArithmeticError('aggregate energy mismatch')
    return dict(schema='source-log-cell-centering-v1',
                source='complete signed Mobius pickup; no zeta evaluation',
                horizon=f'log({cutoff+1})',cutoff=cutoff,level=level,bits=bits,
                mu_sha256=hashlib.sha256(json.dumps(mu,separators=(',',':')).encode()).hexdigest(),
                integrated_energy=E.record(),cell_mean_energy=G.record(),
                prefix_variance=V.record(),uncomputed_variance_tail_upper=str(tail),
                all_height_variance_upper=str(V.hi+tail),
                theoretical_all_height_bound=str(Q(1,6*4**level)),
                whole_source_energy_bounded=False,
                native_lean_admission=False,rows=rows)


def haar_detail_energy(n: int, M: int, level: int, index: int, bits=160):
    """Energy of the source's Haar coefficient, a positive quartic expression.

    Parent endpoints in e^(-t/2) coordinates are a and a*r^2;
    its midpoint is a*r. The signed coefficient is
    -4*M*a*(1-r)^2/sqrt(h). Only its square is returned here.
    """
    integer(n,'cell index',1,1000000)
    integer(M,'Mertens prefix',-n,n)
    integer(level,'level',0,5)
    q=1 << level
    integer(index,'subcell',0,q-1)
    h=log_cell_width(n,bits)/q
    a,mid=subcell_endpoints(n,level+1,2*index,bits)
    _,b=subcell_endpoints(n,level+1,2*index+1,bits)
    # No absolute-value substitution in the source: the signed second
    # difference is retained before its final energy square.
    second=a-2*mid+b
    return 16*M*M*second.square()/h


def residual_operator_certificate(cutoff=4096,bits=160):
    """Positive residual Gram only, not the full arithmetic energy.

    b_n = 4*(C_n-S_n^2/h_n), K_ij=sum_{n>=max(i,j)} b_n.
    ||R||_{linfinity->L2}^2=sum n^2*b_n; ||R||_HS^2=sum n*b_n.
    Each tail is bounded analytically; no Mobius cancellation is used.
    """
    integer(cutoff,'cutoff',1,1000000)
    integer(bits,'bits',64,512)
    if cutoff > MAX_SUBCELLS:
        raise ValueError('subcell resource guard; no result')
    infnorm=trace=Interval.exact(0,bits)
    for n in range(1,cutoff+1):
        b=cell_components(n,Interval.exact(0,bits),1)['variance']
        infnorm+=n*n*b
        trace+=n*b
    return dict(schema='source-log-cell-residual-operator-v1',cutoff=cutoff,bits=bits,
                linfinity_norm_squared_prefix=infnorm.record(),
                linfinity_norm_squared_tail_upper=str(Q(1,12*cutoff)),
                linfinity_norm_squared_upper=str(infnorm.hi+Q(1,12*cutoff)),
                hilbert_schmidt_squared_prefix=trace.record(),
                hilbert_schmidt_squared_tail_upper=str(Q(1,24*cutoff*cutoff)),
                hilbert_schmidt_squared_upper=str(trace.hi+Q(1,24*cutoff*cutoff)),
                universal_bounds={'linfinity_norm_squared':'1/6',
                                  'hilbert_schmidt_squared':'1/8'},
                source_scope='Within-cell residual only; all mixed residual terms retained',
                full_signed_energy_bound=False,native_lean_admission=False)


def verify_saved(path: str):
    """Replay exact data; saved margins and status flags grant no authority."""
    with open(path, 'rb') as f:
        raw = f.read(MAX_REPORT_BYTES + 1)
    if len(raw) > MAX_REPORT_BYTES:
        raise ValueError('report size resource guard; no result')
    saved = json.loads(raw.decode('utf-8'), object_pairs_hook=unique_object,
                       parse_float=nonexact_json_number,
                       parse_constant=nonexact_json_number)
    if type(saved) is not dict:
        raise ValueError('report object required')
    schema = saved.get('schema')
    if schema == 'source-log-cell-residual-operator-v1':
        if set(saved) != OPERATOR_FIELDS:
            raise ValueError('operator report fields mismatch')
        if saved['full_signed_energy_bound'] is not False:
            raise ValueError('full energy status promotion')
    elif schema == 'source-log-cell-centering-v1':
        if set(saved) != PREFIX_FIELDS:
            raise ValueError('prefix report fields mismatch')
        if saved['whole_source_energy_bounded'] is not False:
            raise ValueError('full energy status promotion')
        if type(saved['rows']) is not list:
            raise ValueError('rows must be a list')
        if saved['rows'] and len(saved['rows']) != saved['cutoff']:
            raise ValueError('incomplete row inventory')
    else:
        raise ValueError('unrecognized report schema')
    if saved['native_lean_admission'] is not False:
        raise ValueError('native admission status promotion')
    if schema == 'source-log-cell-residual-operator-v1':
        expected = residual_operator_certificate(saved['cutoff'], saved['bits'])
    else:
        expected = full_prefix(saved['cutoff'], saved['level'], saved['bits'],
                               bool(saved['rows']))
    if json.dumps(saved, sort_keys=True, separators=(',', ':')) != json.dumps(
            expected, sort_keys=True, separators=(',', ':')):
        raise ValueError('source-bound recomputation mismatch')
    return {'verified': True, 'cutoff': saved['cutoff'], 'level': saved.get('level'),
            'all_height_variance_upper': saved.get('all_height_variance_upper'),
            'native_lean_admission': False, 'whole_source_energy_bounded': False}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--cutoff',type=int,default=4096)
    p.add_argument('--level',type=int,default=0)
    p.add_argument('--bits',type=int,default=160)
    p.add_argument('--rows',action='store_true')
    modes=p.add_mutually_exclusive_group()
    modes.add_argument('--verify',type=str)
    modes.add_argument('--operator',action='store_true')
    args=p.parse_args()
    if args.operator and (args.level != 0 or args.rows):
        p.error('--operator does not accept --level or --rows')
    result=(verify_saved(args.verify) if args.verify else
            residual_operator_certificate(args.cutoff,args.bits) if args.operator else
            full_prefix(args.cutoff,args.level,args.bits,args.rows))
    print(json.dumps(result,sort_keys=True,indent=2))

if __name__=='__main__':
    main()
