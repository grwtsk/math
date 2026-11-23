"""Interval enclosures for the two parity minima of the finite Weil matrix.

Connes, Consani and Moscovici, arXiv:2511.22755v1, §§3–4 and Lemma 5.1.
The integral normalization also appears in Andrews, Connes and La Gatta,
arXiv:2611.13129v1, Appendix D. Use the original unconditioned matrix.
"""

from flint import acb, arb, arb_mat, ctx, fmpz


def prime_atoms(length):
    endpoint = arb(length).exp()
    limit = int(endpoint.floor().unique_fmpz())
    assert limit <= endpoint < limit + 1
    atoms = {}
    for p in range(2, limit + 1):
        if fmpz(p).is_prime():
            power = p
            while power <= limit:
                assert power not in atoms
                atoms[power] = (arb(power).log(), arb(p).log() / arb(power).sqrt())
                power *= p
    return atoms


def weil_functional(length, frequency, diagonal, atoms):
    """Evaluate the signed distribution on a diagonal test or one sine."""
    at_zero = 2 if diagonal else 0
    imaginary = acb(0, 1)

    def test(y):
        phase = frequency * y
        if diagonal:
            return 2 * (1 - y / length) * phase.cos()
        return phase.sin()

    def integrand(y, analytic):
        # Entire identities remove the removable singularity at y=0.
        # The reciprocal of sinc(iy) is meromorphic; ball division returns
        # an indeterminate enclosure whenever a pole cannot be excluded.
        phase = frequency * y
        half_exp = (y / 2).exp()
        if diagonal:
            exp_difference = (y / 4).exp() * (imaginary * y / 4).sinc() / 2
            cos_difference = -frequency**2 * y * (phase / 2).sinc()**2 / 2
            quotient = 2 * (exp_difference + half_exp *
                            (cos_difference - phase.cos() / length))
        else:
            quotient = half_exp * frequency * phase.sinc()
        arch = quotient / (2 * (imaginary * y).sinc())
        return 2 * (y / 2).cosh() * test(y) - arch

    value = acb.integral(integrand, 0, length).real
    # Integral beyond L in W_R is (test(0)/2) log(tanh(L/2)).
    boundary = ((4 * arb.pi()).log() + arb.const_euler()
                + (arb(length) / 2).tanh().log())
    primes = sum(weight * test(y) for y, weight in atoms.values())
    result = value - at_zero * boundary / 2 - primes
    assert result.is_finite()
    return result


def parity_matrices(length):
    n = length**3
    atoms = prime_atoms(length)
    pi = arb.pi()
    diagonal, sine = {}, {0: arb(0)}
    for k in range(n + 1):
        frequency = 2 * pi * k / length
        diagonal[k] = weil_functional(length, frequency, True, atoms)
        if k:
            sine[k] = weil_functional(length, frequency, False, atoms)
            sine[-k] = -sine[k]

    def entry(i, j):
        if i == j:
            return diagonal[abs(i)]
        return (sine[j] - sine[i]) / (pi * (i - j))

    def even(i, j):
        if not i and not j:
            return diagonal[0]
        if not i or not j:
            return arb(2).sqrt() * entry(i, j)
        return entry(i, j) + entry(i, -j)

    return (arb_mat([[even(i, j) for j in range(n + 1)] for i in range(n + 1)]),
            arb_mat([[entry(i, j) - entry(i, -j) for j in range(1, n + 1)]
                     for i in range(1, n + 1)]))


def positive_after_shift(matrix, shift):
    """Sylvester's criterion with strict sign certificates."""
    for size in range(1, matrix.nrows() + 1):
        minor = arb_mat([[matrix[i, j] - (shift if i == j else 0)
                          for j in range(size)] for i in range(size)]).det()
        if minor < 0:
            return False
        assert minor > 0, "undecided principal minor"
    return True


def minimum_enclosure(matrix):
    assert positive_after_shift(matrix, arb(0))
    high = arb(8)
    assert not positive_after_shift(matrix, high)
    # Establish a relative-scale bracket before bisecting tiny eigenvalues.
    for _ in range(ctx.prec // 8):
        low = high / 256
        if positive_after_shift(matrix, low):
            break
        high = low
    else:
        raise ArithmeticError("positive minimum not bracketed")
    for _ in range(40):
        mid = (low + high) / 2
        if positive_after_shift(matrix, mid):
            low = mid
        else:
            high = mid
        if high - low < low / 10**8:
            return low, high
    raise ArithmeticError("minimum not localized")


def check_ground_functionals(even, upper):
    """Certify that both the constant coefficient and endpoint sum are nonzero.

    On either kernel use columns e_j - a*e_0 for 1 <= j <= N.
    Compress the shifted form itself since the second basis is nonorthogonal.
    """
    size = even.nrows()
    for name, a in (("constant coefficient", arb(0)),
                    ("Dirichlet evaluation", arb(2).sqrt())):
        basis = arb_mat([[-a] * (size - 1)] +
                        [[int(i == j) for j in range(1, size)]
                         for i in range(1, size)])
        shifted = arb_mat([[even[i, j] - (upper if i == j else 0)
                            for j in range(size)] for i in range(size)])
        restricted = basis.transpose() * shifted * basis
        assert positive_after_shift(restricted, arb(0))
        print(f"ground line has nonzero {name}")


if __name__ == "__main__":
    for length, bits, gap_test in ((1, 256, "0.01"), (2, 256, "1.1e-17"),
                                   (3, 768, "5.9e-54")):
        ctx.prec = bits
        even, odd = parity_matrices(length)
        cutoff = arb(gap_test)
        # Interlacing with this codimension-one compression bounds the
        # second even eigenvalue from below. Bound the entire odd block too.
        size = even.nrows() - 1
        principal = arb_mat([[even[i, j] for j in range(size)] for i in range(size)])
        assert positive_after_shift(principal, cutoff)
        assert positive_after_shift(odd, cutoff)
        for parity, matrix in (("even", even), ("odd", odd)):
            lower, upper = minimum_enclosure(matrix)
            if parity == "even":
                assert upper < cutoff
                check_ground_functionals(even, upper)
            print(f"L={length} N={length**3} {parity} minimum between "
                  f"{lower.str(14)} and {upper.str(14)}")
        print(f"simple even ground state, every other eigenvalue > {gap_test}")
