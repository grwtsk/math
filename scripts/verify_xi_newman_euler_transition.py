"""Verify the exponent envelope exactly and test the actual real-axis heat formula.

The analytic bounds at the finite sample use Polymath15 (13), (19), (23), (24).
Requires python-flint. All sign decisions use Arb balls, never their midpoints.
"""

from fractions import Fraction
from itertools import pairwise

from flint import acb, acb_series, arb, ctx


def check_envelope():
    q = Fraction
    pairs = [(q(13, 84), q(55, 84))]
    for _ in range(2):
        k, ell = pairs[-1]
        pairs.append((k / (2*k + 2), (k + ell + 1) / (2*k + 2)))
    pairs = [(q(0), q(1)), *reversed(pairs)]
    lines = [(k, ell - k) for k, ell in pairs]
    nodes = [q(0)]
    for (a, b), (c, d) in pairwise(lines):
        nodes.append((c - a) / (b - d))
    nodes.append(q(1, 2))
    assert nodes == [0, q(13, 68), q(1430, 4789), q(715, 1764), q(1, 2)]
    threshold = q(148176, 57695)
    for (left, right), (k, slope) in zip(pairwise(nodes), lines):
        # The slack is concave, and the competing affine differences are linear.
        for u in (left, right):
            block = k + slope * u
            assert block == min(a + b*u for a, b in lines)
            assert block <= u/2 + threshold*u*(1-u)/4
    u = nodes[-2]
    assert min(a + b*u for a, b in lines) == u/2 + threshold*u*(1-u)/4
    print(f"Exact dyadic envelope checked, attained coefficient {threshold}.")


def real_axis(x, t, include_euler=False):
    pi = arb.pi()
    s = acb(1, -x)/2
    alpha = (s/(2*pi)).log()/2 + 1/(2*s) + 1/(s-1)
    log_m = s.log() + (s-1).log() - s*pi.log()/2 + (s/2-1/2)*(s/2).log() - s/2
    # The omitted real normalizing constant has no effect on the phase.
    rotation = acb(0, (log_m + t*alpha**2/4).imag).exp()
    shift = s + t*alpha/2
    ell = (x/(4*pi)).log()
    cutoff = int((x/(4*pi) + t/16).sqrt().floor().unique_fmpz())
    assert cutoff >= 1
    polynomial, total_abs = acb(0), arb(0)
    for n in range(1, cutoff+1):
        log_n = arb(n).log()
        term = ((t/4)*log_n**2 - shift*log_n).exp()
        polynomial += term
        total_abs += abs(term)

    max_log = max(ell, abs(ell - 2*arb(cutoff).log()))
    summand_error = ((t*t*max_log**2/16 + arb('0.626'))/(x-arb('6.66'))).expm1()
    c_error = (-ell/4 - t*ell**2/16 + arb('2.48')/(cutoff-arb('0.125'))
               + (3*abs(acb(ell, pi/2)) + arb('10.44'))/(x-12)).exp()
    error = 2*total_abs*summand_error + c_error
    heat = 2*(rotation*polynomial).real + arb(0, error.upper())
    if not include_euler:
        return heat
    series = acb_series([shift, 1], 3).zeta()
    leading = 2*(rotation*series[0]).real
    corrected = 2*(rotation*(series[0]+t*series[2]/2)).real
    return heat, leading, corrected


def check_heat():
    ctx.prec = 144
    t = arb(1)/4
    # Compare the two Euler approximations with enclosures of the actual heat function.
    base = arb(1000000)
    for j in range(5):
        x = base + arb(j)/4
        actual, leading, corrected = real_axis(x, t, True)
        assert abs(actual-corrected).upper() < abs(actual-leading).lower()
        print(f"offset {j}/4: H/|B|={actual.str(8)}, "
              f"Euler={leading.str(8)}, first heat correction={corrected.str(8)}")
    actual, leading, corrected = real_axis(base + arb(3)/2, t, True)
    assert abs(actual-leading).upper() < abs(actual-corrected).lower()
    print("At offset 3/2 the uncorrected Euler approximation is closer.")

    # This time is below 0.2. Certify both signs in five disjoint transition intervals.
    base, t = arb(20000000000), arb(1)/8
    transition_product = t*(base/(4*arb.pi())).log()
    assert transition_product > arb(148176)/57695 and transition_product < 3
    for j, sign in [(3, 1), (13, -1), (23, 1), (33, -1), (42, 1)]:
        left = real_axis(base + arb(j-1)/16, t)
        right = real_axis(base + arb(j)/16, t)
        assert sign*left < 0 and sign*right > 0, (j, left, right)
        print(f"Certified sign change between offsets {j-1}/16 and {j}/16.")


if __name__ == "__main__":
    check_envelope()
    check_heat()
