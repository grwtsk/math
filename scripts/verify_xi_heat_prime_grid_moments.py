"""Enclose the actual moving-window variance and finite rational-grid energy.

Requires python-flint. Run with python -B scripts/verify_xi_heat_prime_grid_moments.py.
"""
from fractions import Fraction

from flint import acb, acb_series, arb, ctx
from verify_xi_heat_wave import prime_powers


def log_rational(x):
    return (arb(x.numerator) / x.denominator).log()


def prime_data(n, length):
    cutoff = length.exp().floor().unique_fmpz()
    assert cutoff is not None
    data = []
    for m, log_prime in prime_powers(int(cutoff)):
        u = arb(m).log()
        mass = log_prime * (-(u**2) / (4 * n)).exp() / arb(m).sqrt()
        data.append((m, u, mass))
    return data


def centered_window_variance(n, ratio, length, data):
    # Endpoints in x = log h at which a prime enters/leaves the sliding window.
    # Rational h keys identify exact coincidences between adjacent prime powers.
    delta = log_rational(ratio)
    changes = {Fraction(1): arb(0), 1 / ratio: arb(0)}
    for m, _, mass in data:
        enter = Fraction(m) / ratio
        leave = Fraction(m)
        changes[enter] = changes.get(enter, arb(0)) + mass
        changes[leave] = changes.get(leave, arb(0)) - mass
    events = [(log_rational(h), change) for h, change in changes.items()]
    events.extend([(length - delta, arb(0)), (length, arb(0))])
    events.sort(key=lambda event: float(event[0]))
    root_n = arb(n).sqrt()
    scale = (arb(n) / 4).exp() * (arb.pi() * n).sqrt()

    def primitive(x):
        return scale * ((x - n) / (2 * root_n)).erf()

    mass = arb(0)
    energy = acb(0)
    tolerance = arb("1e-22")
    for (lo, change), (hi, _) in zip(events, events[1:]):
        assert lo < hi
        mass += change
        mid = (lo + hi) / 2
        assert mid < 0 or mid > 0
        assert mid + delta < length or mid + delta > length
        clip_left = mid < 0
        clip_right = mid + delta > length

        def integrand(x, analytic):
            left = acb(0) if clip_left else x
            right = acb(length) if clip_right else x + delta
            return (mass - (primitive(right) - primitive(left)))**2

        energy += acb.integral(integrand, lo, hi, abs_tol=tolerance, rel_tol=tolerance)
    assert energy.imag.contains(0) and energy.real > 0
    return energy.real / delta


def reflection_term(n, delta):
    # At 0 < delta <= log 2, only continuum-continuum pairs can have u+v < delta.
    def integrand(s, analytic):
        return ((1 - s / delta) * (s / 2 - s**2 / (8 * n)).exp()
                * (2 * arb.pi() * n).sqrt() * (s / (8 * arb(n)).sqrt()).erf())

    value = acb.integral(integrand, 0, delta, abs_tol=arb("1e-24"), rel_tol=arb("1e-24"))
    assert value.imag.contains(0)
    assert 0 < value.real < (delta / 2).exp() * delta**2 / 2
    return value.real


def grid_energy(n, delta, length, data, last):
    root_n = arb(n).sqrt()
    total = arb(0)
    for j in range(last + 1):
        a = arb(j) / n
        prime = sum((mass * (a * u).cos() for _, u, mass in data), arb(0))
        shift = acb(n, 2 * n * a)
        scale = (acb(arb(n) / 4 - n * a**2, n * a)).exp() * (arb.pi() * n).sqrt()
        continuous = (scale * (((length - shift) / (2 * root_n)).erf()
                               - ((-shift) / (2 * root_n)).erf())).real
        sinc = (a * delta / 2).sinc()
        total += (1 if j == 0 else 2) * ((prime - continuous) * sinc)**2
    return delta / (2 * arb.pi() * n) * total


def check(n, ratio):
    length = 2 * n - arb(n).log()
    delta = log_rational(ratio)
    data = prime_data(n, length)
    variance = centered_window_variance(n, ratio, length, data)
    symmetric = (variance + reflection_term(n, delta)) / 2
    sampled = grid_energy(n, delta, length, data, n**3)
    extended = grid_energy(n, delta, length, data, 4 * n**3)
    assert 0 < sampled < extended < symmetric
    assert variance.rad() < arb("1e-12") and symmetric.rad() < arb("1e-12")
    print("n", n, "ratio", ratio, "prime powers", len(data),
          "variance", variance.str(13), "reflected energy", symmetric.str(13),
          "sampled through n^3", sampled.str(13), "sampled through 4n^3", extended.str(13),
          flush=True)


def fine_window_check():
    n = 5
    length = 2 * n - arb(n).log()
    data = prime_data(n, length)
    diagonal = sum(mass**2 for _, _, mass in data)
    variance = centered_window_variance(n, Fraction(65537, 65536), length, data)
    assert arb("0.000936428057") < diagonal - variance < arb("0.000936428060")
    print("fine row", n, "ratio 65537/65536", "diagonal", diagonal.str(13),
          "variance", variance.str(13), "deficit", (diagonal - variance).str(13), flush=True)


def check_mellin_transform():
    # Compare the arithmetic Laplace transform to zeta and its derivative
    # in an absolute-convergence half-plane, with a direct prime-series tail.
    cutoff = 4096
    s = acb(2, 3)
    width = arb(2).log()
    multiplier = ((s * width).exp() - 1) / s
    exponent = s + arb(1) / 2
    partial = sum((lp * (-exponent * arb(m).log()).exp()
                   for m, lp in prime_powers(cutoff)), acb(0))
    # Integral from M to infinity of log(x)/x^(5/2).
    decay = arb(3) / 2
    tail = (arb(cutoff).log() / decay + 1 / decay**2) / (arb(cutoff)**decay)
    series = acb_series([exponent, 1], 2).zeta()
    window_value = multiplier * (partial - 1 / (s - arb(1) / 2))
    zeta_value = multiplier * (-series[1] / series[0] - 1 / (s - arb(1) / 2))
    assert abs(zeta_value - window_value) < abs(multiplier) * tail
    print("dyadic Mellin probe 2+3i", zeta_value.str(14),
          "certified prime-tail bound", (abs(multiplier) * tail).str(8), flush=True)


if __name__ == "__main__":
    ctx.prec = 160
    for n in (2, 3, 4):
        check(n, Fraction(2))
        check(n, Fraction(2 * n**2 + 1, 2 * n**2))
    fine_window_check()
    check_mellin_transform()
