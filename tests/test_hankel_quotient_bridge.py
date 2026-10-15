"""Exact finite regressions and negative controls. No all-depth inference."""
from fractions import Fraction as Q
from pathlib import Path
import random
import sys
import unittest
from unittest.mock import patch
sys.path.insert(0, str(Path(__file__).resolve().parents[1]/'scripts'))
import arithmetic_quotient_sections as s
import hankel_quotient_bridge as b


def actual_quotient(a):
    d = [x+(1 if k == 0 else 0) for k, x in enumerate(a)]
    inverse = s.inverse(d, len(d))
    return [(1 if k == 0 else 0)-2*x for k, x in enumerate(inverse)]


def point_matrix(m):
    return [[s.I.point(x, 160) for x in r] for r in m]


class AlgebraTests(unittest.TestCase):
    def test_exact_quotient_identity_all_sizes(self):
        rng = random.Random(173)
        for n in range(1, 9):
            a = [Q(rng.randint(-5, 5), 7) for _ in range(2*n)]
            c = actual_quotient(a)
            k, h, r = b.quotient_bridge(a, c, n)
            self.assertTrue(all(x == 0 for row in r for x in row))

    def test_negative_constant_denominator(self):
        a = [Q(-2), Q(1, 3), Q(5), Q(-7)]
        self.assertTrue(all(x == 0 for row in b.quotient_bridge(a, actual_quotient(a), 2)[2] for x in row))

    def test_constant_source(self):
        a = [Q(2)]+[Q(0)]*7
        k, h, r = b.quotient_bridge(a, actual_quotient(a), 4)
        self.assertTrue(all(x == 0 for row in k+h+r for x in row))

    def test_terminal_coefficient_is_retained(self):
        a = [Q(0)]*8; a[-1] = Q(3)
        c = actual_quotient(a)
        self.assertEqual(b.hankel(c, 4)[-1][-1], 6)
        self.assertEqual(b.quotient_bridge(a, c, 4)[0][-1][-1], 3)

    def test_missing_terminal_rejected(self):
        with self.assertRaisesRegex(ValueError, 'terminal'):
            b.hankel([Q(0)]*7, 4)

    def test_unequal_prefixes_rejected(self):
        with self.assertRaisesRegex(ValueError, 'matched'):
            b.quotient_bridge([Q(0)]*4, [Q(0)]*3, 2)

    def test_wrong_factor_two_is_detectable(self):
        a = [Q(0), Q(1)]
        k, h, _ = b.quotient_bridge(a, actual_quotient(a), 1)
        self.assertNotEqual(h, k)

    def test_wrong_denominator_is_detectable(self):
        a = [Q(0), Q(1), Q(2), Q(3)]
        c = actual_quotient(a); c[0] += Q(1, 10)
        self.assertTrue(any(x != 0 for row in b.quotient_bridge(a, c, 2)[2] for x in row))

    def test_matrix_shape_rejected(self):
        with self.assertRaisesRegex(ValueError, 'shape'):
            b.matmul([[1, 2]], [[1]])

    def test_empty_matrix_rejected(self):
        with self.assertRaises(ValueError):
            b.transpose([])

    def test_both_matrices_are_nested(self):
        a = [Q(k % 5, 7) for k in range(16)]; c = actual_quotient(a)
        k8 = b.quotient_bridge(a, c, 8)[0]
        k4 = b.quotient_bridge(a, c, 4)[0]
        self.assertEqual(k4, [r[:4] for r in k8[:4]])

    def test_exact_shared_denominator_inverse(self):
        a = [Q(1, 3), Q(-2), Q(0), Q(7), Q(-11), Q(3)]
        c = actual_quotient(a)
        inverse = [((1 if k == 0 else 0)-x)/2 for k, x in enumerate(c)]
        self.assertEqual(s.conv([x+(k == 0) for k, x in enumerate(a)], inverse, len(a)),
                         [Q(1)]+[Q(0)]*(len(a)-1))


