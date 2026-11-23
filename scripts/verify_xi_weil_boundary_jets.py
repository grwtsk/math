"""Interval tests for the first-prime boundary-jet block and its low-frequency gap.

The Fourier basis in Connes–Consani–Moscovici, arXiv:2511.22755v1,
Lemma 2.3, is translated to the left endpoint. Jet vectors then have
coordinates n**j. The nonorthogonal basis requires a generalized eigenproblem.
"""

from flint import acb, arb, arb_mat, ctx, fmpz

from verify_xi_weil_theta_cluster import positive_after_shift, prime_atoms


def corrected_block(length, cutoff, order):
    grid = range(-cutoff, cutoff + 1)
    assert 1 <= order <= len(grid)
    atoms = [(y, weight) for n, (y, weight) in prime_atoms(length).items()
             if fmpz(n).is_prime()]
    diagonal, sine = {}, {}
    endpoint = (arb(length) / 2).exp()
    for n in grid:
        omega = 2 * arb.pi() * n / length
        s = acb(arb(1) / 2, omega)
        sine[n] = ((endpoint - 1) / s).imag - sum(
            weight * (y * omega).sin() for y, weight in atoms)
        diagonal[n] = 2 * (((endpoint - 1) / (length * s**2) - 1 / s).real
                           - sum(weight * (1 - y / length) * (omega * y).cos()
                                 for y, weight in atoms))
        if n == 0:
            diagonal[n] -= arb(length) / 2

    matrix = arb_mat([[diagonal[i] if i == j else
                       (sine[j] - sine[i]) / (arb.pi() * (i - j))
                       for j in grid] for i in grid])
    basis = arb_mat([[n**j for j in range(order)] for n in grid])
    return basis.transpose() * matrix * basis, basis.transpose() * basis


def enclose_minimum(matrix, gram):
    def positive(shift):
        return positive_after_shift(matrix - shift * gram, arb(0))

    lo, hi = arb(-64), arb(64)
    assert positive(lo) and not positive(hi)
    for _ in range(38):
        mid = (lo + hi) / 2
        if positive(mid):
            lo = mid
        else:
            hi = mid
    return lo, hi


if __name__ == "__main__":
    ctx.prec = 128
    for k in range(7 * 32):
        ordinate = arb(2 * k + 1, 1) / 64
        assert not acb(arb(1) / 2, ordinate).zeta().contains(0)
    print("224 closed intervals certify zeta(1/2+it) != 0 on [0,7].")

    for length in (4, 6, 8):
        # H=30, physical bandwidth 2*pi, epsilon=1/10.
        order = int(((arb(3) * length / 5) /
                     (arb(30) / (2 * arb.pi())).log()).ceil().unique_fmpz())
        matrix, gram = corrected_block(length, length, order)
        low, high = enclose_minimum(matrix, gram)
        print(f"L=N={length}, d={order}, restricted minimum in ({low}, {high})")
        # Removing j=0 enforces zero mean and kills the square correction.
        derivative_block = arb_mat([[matrix[i, j] for j in range(1, order)]
                                    for i in range(1, order)])
        derivative_gram = arb_mat([[gram[i, j] for j in range(1, order)]
                                   for i in range(1, order)])
        low, high = enclose_minimum(derivative_block, derivative_gram)
        print(f"First primes on positive derivative orders in ({low}, {high})")
