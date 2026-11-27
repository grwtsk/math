"""Compute the prescribed sparse Bernoulli test indices using only integers."""

import argparse


def roots_strictly_below(degree, numerator, denominator):
    """Count roots of T_degree strictly below numerator/denominator."""
    # The consecutive Chebyshev polynomials form an interlacing Sturm chain.
    # The sign variations from T_0 to T_degree count roots strictly above t.
    previous, current = 1, numerator
    last_sign = 1
    variations = 0
    for order in range(1, degree + 1):
        if current:
            sign = 1 if current > 0 else -1
            variations += sign != last_sign
            last_sign = sign
        if order < degree:
            previous, current = current, 2*numerator*current - denominator**2*previous
    return degree - variations - int(current == 0)


def indices(block):
    if block < 1:
        raise ValueError('The dyadic block index must be positive.')
    scale = 1 << block
    degree = (block + 9) // 10
    nodes = []
    for rank in range(1, degree + 1):
        low, high = scale, 2*scale
        while low < high:
            mid = (low + high) // 2
            threshold = 2*mid + 1 - 3*scale
            if roots_strictly_below(degree, threshold, scale) >= rank:
                high = mid
            else:
                low = mid + 1
        nodes.append(low)
    return tuple(nodes)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('block', type=int, nargs='?')
    args = parser.parse_args()
    if args.block is not None:
        print(*indices(args.block))
        return
    for degree in range(1, 301):
        assert roots_strictly_below(degree, -1, 1) == 0
        assert roots_strictly_below(degree, 0, 1) == degree // 2
        assert roots_strictly_below(degree, 1, 1) == degree
    assert list(map(indices, [1, 2, 3, 7])) == [(3,), (6,), (12,), (192,)]
    for block in [1, 10, 11, 21, 31, 51, 100]:
        print('block', block, 'rounded nodes', *indices(block))


if __name__ == '__main__':
    main()
