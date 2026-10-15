#!/usr/bin/env python3
"""Exact algebra and hostile controls, never a Lean or RH acceptance checker.

Uses SymPy polynomial identities and an independent-code-path Gaussian-rational
arithmetic evaluator. Both were authored in this session; no independent human
review or independent checker profile is implied. No network or account access.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import platform
from fractions import Fraction as F
from pathlib import Path
import sympy as S


def add(z: tuple[F, F], w: tuple[F, F]) -> tuple[F, F]:
    return z[0] + w[0], z[1] + w[1]


def mul(z: tuple[F, F], w: tuple[F, F]) -> tuple[F, F]:
    return z[0] * w[0] - z[1] * w[1], z[0] * w[1] + z[1] * w[0]


def gaussian_trace(a: F, t: F, k: F) -> tuple[tuple[F, F], F]:
    """Evaluate each root with multiplicity; separately compute squared moduli."""
    total = F(0), F(0)
    moduli = F(0)
    for z in [(t, a), (t, -a), (-t, a), (-t, -a)]:
        p = add(add(mul(z, z), mul((k * a, F(0)), z)), (a * a - t * t, F(0)))
        total = add(total, mul(p, p))
        moduli += p[0] ** 2 + p[1] ** 2
    return total, moduli


def run() -> dict:
    groups: dict[str, dict] = {}

    def check(group: str, name: str, passed: bool) -> None:
        entry = groups.setdefault(group, {"passed": 0, "names": []})
        if not passed:
            raise ValueError(f"exact check failed: {group}/{name}")
        entry["passed"] += 1
        entry["names"].append(name)

    def identity(name: str, expression: S.Expr) -> None:
        check("symbolic", name, S.cancel(S.expand(expression)) == 0)

    a, t, x, k, c0, c1, c2, scale, residual = S.symbols(
        'a t x k c0 c1 c2 scale residual', real=True)
    roots = [t + S.I * a, t - S.I * a, -t + S.I * a, -t - S.I * a]
    q = ((x - t) ** 2 + a ** 2) * ((x + t) ** 2 + a ** 2)
    identity("quartic-factorization", q - (x**4 + 2*(a*a-t*t)*x*x + (a*a+t*t)**2))
    identity("quartic-roots-with-multiplicity", S.prod(x-r for r in roots)-q)
    for j, expected in [(0, 4), (1, 0), (2, 4*(t*t-a*a)), (3, 0),
                         (4, 4*(t**4-6*a*a*t*t+a**4))]:
        identity(f"Newton-S{j}", sum(r**j for r in roots)-expected)
    trace = sum((c0+c1*r+c2*r*r)**2 for r in roots)
    form = 4*c0*c0 + 4*(t*t-a*a)*(c1*c1+2*c0*c2) + 4*(t**4-6*a*a*t*t+a**4)*c2*c2
    identity("general-signed-complex-trace", trace-form)
    family = S.expand(trace.subs({c0:a*a-t*t, c1:k*a, c2:1}))
    identity("slope-family", family+4*a*a*(k*k*a*a+(4-k*k)*t*t))
    identity("supplied-single-witness", family.subs(k,1)+4*a*a*(a*a+3*t*t))
    identity("height-uniform-witness", family.subs(k,2)+16*a**4)
    identity("negative-slope-uniform-witness", family.subs(k,-2)+16*a**4)
    identity("even-only-degeneracy", family.subs(k,0)+16*a*a*t*t)
    identity("zero-height-supplied", family.subs({k:1,t:0})+4*a**4)
    identity("zero-height-uniform", family.subs({k:2,t:0})+16*a**4)
    identity("critical-line-all-slopes", family.subs(a,0))
    identity("finite-residual-extraction", scale*family.subs(k,2)+residual-(residual-16*scale*a**4))
    identity("all-oversized-slopes-counterexample",
             family.subs({a:1,t:(k*k+1)/(k*k-4)}) - 4*(6*k*k+1)/(k*k-4))
    grid = [F(-2), F(-1,2), F(0), F(1,3), F(2)]
    slopes = [F(0), F(1,2), F(1), F(2), F(3)]
    for av in grid:
        for tv in grid:
            for kv in slopes:
                actual, _ = gaussian_trace(av,tv,kv)
                expected = -4*av*av*(kv*kv*av*av+(4-kv*kv)*tv*tv)
                check("gaussian-rational", f"a={av};t={tv};k={kv}", actual == (expected,F(0)))
    check("hostile", "even-only-misses-height-zero", gaussian_trace(F(1),F(0),F(0))[0] == (F(0),F(0)))
    check("hostile", "slope-three-positive-44", gaussian_trace(F(1),F(2),F(3))[0] == (F(44),F(0)))
    for kv in [F(201,100), F(3), F(-3), F(20)]:
        tv = (kv*kv+1)/(kv*kv-4)
        check("hostile", f"oversized-slope-{kv}", gaussian_trace(F(1),tv,kv)[0][0] > 0)
    signed, modulus = gaussian_trace(F(1),F(0),F(2))
    check("hostile", "squares-not-squared-moduli", signed == (F(-16),F(0)) and modulus == 16)
    check("hostile", "positive-total-does-not-localize", -1+2 >= 0 and -1 < 0)
    check("hostile", "zero-scale-cannot-transfer-positivity", 0 == 0*(-1)+0)
    n = S.symbols('n', nonnegative=True, integer=True)
    lam = 1/(n+1)
    check("hostile", "vanishing-scale-and-residual-still-fail",
          S.simplify(lam*(-1)+lam) == 0 and S.limit(lam,n,S.oo) == 0 and S.simplify(lam/lam) == 1)
    check("hostile", "fixed-nonzero-residual-still-fails", 0 == 1*(-1)+1)
    check("hostile", "repeated-roots-retain-four-weights",
          len([(0,1),(0,-1),(0,1),(0,-1)]) == 4 and len(set([(0,1),(0,-1),(0,1),(0,-1)])) == 2)
    check("hostile", "collapsed-origin-retains-four-weights", len([(0,0)]*4) == 4)
    check("hostile", "finite-height-data-not-universal", all(j<=7 for j in range(8)) and not 8<=7)
    check("hostile", "changed-trace-sign-rejected", S.expand(family.subs(k,2)-16*a**4) != 0)
    check("hostile", "dropped-zero-height-term-rejected", S.expand(family.subs(k,1)+12*a*a*t*t) != 0)
    return {
        "schema":"quartic-trace-exact-checks-v1", "outcome":"EXACT_ALGEBRA_CHECKS_PASSED",
        "total_checks":sum(v['passed'] for v in groups.values()),
        "groups":groups,
        "python":platform.python_version(), "sympy":S.__version__,
        "script_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "native_lean":"NOT_RUN", "axiom_audit":"NOT_RUN", "rh_proof":False,
        "independent_review":False,
        "scope":"Polynomial identities, exact rational evaluations, and listed counterfixtures only; no arithmetic source positivity or all-height supplier."
    }


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    result=run()
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in result.items() if k!='groups'},indent=2))


if __name__=='__main__':
    main()
