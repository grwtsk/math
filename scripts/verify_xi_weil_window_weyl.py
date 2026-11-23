"""Exact finite controls for the closed-walk Weyl coefficient on log windows."""
from collections import Counter
from fractions import Fraction
from itertools import product


def closed_span_counts(steps, limit, order):
    """Multiply rational locations; the logarithmic span is log(high/low)."""
    one = Fraction(1)
    state = {(one, one, one): 1}
    yield Counter({one: 1})
    for _ in range(order):
        after = Counter()
        for (place, low, high), count in state.items():
            for step in steps:
                new = place * step
                lower, upper = min(low, new), max(high, new)
                if upper <= limit * lower:
                    after[new, lower, upper] += count
        state = after
        spans = Counter()
        for (place, low, high), count in state.items():
            if place == one:
                spans[high / low] += count
        yield spans


def alphabet(numbers):
    return [q for n in numbers for q in (Fraction(n), Fraction(1, n))]


def independent_count(steps, limit, order):
    answer = Counter()
    for word in product(steps, repeat=order):
        place = Fraction(1)
        visited = [place]
        for step in word:
            place *= step
            visited.append(place)
        span = max(visited) / min(visited)
        if place == 1 and span <= limit:
            answer[span] += 1
    return answer


if __name__ == '__main__':
    alternating = list(closed_span_counts(alphabet([2]), 3, 20))
    for m, counts in enumerate(alternating[1:], 1):
        assert counts == ({2: 2} if m % 2 == 0 else {})
    mixed = list(closed_span_counts(alphabet([2, 3]), 3, 12))
    for order in range(13):
        def trace(middle):
            adjacent = [[1], [0], [3], [2]]
            if middle:
                adjacent[1].append(2)
                adjacent[2].append(1)
            count = 0
            for root in range(4):
                visits = [int(site == root) for site in range(4)]
                for _ in range(order):
                    visits = [sum(visits[j] for j in edges) for edges in adjacent]
                count += visits[root]
            return count
        assert trace(True) - trace(False) == mixed[order][3]
    controls = 0
    for n in range(2, 8):
        # Include a trial step at every integer, even when the genuine weight is zero.
        shorter = [v for v in (2, 3, 4, 5, 7) if v < n]
        prev = list(closed_span_counts(alphabet(shorter), n, 6))
        curr = list(closed_span_counts(alphabet(shorter + [n]), n, 6))
        assert curr[2][n] - prev[2][n] == 2
        for m, (old, new) in enumerate(zip(prev, curr)):
            assert all(new[s] == old[s] for s in (new | old) if s < n)
            assert new[n] >= old[n]
            if m <= 4:
                assert independent_count(alphabet(shorter + [n]), n, m) == new
                controls += 1
        if n == 6:
            assert prev[4][6] > 0
            print('span log 6 at order four from shorter genuine jumps:', prev[4][6])
    print(f'{controls} independently enumerated span tables, 20 alternating orders, '
          'six new-weight thresholds passed')
