#!/usr/bin/env python3
"""Anchored finite Fourier kernels for the literal square-root Mobius pickup.

Human mathematical direction: R.A. Jacob Martone.
Written derivation and implementation assistance: OpenAI ChatGPT. MIT.
Bernoulli Fourier series: NIST DLMF 24.8.1; divisor compression: Huxley--Watt,
arXiv:1807.05890v1. These classical inputs are credited, not claimed as new.

Rational interval arithmetic, Machin pi brackets, Taylor remainders and
explicit midpoint quadrature errors are used. Finite enclosures do not prove
the general Fourier identity, an arithmetic supplier, or a Lean theorem.
The full signed main form and every finite integration endpoint are retained.
"""
from __future__ import annotations

import argparse
from fractions import Fraction as Q
from functools import lru_cache
import json
from math import factorial, isqrt
from typing import Sequence

from one_third_energy import Interval as I, moebius_coefficients, sixth_root


def exact(value: int | Q, name: str) -> Q:
    if not isinstance(value, (int, Q)) or isinstance(value, bool):
        raise TypeError(f"{name} must be an exact integer or Fraction")
    return Q(value)


def positive_int(value: int, name: str) -> int:
    if not isinstance(value, int) or isinstance(value, bool) or value < 1:
        raise ValueError(f"{name} must be a positive integer")
    return value


def precision(bits: int) -> int:
    if not isinstance(bits, int) or isinstance(bits, bool) or not 16 <= bits <= 128:
        raise ValueError("bits must be an integer in [16, 128]")
    return bits


def rho(value: int | Q) -> Q:
    v = exact(value, "phase")
    r = v - v.numerator // v.denominator
    return r * (1 - r) / 2


@lru_cache(maxsize=16, typed=True)
def pi_interval(bits: int = 48) -> I:
    """Machin: pi=16*atan(1/5)-4*atan(1/239), with alternating remainders."""
    precision(bits)
    terms = bits // 4 + 12
    def atan_inverse(q: int) -> I:
        s = sum((Q((-1)**j, (2*j+1)*q**(2*j+1)) for j in range(terms)), Q(0))
        nxt = Q((-1)**terms, (2*terms+1)*q**(2*terms+1))
        return I(min(s, s+nxt), max(s, s+nxt))
    p = (16 * atan_inverse(5) - 4 * atan_inverse(239)).outward(bits + 16)
    if not 3 < p.lo <= p.hi < Q(22, 7):
        raise ArithmeticError("pi bracket outside elementary bounds")
    return p


@lru_cache(maxsize=32768, typed=True)
def cos_turns(value: Q, bits: int = 48) -> I:
    """Enclose cos(2*pi*value); exact rational range reduction precedes Taylor."""
    v = exact(value, "phase")
    precision(bits)
    r = v - v.numerator // v.denominator
    special = {Q(0): 1, Q(1, 4): 0, Q(1, 2): -1, Q(3, 4): 0,
               Q(1, 6): Q(1, 2), Q(5, 6): Q(1, 2),
               Q(1, 3): Q(-1, 2), Q(2, 3): Q(-1, 2)}
    if r in special:
        return I.point(special[r])
    r = min(r, 1-r)
    x2 = (2 * r * pi_interval(bits)) ** 2
    terms = bits // 2 + 8
    # Tiny high-order coefficients need guard bits before Horner amplification.
    work_bits = bits + 8*terms + 32
    result = I.point(Q((-1)**terms, factorial(2*terms)))
    for j in range(terms-1, -1, -1):
        result = (result*x2 + Q((-1)**j, factorial(2*j))).outward(work_bits)
    error = Q(4**(2*terms+2), factorial(2*terms+2))
    result += I(-error, error)
    low, high = max(Q(-1), result.lo), min(Q(1), result.hi)
    if low > high:
        raise ArithmeticError("cosine bracket inconsistent with [-1,1]")
    return I(low, high).outward(bits+8)


def rho_fourier(value: int | Q, modes: int, bits: int = 48) -> I:
    v = exact(value, "phase")
    positive_int(modes, "modes")
    precision(bits)
    total = I.point(0)
    for h in range(1, modes+1):
        total = (total + (1-cos_turns(h*v, bits))/h**2).outward(bits+16)
    return (total / (2*pi_interval(bits)**2)).outward(bits+8)


