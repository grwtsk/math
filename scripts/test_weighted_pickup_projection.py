#!/usr/bin/env python3
"""Exact finite controls; no infinite-range or Lean acceptance is inferred.

Human mathematical direction: R.A. Jacob Martone.
Implementation assistance: OpenAI ChatGPT. MIT.
"""
from fractions import Fraction as Q
import itertools
import json
from pathlib import Path
import subprocess
import sys
import unittest

from one_third_energy import Interval as I, finite_energy, moebius_coefficients
import weighted_pickup_projection as p


def interval(value):
    return I(Q(value['lower']), Q(value['upper']))


def quad(matrix, vector):
    return sum((vector[i] * matrix[i][j] * vector[j]
                for i in range(len(vector)) for j in range(len(vector))), Q(0))


def multiply(a, b):
    return [[sum((a[i][k] * b[k][j] for k in range(len(b))), Q(0))
             for j in range(len(b[0]))] for i in range(len(a))]


class WeightedProjectionTests(unittest.TestCase):
    def test_exact_partition_and_quarter_scale(self):
        for j in range(65):
            X, m = 2 ** j, p.block_count(j)
            self.assertEqual(X % m, 0)
            self.assertLessEqual(X, m ** 4)
            self.assertLess(m ** 4, 16 * X)
        for x in [Q(1), Q(3, 2), Q(7, 2), Q(17, 2), Q(65, 4), Q(256)]:
            rows = p.partition(x)
            self.assertEqual(sum((r - l for _, l, r in rows), Q(0)), x - 1)
            for (_, _, r), (_, l, _) in zip(rows, rows[1:]):
                self.assertEqual(l, r)
            self.assertTrue(all(l.denominator == 1 and l < r for _, l, r in rows))

    def test_zero_horizon(self):
        row = p.projected_energy(1)
        self.assertEqual(row['block_count'], 0)
        for key in ('pickup_energy', 'coarse_energy', 'projection_error'):
            self.assertEqual(interval(row['intervals'][key]), I.point(0))

    def test_finite_identities_and_error_budget(self):
        for x in (Q(3, 2), Q(7, 2), Q(4), Q(17, 2), Q(16), Q(64)):
            row = p.projected_energy(x)
            self.assertTrue(all(row['consistency'].values()))
            self.assertGreater(interval(row['intervals']['error_budget_slack']).lo, 0)
            self.assertLess(interval(row['intervals']['written_global_error_budget']).hi, 1)

    def test_existing_energy_readback(self):
        for x in (Q(7, 2), Q(4), Q(17, 2), Q(64)):
            row = p.projected_energy(x)
            expected = finite_energy(x)['energy_cells']
            self.assertTrue(interval(row['intervals']['pickup_energy']).overlaps(expected))

    def test_source_atom_first_moments(self):
        for x in (Q(7, 2), Q(17, 2), Q(32)):
            row = p.projected_energy(x)
            mu = moebius_coefficients(int(x))
            for block in row['blocks']:
                l, r = Q(block['left']), Q(block['right'])
                atom = sum((mu[n] * p.atom_integral(n, l, r)
                            for n in range(1, len(mu))), I.point(0))
                self.assertTrue(atom.overlaps(interval(block['first_moment'])))

    def test_touching_and_future_atoms_zero(self):
        self.assertEqual(p.atom_integral(4, 2, 4), I.point(0))
        self.assertEqual(p.atom_integral(5, 2, 4), I.point(0))
        self.assertGreater(p.atom_integral(4, 2, Q(9, 2)).lo, 0)

    def test_earlier_atoms_not_reset(self):
        self.assertGreater(p.atom_integral(1, 4, 8).lo, 0)
        row = p.projected_energy(8, coefficients=[0, 1, 0, 0, 0, 0, 0, 0, 0])
        last = row['blocks'][-1]
        self.assertGreater(interval(last['first_moment']).lo, 0)
        self.assertEqual(p.atom_integral(8, Q(last['left']), Q(last['right'])), I.point(0))

    def test_exact_mass_telescope(self):
        for x in (Q(7, 2), Q(16), Q(65, 2)):
            total = sum((p.mass(l, r) for _, l, r in p.partition(x)), I.point(0))
            self.assertTrue(total.overlaps(p.mass(1, x)))

    def test_signed_sources(self):
        for source in itertools.product((-1, 0, 1), repeat=4):
            row = p.projected_energy(4, coefficients=[0, *source])
            self.assertTrue(all(row['consistency'].values()))
            self.assertGreater(interval(row['intervals']['error_budget_slack']).lo, 0)

    def test_sign_change_changes_actual_energy(self):
        a = moebius_coefficients(16)
        first = p.projected_energy(16, coefficients=a)
        a[6] *= -1
        second = p.projected_energy(16, coefficients=a)
        self.assertFalse(interval(first['intervals']['coarse_energy']).overlaps(
            interval(second['intervals']['coarse_energy'])))

    def test_constant_source_projection_grows(self):
        small = p.projected_energy(16, coefficients=[0] + [1] * 16)
        large = p.projected_energy(32, coefficients=[0] + [1] * 32)
        growth = interval(large['intervals']['coarse_energy']) - interval(small['intervals']['coarse_energy'])
        # V(x)>=sqrt(x)-1>=sqrt(16)/2 on [16,32].
        lower = 4 * p.mass(16, 32)
        self.assertGreater(growth.lo, lower.hi)
        self.assertGreater(interval(large['intervals']['error_budget_slack']).lo, 0)

    def test_green_inverse_and_symmetry(self):
        for n in range(1, 9):
            w = [Q(i + 2, i + 3) for i in range(n)]
            G, J = p.green(w), p.precision(w)
            identity = [[Q(i == j) for j in range(n)] for i in range(n)]
            self.assertEqual(multiply(G, J), identity)
            self.assertEqual(multiply(J, G), identity)
            self.assertEqual(G, [list(row) for row in zip(*G)])

    def test_grounded_path_and_center(self):
        for n in range(1, 7):
            w = [Q(i + 1, i + 2) for i in range(n)]
            G = p.green(w)
            for q in itertools.product((-1, 0, 1), repeat=n):
                d = [Q(q[0])] + [Q(q[i] - q[i - 1]) for i in range(1, n)]
                energy = sum((w[i] * q[i] ** 2 for i in range(n)), Q(0))
                center = sum((w[i] * q[i] for i in range(n)), Q(0)) / sum(w)
                self.assertEqual(quad(G, d), energy)
                self.assertEqual(sum(w) * center ** 2 + sum(
                    (w[i] * (q[i] - center) ** 2 for i in range(n)), Q(0)), energy)

    def test_precision_quadratic_and_dual_witness(self):
        for n in range(1, 9):
            w = [Q(i + 2, i + 3) for i in range(n)]
            d = [Q((-1) ** i, i + 1) for i in range(n)]
            G, J = p.green(w), p.precision(w)
            v = [sum((G[i][j] * d[j] for j in range(n)), Q(0)) for i in range(n)]
            denominator = sum(((v[i] - v[i + 1]) ** 2 / w[i]
                               for i in range(n - 1)), v[-1] ** 2 / w[-1])
            self.assertEqual(quad(J, v), denominator)
            self.assertEqual(sum((d[i] * v[i] for i in range(n)), Q(0)) ** 2 / denominator,
                             quad(G, d))

    def test_deleting_anchor_is_detected(self):
        w = [Q(1), Q(2), Q(3)]
        J = p.precision(w)
        J[-1][-1] -= 1 / w[-1]
        self.assertEqual(quad(J, [Q(1)] * 3), 0)
        self.assertNotEqual(multiply(p.green(w), J), [[Q(i == j) for j in range(3)] for i in range(3)])

    def test_deleting_center_is_detected(self):
        w, q = [Q(1), Q(2), Q(3)], [Q(2)] * 3
        self.assertEqual(sum(w[i] * q[i] ** 2 for i in range(3)), 24)
        self.assertEqual(sum(w[i] * (q[i] - 2) ** 2 for i in range(3)), 0)
        self.assertEqual(quad(p.green(w), [Q(2), Q(0), Q(0)]), 24)

    def test_global_error_constant_rational_certificate(self):
        self.assertLess(Q(12, 11) ** 6, 2)
        self.assertLess((I.point(1) / (12 * (I.point(1) - p.sixth_root(Q(2)) ** -1))).hi, 1)

    def test_invalid_cutoff_and_indices(self):
        for x in (0, -1, Q(1, 2)):
            with self.assertRaises(ValueError):
                p.projected_energy(x)
        for x in (True, 2.0, '2'):
            with self.assertRaises(TypeError):
                p.projected_energy(x)
        for j in (True, -1, Q(1, 2)):
            with self.assertRaises(ValueError):
                p.block_count(j)

    def test_invalid_source_precision_and_weight(self):
        for a in ([0, 1, 2], [1, 1, -1], [0, True, 0], [0, 1, 0, 0]):
            with self.assertRaises((ValueError, TypeError)):
                p.projected_energy(2, coefficients=a)
        for bits in (True, 7, 513):
            with self.assertRaises(ValueError):
                p.projected_energy(1, bits)
        for w in ([], [0], [-1]):
            with self.assertRaises(ValueError):
                p.green(w)
            with self.assertRaises(ValueError):
                p.precision(w)

    def test_cli_normal_and_optimized(self):
        script = str(Path(p.__file__))
        for flags in ([], ['-O']):
            ok = subprocess.run([sys.executable, *flags, '-B', script, '--cutoff', '7/2'],
                                text=True, capture_output=True, check=False)
            self.assertEqual(ok.returncode, 0, ok.stderr)
            data = json.loads(ok.stdout)
            self.assertFalse(data['uniform_coarse_bound_proved'])
            self.assertEqual(data['lean_replay'], 'NOT_RUN')
            bad = subprocess.run([sys.executable, *flags, '-B', script, '--cutoff', '0'],
                                 text=True, capture_output=True, check=False)
            self.assertNotEqual(bad.returncode, 0)


    def test_two_mode_partition_scale(self):
        for j in range(65):
            X, m = 2 ** j, p.block_count(j, 2)
            self.assertEqual(X % m, 0)
            self.assertLessEqual(X, m ** 8)
            self.assertLess(m ** 8, 256 * X)
        for rank in (True, 0, 3):
            with self.assertRaises(ValueError):
                p.partition(1, rank)

    def test_two_mode_identities_and_readback(self):
        for x in (Q(7, 2), Q(4), Q(17, 2), Q(16), Q(64)):
            row = p.projected_two_mode_energy(x)
            self.assertTrue(all(row['consistency'].values()))
            self.assertTrue(all(b['normal_equation_consistency'] for b in row['blocks']))
            self.assertTrue(interval(row['intervals']['pickup_energy']).overlaps(finite_energy(x)['energy_cells']))
            self.assertGreater(interval(row['intervals']['error_budget_slack']).lo, 0)
            self.assertLess(interval(row['intervals']['written_global_error_budget']).hi, Q(1, 2))
            self.assertTrue(all(interval(b['schur_mass']).lo > 0 for b in row['blocks']))

    def test_two_modes_retain_entire_source_history(self):
        row = p.projected_two_mode_energy(16, coefficients=[0, 1] + [0] * 15)
        self.assertTrue(interval(row['intervals']['projection_error']).contains_zero())
        for b in row['blocks']:
            self.assertTrue((interval(b['constant_coefficient']) - 2).contains_zero())
            self.assertTrue((interval(b['inverse_sqrt_coefficient']) + 2).contains_zero())
        self.assertGreater(interval(row['intervals']['coarse_energy']).lo, 0)

    def test_dropping_second_mode_changes_energy(self):
        one = p.projected_energy(2)
        two = p.projected_two_mode_energy(2)
        self.assertGreater(interval(one['intervals']['projection_error']).lo, 0)
        self.assertTrue(interval(two['intervals']['projection_error']).contains_zero())
        self.assertGreater(interval(two['intervals']['slope_energy']).lo, 0)

    def test_rank_two_improves_same_partition(self):
        # Through x=16, the two rank schedules have identical partitions.
        self.assertEqual(p.partition(16), p.partition(16, 2))
        one, two = p.projected_energy(16), p.projected_two_mode_energy(16)
        self.assertGreater(interval(two['intervals']['coarse_energy']).lo,
                           interval(one['intervals']['coarse_energy']).hi)

    def test_two_mode_constant_is_below_half(self):
        self.assertLess(Q(10, 9) ** 6, 2)
        row = p.projected_two_mode_energy(1)
        self.assertLess(interval(row['intervals']['written_global_error_budget']).hi, Q(1, 2))
        self.assertEqual(interval(row['intervals']['coarse_energy']), I.point(0))

    def test_two_mode_signed_sources(self):
        for source in itertools.product((-1, 0, 1), repeat=3):
            row = p.projected_two_mode_energy(3, coefficients=[0, *source])
            self.assertTrue(all(row['consistency'].values()))
            self.assertTrue(interval(row['intervals']['projection_error']).contains_zero())

    def test_two_mode_constant_source_not_bounded_by_error_budget(self):
        row = p.projected_two_mode_energy(32, coefficients=[0] + [1] * 32)
        self.assertGreater(interval(row['intervals']['coarse_energy']).lo, 1)
        self.assertGreater(interval(row['intervals']['error_budget_slack']).lo, 0)

    def test_two_mode_source_validation(self):
        for source in ([0, 1, 2], [0, True, 0], [0, 1], [0, 1, 0, 0]):
            with self.assertRaises((TypeError, ValueError)):
                p.projected_two_mode_energy(2, coefficients=source)
        with self.assertRaises(ArithmeticError):
            p.projected_two_mode_energy(Q(1000001, 1000000), bits=8)


if __name__ == '__main__':
    unittest.main()
