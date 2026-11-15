#!/usr/bin/env python3
"""Exact rational arithmetic gate for a written source-local two-band Schur proof.

The original analytic statement is about grwtsk/math's whole-line energy and
positive-half overlap.  This stdlib-only script checks *rational constants and
cutoff geometry* used by that proof, not Lebesgue integral identities, Lean
elaboration, or RH/GRH.  Attribution: grwtsk contributors; AI-assisted.

Run: python3 scripts/verify_odd_two_band_schur.py
Requires only Python >= 3.11.  No source write, package download, external
provider, numerical quadrature, or model action.
"""
from fractions import Fraction as F
from hashlib import sha256
import json
import sys


def check(name, statement):
    if not statement:
        raise AssertionError(name)
    checks.append(name)


checks = []
# log(2) = 2*atanh(1/3).  The two positive terms are 56/81.
# The remaining sum starting at exponent 5 is at most
#   2 * (1/3)^5 / (5*(1-(1/3)^2)) = 1/540.
LOG2_L = F(56, 81)
LOG2_U = LOG2_L + F(1, 540)
LOG7HALF_L = 2 * (F(5, 9) + F(5, 9) ** 3 / 3)
B0, B1 = F(3, 4), F(7, 8)
S0, S1 = F(1, 8), F(1, 2)

check('log2 lower > 11/16', LOG2_L > F(11, 16))
check('log2 upper < 25/36', LOG2_U < F(25, 36))
check('log2 upper < 7/10', LOG2_U < F(7, 10))
check('r4 lower > 11/8', 2 * LOG2_L > F(11, 8))
check('r4 upper < 3/2', 2 * LOG2_U < F(3, 2))
check('reflected lower band above 1/2', 2 * LOG2_L - B1 > S1)
check('reflected upper band below B', 2 * LOG2_U - B0 < B0)
check('gamma separation gap positive > 1/9', F(3, 2) - 2 * LOG2_U > F(1, 9))
check('translated origin gap for all s <= 1/2', 2 * LOG2_L - B1 > S1)
check('high P(b) limit > 7/16', F(15, 8) - 2 * LOG2_U > F(7, 16))
check('all incoming s < reflected band start', S1 < 2 * LOG2_L - B1)
check('first T diagonal point cut off', F(3, 2) - 2 * LOG2_L < S0)
check('T cross point inside window lower', F(13, 8) - 2 * LOG2_U > S0)
check('T cross point inside window upper', F(13, 8) - 2 * LOG2_L < S1)
check('second T diagonal point inside window', F(7, 4) - 2 * LOG2_L < S1)

# The written K(s) bounds are analytically derived from sinh/exp:
#  K(s) >= (1-s/2)*(1-s^2/6)/(2s)
#       = 1/(2s)-1/4-s/12+s^2/24
#       >= 1/(2s)-7/24 > 1/(2s)-1/3, 0 < s <= 1/2.
check('kernel lower correction 7/24 < 1/3', F(7, 24) < F(1, 3))

# M := integral_(1/8,1/2) K(s) ds
#    > log 2 - 1/8 > 13/24.
M_LO = LOG2_L - F(1, 8)
check('M lower > 13/24', M_LO > F(13, 24))

# P(b) > (1/2)*log(7/2) - 5/48 > 1/2.
# log(7/2) = 2*atanh(5/9) with positive series terms.
check('log(7/2) positive two-term lower > 29/24', LOG7HALF_L > F(29, 24))
P_LO = LOG7HALF_L / 2 - F(5, 48)
check('P(b) lower > 1/2', P_LO > F(1, 2))

# Truncated mixed kernel T is symmetric but not necessarily PSD.  Schur rows:
# row <= integral_(1/8,1/4) ds/(2s) = (1/2)log2 < 25/72.
ROW_HI = LOG2_U / 2
check('Schur row bound < 25/72', ROW_HI < F(25, 72))

# Integrated physical overlap G >= 4*M*H + 2*integral u^2 P + 4*<u,Tu>.
# Using the three bounds gives G > [4*13/24 + 2*1/2 - 4*25/72]H = 16/9 H.
COEFFICIENT = 4 * F(13, 24) + 2 * F(1, 2) - 4 * F(25, 72)
check('coefficient is 16/9', COEFFICIENT == F(16, 9))
check('new source lower bound improves prior 29/20', COEFFICIENT > F(29, 20))
check('lost n4 mass < 25/18 H', 2 * LOG2_U < F(25, 18))
check('strict arithmetic n4 margin > 7/18 H', COEFFICIENT - 2 * LOG2_U > F(7, 18))

# The cutoff-created sign problem: T(a,a)=0 but T(a,b)>0 and T(b,b)>0
# using exact rational log intervals.  A 2x2 symmetric matrix with
# zero T(a,a) and positive off-diagonal is indefinite.  This does not
# falsify nonnegativity of the ORIGINAL full gamma quadratic form.
check('truncated-kernel first diagonal omitted', 2 * B0 - 2 * LOG2_L < S0)
check('truncated-kernel cross retained', B0 + B1 - 2 * LOG2_U > S0)
check('truncated-kernel second diagonal retained', 2 * B1 - 2 * LOG2_U > S0)

result = {
    'schema': 'odd-two-band-schur-rational-check/1',
    'status': 'PASS',
    'scope': 'exact rational constants and geometric cutoff comparisons, not Lean or universal Weil',
    'source': 'grwtsk/math/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilOddSupportBoundaryReflection.md',
    'n_checks': len(checks),
    'log2_lower': str(LOG2_L),
    'log2_upper': str(LOG2_U),
    'log7half_lower': str(LOG7HALF_L),
    'M_lower': str(M_LO),
    'P_lower': str(P_LO),
    'Schur_row_upper': str(ROW_HI),
    'two_band_coefficient': str(COEFFICIENT),
    'strict_margin_lower': '7/18',
    'negative_control': 'truncated T indefinite; do not erase signed mixed term',
    'checks': checks,
}
print(json.dumps(result, sort_keys=True, indent=2))
