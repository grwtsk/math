"""Verify n^3 |P_n-1|^4 <= 1 for every 2 <= n <= 512 using integer enclosures."""
import verify_hull as hull


def main():
    hull.BITS = 832
    hull.SCALE = 1 << hull.BITS
    hull.TERMS = 280
    hull.LOG_TWO = hull.atanh_log(1, 3)
    hull.log_interval.cache_clear()
    bound = 512
    moments = hull.moments(bound + 1)
    log_bounds = [hull.log_interval(value.numerator, value.denominator) for value in moments]
    for n in range(2, bound + 1):
        low = high = 0
        weight = 1
        for k in range(n+1):
            left, right = log_bounds[k]
            if weight < 0:
                left, right = right, left
            low += weight * left
            high += weight * right
            weight = -weight * (n-k) // (k+1)
        magnitude = max(abs(low), abs(high))
        # For |d| <= 1/2, |exp(d)-1| <= |d| exp(1/2) < 2|d|.
        assert 2*magnitude <= hull.SCALE, n
        assert n**3*(2*magnitude)**4 < hull.SCALE**4, n
    print('PASS n^3 |P_n-1|^4 < 1 at all 511 consecutive indices 2..512.')
    print('Each log(P_n) enclosed by directed 832-bit integer arithmetic on exact Bernoulli rationals.')


if __name__ == '__main__':
    main()
