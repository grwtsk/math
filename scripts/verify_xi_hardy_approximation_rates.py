"""Enclose full Hardy polynomial approximation energies by Arb and Parseval.

The lower bound minimizes the residual on a coefficient prefix. The upper
bound uses an integer polynomial and the analytic third-derivative estimates
in XiHardyApproximationRates.md. No zeta zeros or guessed tail are inputs.
"""
from flint import acb, acb_mat, acb_series, arb, arb_mat, ctx


def arithmetic_coefficients(cutoff):
    w = acb_series([0, 1])
    one = acb_series([1])
    s = acb_series([arb(3) / 2, 1])
    # Deflation subtracts the pole 1/(s-1) before expansion.
    regularized = (1 + (s - 1) * s.zeta(deflate=1)) / (s + 2)**8
    g = regularized(-2 * w / (one + w))
    g_one = -arb("0.5").zeta() / (2 * (arb(5) / 2)**8)
    h = (one - g / g_one) / (one - w)
    assert all(x.imag.contains(0) for x in [*g.coeffs(), *h.coeffs()])
    g = [x.real for x in g.coeffs()]
    h = [x.real for x in h.coeffs()]
    assert len(g) == len(h) == cutoff + 1
    assert max(x.rad() for x in h) < arb(2)**-90
    # Independent point evaluations of g, using ||g||_infty < 1.
    for r in (arb(1) / 4, -arb(1) / 4):
        s0 = arb(1) / 2 + (1 - r) / (1 + r)
        actual = (s0 - 1) * s0.zeta() / (s0 + 2)**8
        value = arb(0)
        for coefficient in reversed(g):
            value = value * r + coefficient
        assert abs(value - actual).lower() <= abs(r)**(cutoff + 1) / (1 - abs(r))
    return g, h


def bounds(g, h, n):
    cutoff = len(g) - 1
    assert cutoff > n + 2
    gram = arb_mat([[sum((g[k-i] * g[k-j] for k in range(max(i, j), cutoff+1)), arb(0))
                     for j in range(n)] for i in range(n)])
    moment = arb_mat([[sum((g[k-i] * h[k] for k in range(i, cutoff+1)), arb(0))]
                      for i in range(n)])
    optimizer = gram.solve(moment)
    lower = sum(x**2 for x in h) - (moment.transpose() * optimizer)[0, 0]
    # Rounding only chooses the candidate. All subsequent bounds are rigorous
    # for these exact integers, irrespective of their proximity to the optimum.
    candidate = [round(float(optimizer[i, 0].mid())) for i in range(n)]
    partial = sum((h[k] - sum(g[k-j] * candidate[j] for j in range(min(n, k+1))))**2
                  for k in range(cutoff+1))
    tail = (arb(20_000_000 + 600 * sum(abs(x) for x in candidate))
            / (cutoff - n - 2)**3)**2
    upper = partial + tail
    assert 0 < lower < upper < 1
    return lower, upper, candidate


def projection_controls():
    """Two reflected pairs in the right half-plane, using their kernel Gram."""
    points = [acb(sigma, sign * height)
              for sigma, height in [(arb(1)/4,3), (arb(1)/8,7)] for sign in (-1,1)]
    w = [(1-d)/(1+d) for d in points]
    gram = acb_mat([[1/(1-u*v.conjugate()) for v in w] for u in w])
    trace = sum(d.real/abs(d)**2 for d in points)
    y = sum((2*d.real/(1+abs(d)**2)).atanh() for d in points)
    b = (-y).exp()
    for m in (0,1,2,4,8,16,32):
        data = acb_mat([[((1+u)/2)**m/(1-u)] for u in w])
        value = (data.conjugate().transpose() * gram.solve(data))[0,0]
        assert value.imag.contains(0) and value.real > 0
        for j in range(len(w)):
            assert value.real > abs(data[j,0])**2/gram[j,j].real
        if m == 0:
            assert (value.real-trace).contains(0)
        if m == 1:
            assert (value.real-(trace-(1-b)/2-(1-b)**2/4)).contains(0)
        if m:
            assert value.real < trace*(1/arb(3)+2*trace)**(2*m)
    height = arb(3)*10**12
    upper = arb('7.398519e-13')
    assert upper/(1+height**2)+4*upper**3/3 < arb('6.3e-37')
    print("Seven finite projected powers passed, including the exact first-target formula.")


if __name__ == "__main__":
    cutoff = 1536
    ctx.prec = 4 * cutoff + 256
    ctx.cap = cutoff + 1
    projection_controls()
    g, h = arithmetic_coefficients(cutoff)
    print(f"Arb at {ctx.prec} bits, coefficients 0 through {cutoff}.")
    previous = arb(1)
    for degree_bound in (1, 2, 4, 8, 12):
        lower, upper, candidate = bounds(g, h, degree_bound)
        assert upper < previous
        previous = lower
        print(f"n={degree_bound}  lower {lower.str(15)}  upper {upper.str(15)}")
        print("integer polynomial coefficients", candidate)
