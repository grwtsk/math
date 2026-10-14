#!/usr/bin/env python3
"""Finite controls for square-root pickup compression, not Lean acceptance.

Human mathematical direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT. MIT.
Run normally and with -O. Runtime validation does not rely on assert.
"""
from fractions import Fraction as F
import json
from math import isqrt
from pathlib import Path
import subprocess
import sys
import unittest
from unittest.mock import patch

import square_root_pickup as sr
from one_third_energy import Interval, finite_energy, moebius_coefficients, sixth_root


def trial_mu(n: int) -> int:
    parity, p = 0, 2
    while p * p <= n:
        if n % p == 0:
            n //= p
            parity += 1
            if n % p == 0:
                return 0
        p += 1
    if n > 1:
        parity += 1
    return (-1) ** parity


def read_interval(value) -> Interval:
    return Interval(F(value['lower']), F(value['upper']))


def response(coeff, x) -> Interval:
    endpoint = sixth_root(F(x)) ** -3
    out = Interval.point(0)
    for n in range(1, len(coeff)):
        out += 2 * coeff[n] * (sixth_root(F(n)) ** -3 - endpoint)
    return out


class CompressionTests(unittest.TestCase):
    def test_exact_coefficients_all_small_limits(self):
        for n in range(1, 129):
            self.assertEqual(sr.reconstruct_moebius(n),
                             [0] + [trial_mu(k) for k in range(1, n + 1)])

    def test_exact_coefficients_4096_from_64(self):
        with patch.object(sr, 'moebius_coefficients', wraps=moebius_coefficients) as sieve:
            recovered = sr.reconstruct_moebius(4096)
        sieve.assert_called_once_with(64)
        self.assertEqual(recovered, [0] + [trial_mu(k) for k in range(1, 4097)])

    def test_every_admissible_larger_cutoff(self):
        for n in range(1, 41):
            expected = sr.reconstruct_moebius(n)
            for u in range(isqrt(n), n + 1):
                self.assertEqual(sr.reconstruct_moebius(n, u), expected)

    def test_exact_divisor_inverse(self):
        a = sr.reconstruct_moebius(400)
        for n in range(1, 401):
            self.assertEqual(sum(a[d] for d in range(1, n + 1) if n % d == 0),
                             int(n == 1))

    def test_reject_missing_support_gate(self):
        for n, u in ((4, 1), (9, 2), (64, 7), (25, 1), (1, 2)):
            with self.assertRaises(ValueError):
                sr.reconstruct_moebius(n, u)

    def test_raw_failure_exactly_at_first_missing_square(self):
        # At the first omitted square the inverse-tail coefficient is real,
        # even though its pickup response at the touching time is zero.
        wrong = [0] + [2 * int(n == 1) - 1 for n in range(1, 5)]
        actual = moebius_coefficients(4)
        self.assertNotEqual(wrong[4], actual[4])
        self.assertTrue((response(wrong, 4) - response(actual, 4)).contains_zero())
        self.assertLess((response(wrong, F(9, 2)) - response(actual, F(9, 2))).hi, 0)

    def test_ordered_pairs_are_not_a_single_triangle(self):
        quad = sr.quadratic_coefficients(8, [0, 1, -1])
        # a=1,b=2 and a=2,b=1 both occur.
        self.assertEqual(quad[2], -1)
        self.assertNotEqual(quad[2], 0)
        self.assertEqual(quad[4], 0)

    def test_neutral_multiplier_is_not_deleted(self):
        quad = sr.quadratic_coefficients(8, [0, 1, -1])
        self.assertEqual(quad[3], 1)  # from a=b=1,k=3
        self.assertEqual(quad[6], -1)

    def test_test_coefficients_do_not_become_moebius(self):
        c = sr.quadratic_coefficients(8, [0, 1, 1])
        reconstructed = [0] + [2 * int(n <= 2) - c[n] for n in range(1, 9)]
        self.assertNotEqual(reconstructed, [0] + [1] * 8)
        self.assertNotEqual(reconstructed, moebius_coefficients(8))

    def test_rational_generic_convolution(self):
        short = [0, F(1, 2), F(-2, 3)]
        c = sr.quadratic_coefficients(12, short)
        for n in range(1, 13):
            brute = sum(short[a] * short[b] for a in (1, 2) for b in (1, 2)
                        if n % (a * b) == 0)
            self.assertEqual(c[n], brute)

    def test_zero_recording(self):
        r = sr.square_root_energy(1)
        for v in r['intervals'].values():
            self.assertGreaterEqual(F(v['upper']), 0)
        self.assertEqual(read_interval(r['intervals']['pickup_energy']), Interval.point(0))

    def test_integer_and_partial_cell_energy(self):
        for x in (F(3, 2), F(7, 2), F(4), F(9, 2), F(8), F(17, 2), F(9), F(16), F(64)):
            r = sr.square_root_energy(x)
            e = finite_energy(x)
            self.assertTrue(read_interval(r['intervals']['pickup_energy']).overlaps(e['energy_cells']))
            self.assertTrue(all(r['enclosure_consistency'].values()))
            for name in ('short_prefix_budget_slack', 'forward_linear_slack', 'reverse_linear_slack'):
                self.assertGreaterEqual(F(r['intervals'][name]['lower']), 0)

    def test_square_crossings_and_small_data(self):
        for x, u in ((F(399, 100), 1), (F(4), 2), (F(401, 100), 2),
                     (F(899, 100), 2), (F(9), 3), (F(901, 100), 3)):
            with patch.object(sr, 'moebius_coefficients', wraps=moebius_coefficients) as sieve:
                r = sr.square_root_energy(x)
            sieve.assert_called_once_with(u)
            self.assertEqual(r['max_moebius_index_used'], u)
            self.assertTrue(r['support_gate'])

    def test_direct_kernel_matches_independent_prefix(self):
        for x in (F(7, 2), F(4), F(9, 2), F(17, 2), F(16)):
            u = isqrt(x.numerator // x.denominator)
            small = moebius_coefficients(u)
            quad = sr.quadratic_coefficients(x.numerator // x.denominator, small)
            direct = Interval.point(0)
            for a in range(1, u + 1):
                for b in range(1, u + 1):
                    direct += small[a] * small[b] * sr.kernel_entry(x, a, b)
            self.assertTrue(direct.overlaps(response(quad, x)))

    def test_indefinite_zero_diagonal_control(self):
        r = sr.indefinite_kernel_control()
        self.assertLess(F(r['determinant']['upper']), 0)
        self.assertLess(F(r['bounded_vector_form']['upper']), 0)
        self.assertTrue(sr.kernel_entry(4, 2, 2).contains_zero())
        self.assertGreater(sr.kernel_entry(4, 1, 2).lo, 0)

    def test_deleted_mixed_energy_detected(self):
        v = sr.square_root_energy(F(17, 2))['intervals']
        h, p, b = (read_interval(v[k]) for k in ('pickup_energy', 'short_prefix_energy', 'quadratic_energy'))
        self.assertFalse(h.overlaps(p + b))

    def test_exact_short_budget_constant(self):
        s = F(1, 3)
        cost = 64 * (1 / (2 * s - F(1, 2)) - 2 / (2 * s - F(1, 4)) + 1 / (2 * s))
        self.assertEqual(cost, F(864, 5))
        self.assertEqual(2 * cost, F(1728, 5))

    def test_invalid_inputs(self):
        for x in (0, -1, F(1, 2), 1.0, True):
            with self.assertRaises((ValueError, TypeError)):
                sr.square_root_energy(x)
        for bits in (7, 513, True, 8.0):
            with self.assertRaises((ValueError, TypeError)):
                sr.square_root_energy(1, bits)
        for short in ([], [0], [1, 1], [0, 1.0], [0, True]):
            with self.assertRaises((ValueError, TypeError)):
                sr.quadratic_coefficients(5, short)

    def test_cli_and_optimized_validation(self):
        script = str(Path(sr.__file__))
        run = subprocess.run([sys.executable, '-B', script, '--cutoff', '7/2'],
                             capture_output=True, text=True, check=True)
        result = json.loads(run.stdout)
        self.assertFalse(result['uniform_quadratic_bound_proved'])
        self.assertEqual(result['records'][0]['max_moebius_index_used'], 1)
        for arg in ('0', '-1', '1/2'):
            bad = subprocess.run([sys.executable, '-O', '-B', script, '--cutoff', arg],
                                 capture_output=True, text=True)
            self.assertEqual(bad.returncode, 2)


if __name__ == '__main__':
    unittest.main()
