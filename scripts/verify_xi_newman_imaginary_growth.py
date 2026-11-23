"""Enclose two disjoint theta masses and the derivative of the reciprocal-square trace."""

from flint import arb
from verify_xi_newman_collisions import check_quadrature_budget, heat_jet


def mass_lower(left, right, normalizer_upper):
    pi = arb.pi()
    prefactor = (5*left).exp()*pi*(2*pi*(4*left).exp()-3)
    decay = (-pi*(4*right).exp()).exp()
    return (right-left)*prefactor*decay/normalizer_upper


def verify():
    check_quadrature_budget()
    h_upper = heat_jet(arb(0), arb(1)/2, 0)[0].upper()
    first = mass_lower(arb(0), arb(1)/20, h_upper)
    second = mass_lower(arb(1)/5, arb(1)/4, h_upper)
    trace_slope_lower = 4*first*second*(arb(3)/80)**2
    print("uniform lower bounds for interval masses and trace slope",
          first.str(9), second.str(9), trace_slope_lower.str(9))
    assert trace_slope_lower > arb('0.000014')
    for time in [arb(0), arb(1)/2]:
        h, _, negative_second, _, fourth = heat_jet(arb(0), time, 4)
        trace = -4*negative_second/h
        slope = 4*(fourth/h-(negative_second/h)**2)
        assert slope > trace_slope_lower
        print("time", time.str(5), "trace", trace.str(10), "slope", slope.str(10))


if __name__ == '__main__':
    verify()