def rho_weighted_integral(y: int | Q, bits: int = 48) -> I:
    """Exact-cell antiderivatives of rho(v)*v^(-5/2), with root enclosures."""
    y = exact(y, "endpoint")
    precision(bits)
    if y < 1:
        raise ValueError("endpoint must be at least one")
    out = I.point(0)
    for j in range(1, y.numerator//y.denominator+1):
        a, b = Q(j), min(Q(j+1), y)
        if a == b:
            continue
        def primitive(v: Q) -> I:
            r = sixth_root(v, bits)
            return -r**3 - (2*j+1)*r**-3 + Q(j*(j+1), 3)*r**-9
        out = (out + primitive(b) - primitive(a)).outward(bits+16)
    return out.outward(bits)


def fourier_weighted_integral(y: int | Q, modes: int, panels: int = 128,
                               bits: int = 48) -> I:
    """Finite integral with rigorous local-Lipschitz midpoint error allowances.

    For f(v)=rho_H(v)*v^(-5/2), v>=a>=1,
    |f'| <= (harmonic(H)/3)*a^(-5/2)+(5*sum(h^-2)/18)*a^(-7/2).
    Uses only pi>3 and finite trigonometric bounds, not the infinite series.
    """
    y = exact(y, "endpoint")
    positive_int(modes, "modes")
    positive_int(panels, "panels")
    precision(bits)
    if y < 1:
        raise ValueError("endpoint must be at least one")
    if y == 1:
        return I.point(0)
    step = (y-1)/panels
    harmonic = sum((Q(1, h) for h in range(1, modes+1)), Q(0))
    squares = sum((Q(1, h*h) for h in range(1, modes+1)), Q(0))
    total, error = I.point(0), Q(0)
    for j in range(panels):
        a, mid = 1+j*step, 1+(Q(j)+Q(1, 2))*step
        value = rho_fourier(mid, modes, bits) * sixth_root(mid, bits)**-15
        total = (total + step*value).outward(bits+16)
        ra = sixth_root(a, bits)
        lipschitz = (harmonic/3*(ra**-15)+5*squares/18*(ra**-21)).hi
        error += lipschitz*step**2/4
    return (total+I(-error, error)).outward(bits)


def _domain(x: int | Q, d: int, bits: int) -> Q:
    x = exact(x, "cutoff")
    positive_int(d, "product")
    precision(bits)
    if x < d:
        raise ValueError("require cutoff >= positive product")
    return x


def literal_kernel(x: int | Q, d: int, bits: int = 48) -> I:
    x = _domain(x, d, bits)
    end = sixth_root(x, bits)**-3
    total = I.point(0)
    for k in range(1, x.numerator//(x.denominator*d)+1):
        total = (total + 2*(sixth_root(Q(d*k), bits)**-3-end)).outward(bits+16)
    return total.outward(bits)


def anchored_kernel(x: int | Q, d: int, modes: int | None = None,
                    panels: int = 128, bits: int = 48) -> dict[str, I]:
    """Full anchored kernel: three main terms, endpoint, and finite integral.

    modes=None uses the exact periodic polynomial. Positive modes use its
    finite cosine expansion. The touching atom is preserved in both cases.
    """
    x = _domain(x, d, bits)
    if modes is not None:
        positive_int(modes, "modes")
    positive_int(panels, "panels")
    y, rx, rd = x/d, sixth_root(x, bits), sixth_root(Q(d), bits)
    main = 2*rx**3/d - 3*rd**-3 + rx**-3
    r = I.point(rho(y)) if modes is None else rho_fourier(y, modes, bits)
    integ = (rho_weighted_integral(y, bits) if modes is None else
             fourier_weighted_integral(y, modes, panels, bits))
    endpoint = d*rx**-9*r
    history = Q(3, 2)*rd**-3*integ
    return {k: v.outward(bits) for k, v in
            {"main": main, "endpoint": endpoint, "history": history,
             "total": main+endpoint+history}.items()}


def quarter_modes(x: int | Q) -> int:
    """Exact ceil(x^(1/4)), without a floating-point root."""
    x = exact(x, "cutoff")
    if x < 1:
        raise ValueError("cutoff must be at least one")
    low, high = 0, 1
    while high**4*x.denominator < x.numerator:
        high *= 2
    while high-low > 1:
        mid = (low+high)//2
        if mid**4*x.denominator >= x.numerator:
            high = mid
        else:
            low = mid
    return high


def tail_budget(sigma: int | Q, exponent: int | Q) -> dict[str, str]:
    sigma, exponent = exact(sigma, "damping"), exact(exponent, "mode exponent")
    gap = 2*sigma+2*exponent-1
    if sigma <= 0 or exponent < 0 or gap <= 0:
        raise ValueError("this majorant needs sigma>0, exponent>=0, 2*sigma+2*exponent>1")
    return {"damping": str(sigma), "mode_exponent": str(exponent),
            "positive_decay_gap": str(gap),
            "coefficient_of_pi_inverse_fourth": str(16/gap),
            "scope": "Fourier approximation error ONLY; retained arithmetic form unpaid"}


def finite_record(x: int | Q, modes: int | None = None, panels: int = 128,
                  bits: int = 48, coefficients: Sequence[int] | None = None) -> dict:
    x = _domain(x, 1, bits)
    H = quarter_modes(x) if modes is None else positive_int(modes, "modes")
    positive_int(panels, "panels")
    U = isqrt(x.numerator//x.denominator)
    mu = moebius_coefficients(U) if coefficients is None else list(coefficients)
    if len(mu) != U+1 or mu[0] != 0 or any(
            not isinstance(a, int) or isinstance(a, bool) or abs(a)>1 for a in mu):
        raise ValueError("need exact TEST coefficients in {-1,0,1}, indexed 0..U with a[0]=0")
    direct, centered, finite = I.point(0), I.point(0), I.point(0)
    cache = {}
    for a in range(1, U+1):
        for b in range(1, U+1):
            d, sign = a*b, mu[a]*mu[b]
            if not sign:
                continue
            if d not in cache:
                cache[d] = (literal_kernel(x, d, bits),
                            anchored_kernel(x, d, bits=bits)["total"],
                            anchored_kernel(x, d, H, panels, bits)["total"])
            kd, kc, kh = cache[d]
            direct = (direct+sign*kd).outward(bits+12)
            centered = (centered+sign*kc).outward(bits+12)
            finite = (finite+sign*kh).outward(bits+12)
    error_bound = 4*sixth_root(x, bits)**3/(pi_interval(bits)**2*H)
    residual = direct-finite
    return {"cutoff": str(x), "closed_N": x.numerator//x.denominator,
            "short_cutoff": U, "modes": H, "panels": panels,
            "source": "actual Mobius" if coefficients is None else "TEST coefficients",
            "direct_quadratic": direct.json(), "anchored_quadratic": centered.json(),
            "finite_fourier_quadratic": finite.json(), "difference": residual.json(),
            "absolute_error_allowance": error_bound.outward(bits).json(),
            "exact_identity_consistent": (direct-centered).contains_zero(),
            "error_enclosure_inside_allowance":
                max(abs(residual.lo), abs(residual.hi)) <= error_bound.lo}


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--cutoff", type=Q, action="append")
    p.add_argument("--modes", type=int)
    p.add_argument("--panels", type=int, default=128)
    p.add_argument("--bits", type=int, default=48)
    args = p.parse_args()
    try:
        records = [finite_record(x, args.modes, args.panels, args.bits)
                   for x in (args.cutoff or [Q(1), Q(7, 2), Q(4), Q(17, 2)])]
        if any(not r["exact_identity_consistent"] for r in records):
            raise ArithmeticError("inconsistent anchored identity enclosures")
    except (ValueError, TypeError, ZeroDivisionError, ArithmeticError) as e:
        p.exit(2, f"error: {e}\n")
    print(json.dumps({"schema": "reciprocal-phase-kernel-finite-v1",
                      "scope": "finite rational diagnostics, not uniform arithmetic acceptance",
                      "lean_replay": "NOT_RUN", "retained_energy_bound_proved": False,
                      "error_budget": tail_budget(Q(1, 3), Q(1, 4)),
                      "records": records}, indent=2))


if __name__ == "__main__":
    main()
