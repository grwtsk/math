"""Compare exact coefficient-lattice indices for the normalized Fischer metric.

The signed Weyl-dimension root product is checked against rational Gram
determinants of actual minor polynomials and, for symmetric powers, against
the monomial factorial formula. Run with Python 3 and no external packages.
"""

from collections import defaultdict
from fractions import Fraction
from itertools import combinations, permutations, product
from math import comb, factorial, prod


MIXED_WEIGHTS = (
    (2, 1, 0), (2, 2, 0), (3, 1, 0), (3, 2, 0), (4, 2, 0),
    (2, 1, 0, 0), (2, 1, 1, 0), (2, 2, 0, 0), (3, 1, 0, 0), (2, 2, 1, 0),
)


def weyl_dimension(shifted_weight):
    return prod(
        Fraction(shifted_weight[i] - shifted_weight[j], j - i)
        for i, j in combinations(range(len(shifted_weight)), 2)
    )


def root_product(weight):
    rank = len(weight)
    shifted = [entry + rank - 1 - i for i, entry in enumerate(weight)]
    index = Fraction(1)
    for i, j in combinations(range(rank), 2):
        for level in range(1, shifted[i] - shifted[j]):
            translated = shifted.copy()
            translated[i] -= level
            translated[j] += level
            exponent = -weyl_dimension(translated)
            if exponent.denominator != 1:
                raise ArithmeticError(f"Nonintegral dimension for {translated}")
            index *= Fraction(level) ** exponent.numerator
    if index.denominator != 1:
        raise ArithmeticError(f"Nonintegral index for {weight}")
    return index.numerator


def semistandard_tableaux(weight):
    """Columns increase strictly; corresponding entries increase weakly across rows."""
    heights = [sum(length > j for length in weight) for j in range(weight[0])]
    columns = [combinations(range(len(weight)), height) for height in heights]
    for tableau in product(*columns):
        if all(lower <= upper for left, right in zip(tableau, tableau[1:])
               for lower, upper in zip(left, right)):
            yield tableau


def bideterminant(tableau, rank):
    """Expand each initial-column minor and multiply in Z[X_ij]."""
    polynomial = {(0,) * (rank * rank): 1}
    for rows in tableau:
        expanded = defaultdict(int)
        for perm in permutations(range(len(rows))):
            inversions = sum(a > b for a, b in combinations(perm, 2))
            sign = (-1) ** inversions
            for exponents, coefficient in polynomial.items():
                term = list(exponents)
                for row, column in zip(rows, perm):
                    term[row * rank + column] += 1
                expanded[tuple(term)] += sign * coefficient
        polynomial = {term: value for term, value in expanded.items() if value}
    return polynomial


def fischer_pair(left, right):
    return sum(
        coefficient * right.get(term, 0) * prod(map(factorial, term))
        for term, coefficient in left.items()
    )


def positive_determinant(matrix):
    """Exact elimination. Positive definiteness gives positive nonzero pivots."""
    rows = [row.copy() for row in matrix]
    determinant = Fraction(1)
    for column, pivot_row in enumerate(rows):
        pivot = pivot_row[column]
        if pivot <= 0:
            raise ArithmeticError(f"Nonpositive Fischer pivot at column {column}")
        determinant *= pivot
        for row in rows[column + 1:]:
            multiplier = row[column] / pivot
            if multiplier:
                for j in range(column + 1, len(rows)):
                    row[j] -= multiplier * pivot_row[j]
    return determinant


def gram_index(weight):
    rank = len(weight)
    polynomials = [bideterminant(tab, rank) for tab in semistandard_tableaux(weight)]
    # In lexicographic order the first tableau fills every column with 0,1,... .
    extremal = polynomials[0]
    normalization = fischer_pair(extremal, extremal)
    matrix = [
        [Fraction(fischer_pair(left, right), normalization) for right in polynomials]
        for left in polynomials
    ]
    return len(matrix), 1 / positive_determinant(matrix)


def compositions(total, parts):
    if parts == 1:
        yield (total,)
        return
    for first in range(total + 1):
        for tail in compositions(total - first, parts - 1):
            yield (first, *tail)


def compare(weight, actual, expected):
    if actual != expected:
        raise ArithmeticError(f"{weight}: computed {actual}, expected {expected}")


def main():
    for weight in MIXED_WEIGHTS:
        dimension, index = gram_index(weight)
        compare(weight, root_product(weight), index)
        print(f"weight {weight}, dimension {dimension}, index {index}")

    for rank in range(2, 7):
        for degree in range(10):
            weight = (degree,) + (0,) * (rank - 1)
            index = prod(
                factorial(degree) // prod(map(factorial, monomial))
                for monomial in compositions(degree, rank)
            )
            compare(weight, root_product(weight), index)

    for degree in range(101):
        index = prod(comb(degree, j) for j in range(degree + 1))
        compare((degree, 0), root_product((degree, 0)), index)

    print("Passed: 10 mixed-weight Gram determinants, 50 symmetric powers, 101 rank-two powers.")


if __name__ == "__main__":
    main()