class LaguerreTests(unittest.TestCase):
    def test_reflection_is_involution(self):
        for k in range(10):
            p = b.laguerre(k)
            self.assertEqual(b.reflected_polynomial(b.reflected_polynomial(p)), p)

    def test_exact_hankel_overlap(self):
        q = s.prime_jet_polynomials(16)
        for x in (Q(0), Q(1), Q(3, 2), Q(4)):
            _, _, cross = b.laguerre_channels(x, 8)
            for i in range(8):
                for j in range(8):
                    self.assertEqual(-x*cross[i][j], b.polynomial_value(q[i+j+1], x))

    def test_channels_reconstruct(self):
        e, o, c = b.laguerre_channels(Q(7, 3), 8)
        self.assertEqual(c, [[x-y for x, y in zip(r, t)] for r, t in zip(e, o)])

    def test_cross_is_symmetric(self):
        c = b.laguerre_channels(Q(2), 8)[2]
        self.assertEqual(c, b.transpose(c))

    def test_reflection_removal_changes_sign(self):
        v = b.finite_controls()
        self.assertEqual(v['reflected_reading'], '-1/3')
        self.assertEqual(v['unreflected_reading'], '1/3')

    def test_even_and_odd_grams_are_positive_on_tests(self):
        e, o, _ = b.laguerre_channels(Q(3), 5)
        for v in ([Q(1)]*5, [Q(-1)**j for j in range(5)], [Q(j) for j in range(5)]):
            self.assertGreaterEqual(b.quadratic(e, v), 0)
            self.assertGreaterEqual(b.quadratic(o, v), 0)

    def test_hodge_heat_debt_exact(self):
        e, o, c = b.laguerre_channels(Q(1), 4); r = Q(1, 3)
        relaxed = [[x-r*r*y for x, y in zip(row, other)] for row, other in zip(e, o)]
        self.assertEqual([[x-y for x, y in zip(row, other)] for row, other in zip(c, relaxed)],
                         [[-(1-r*r)*x for x in row] for row in o])

    def test_continuum_moment_exact(self):
        from math import factorial
        q = s.prime_jet_polynomials(32)
        for k, target in enumerate(b.continuum_coefficients(32)):
            integral = sum((v*2**j*factorial(j)*2**(j+1) for j, v in enumerate(q[k])), Q(0))
            self.assertEqual(integral, target)

    def test_continuum_hankel_rank_one(self):
        h = b.hankel(b.continuum_coefficients(16), 8)
        self.assertEqual(h, [[-8*Q(-3)**(i+j) for j in range(8)] for i in range(8)])

    def test_discrepancy_weight_keeps_constant(self):
        self.assertEqual(b.discrepancy_polynomial(0), [-Q(3, 2)])

    def test_discrepancy_polynomial_derivative(self):
        qs = s.prime_jet_polynomials(16)
        for k in range(16):
            p = [v*2**j for j, v in enumerate(qs[k])]
            d = [(j+1)*p[j+1] for j in range(len(p)-1)]+[Q(0)]
            self.assertEqual(b.discrepancy_polynomial(k), [x-Q(3, 2)*y for x, y in zip(d, p)])

    def test_negative_argument_rejected(self):
        with self.assertRaisesRegex(ValueError, 'nonnegative'):
            b.laguerre_channels(-1, 2)


class CertificateTests(unittest.TestCase):
    def test_complete_coupled_certificate(self):
        v = b.coupled_norm_certificate(point_matrix([[1, 0], [0, Q(1, 2)]]), Q(11, 10), [1, 0])
        self.assertTrue(v['strict'])
        self.assertFalse(v['complement_discarded'])

    def test_large_hidden_complement_rejected(self):
        with self.assertRaisesRegex(ValueError, 'margin'):
            b.coupled_norm_certificate(point_matrix([[Q(1, 10), 0], [0, 2]]), 1, [1, 0])

    def test_large_mixed_mode_rejected(self):
        with self.assertRaisesRegex(ValueError, 'margin'):
            b.coupled_norm_certificate(point_matrix([[1, 1], [1, 1]]), 3, [1, 0])

    def test_zero_vector_rejected(self):
        with self.assertRaisesRegex(ValueError, 'nonzero'):
            b.coupled_norm_certificate(point_matrix([[1]]), 2, [0])

    def test_nonstrict_bound_rejected(self):
        with self.assertRaisesRegex(ValueError, 'margin'):
            b.coupled_norm_certificate(point_matrix([[1]]), 1, [1])

    def test_invalid_norm_bound_rejected(self):
        with self.assertRaisesRegex(ValueError, 'positive'):
            b.coupled_norm_certificate(point_matrix([[1]]), 0)

    def test_reconstruction_cross_error_retained(self):
        self.assertEqual(b.filtered_reconstruction_error(2, 4, 3, 5), 20)

    def test_reconstruction_error_zero_case(self):
        self.assertEqual(b.filtered_reconstruction_error(0, 0, 3, 5), 0)

    def test_negative_reconstruction_error_rejected(self):
        with self.assertRaises(ValueError):
            b.filtered_reconstruction_error(-1, 0, 0, 0)

    def test_float_reconstruction_error_rejected(self):
        with self.assertRaises(TypeError):
            b.filtered_reconstruction_error(0.0, 0, 0, 0)

    def test_pinned_source(self):
        b.pinned_source()

    def test_changed_source_pin_rejected(self):
        with patch.object(b, 'UPSTREAM_SHA256', '0'*64):
            with self.assertRaisesRegex(ValueError, 'drift'):
                b.pinned_source()

    def test_profile_boolean_rejected(self):
        with self.assertRaisesRegex(ValueError, 'profile'):
            b.produce(True)

    def test_profile_unlisted_rejected(self):
        with self.assertRaisesRegex(ValueError, 'profile'):
            b.produce(256)

    def test_explosive_model_not_certified(self):
        c = [s.I.point(2**k, 160) for k in range(8)]
        with self.assertRaisesRegex(ValueError, 'finite J'):
            b.moment_section(c, 4)


if __name__ == '__main__':
    unittest.main()
