"""Certify arithmetic Weil minima for three thin sections at C=1."""

from flint import arb, ctx
from verify_xi_weil_theta_cluster import minimum_enclosure, parity_matrices


def verify():
    ctx.prec = 192
    for length in (4, 8, 12):
        scaled = arb(length) / arb(length).log()
        cutoff = int(scaled.ceil().unique_fmpz())
        assert cutoff - 1 < scaled < cutoff
        matrices = parity_matrices(length, cutoff)
        for parity, matrix in zip(("even", "odd"), matrices):
            lower, upper = minimum_enclosure(matrix)
            assert 0 < lower < upper
            print(f"L={length} N={cutoff} {parity} minimum between "
                  f"{lower.str(12)} and {upper.str(12)}", flush=True)


if __name__ == "__main__":
    verify()
