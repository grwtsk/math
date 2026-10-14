#!/usr/bin/env python3
"""Finite rational controls. These tests do not certify a uniform Jacobi energy."""
from fractions import Fraction as Q
from itertools import product
import json
from math import factorial
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest

import jacobi_sequence_bounds as j


class JacobiSequenceTests(unittest.TestCase):
    def test_initial_polynomials(self):
        self.assertEqual(j.jacobi(0), [Q(1)])
        self.assertEqual(j.jacobi(1), [Q(-7, 6), Q(13, 6)])
        self.assertEqual(j.jacobi(2), [Q(91, 72), Q(-247, 36), Q(475, 72)])

    def test_sturm_coefficient_identity(self):
        for n in range(25):
            self.assertEqual(j.sturm_residual(n), [Q(0)])

    def test_endpoint_derivatives(self):
        for n in range(1, 25):
            p = j.jacobi(n)
            b = abs(p[0])
            lam = n * (n + Q(7, 6))
            self.assertEqual(abs(j.derivative(p)[0]), Q(6, 7) * lam * b)
            self.assertEqual(j.evaluate(p, 1), 1)

    def test_exact_orthogonality(self):
        for n in range(9):
            for m in range(9):
                poly = j.multiply(j.jacobi(n), j.jacobi(m))
                val = sum((c / (k + Q(7, 6)) for k, c in enumerate(poly)), Q(0))
                self.assertEqual(val, 1 / (2 * n + Q(7, 6)) if m == n else 0)

    def test_actual_finite_atom_integration_by_parts(self):
        # At y=k^-2 the two active response terms cancel exactly. The
        # fractional powers paired with k^-1/2 leave rational endpoints.
        for n in range(1, 13):
            poly = j.jacobi(n)
            lam = n*(n+Q(7, 6))
            for k in range(1, 10):
                direct = sum((p*Q(k)**(-2*h-2)/((2*h+Q(3, 2))*(2*h+2))
                              for h, p in enumerate(poly)), Q(0))
                integrated = Q(0)
                for h in range(1, n+1):
                    a, b = Q(k)**(-2*h), Q(k)**(-2*h-2)
                    integrated += h*poly[h]*(
                        -Q(5, 6)*(a/(h-Q(1, 4))-b/(h+Q(3, 4)))
                        +Q(1, 3)*(a/h-b/(h+1)))
                self.assertEqual(direct, integrated/(2*lam))

    def test_beta_formula(self):
        for n in range(21):
            for lam in (Q(1, 2), Q(7, 12), Q(3, 4), Q(7, 6), Q(3, 2), Q(2), Q(4)):
                self.assertEqual(j.beta_pairing(n, lam), j.beta_closed(n, lam))

    def test_transformed_equation(self):
        # The theta-to-y second derivative is y(1-y)D_y^2+(1-2y)D_y/2.
        for n in range(9):
            p = j.jacobi(n)
            for y in (Q(1, 20), Q(1, 4), Q(1, 2), Q(9, 10)):
                a = Q(1, 3) / y - Q(1, 4) / (1 - y)
                ap = -Q(1, 3) / y**2 - Q(1, 4) / (1 - y)**2
                potential = (n + Q(7, 12))**2 + 1/(18*y) + 1/(16*(1-y))
                u0 = j.evaluate(p, y)
                u1 = j.evaluate(j.derivative(p), y)
                u2 = j.evaluate(j.derivative(j.derivative(p)), y)
                residual = y*(1-y)*(u2+2*a*u1+(ap+a*a)*u0)
                residual += (1-2*y)*(u1+a*u0)/2 + potential*u0
                self.assertEqual(residual, 0)

    def test_bernstein_value_mesh(self):
        for n in range(1, 13):
            p = j.jacobi(n)
            for k in range(1, 32):
                y = Q(k, 32)
                value = j.evaluate(p, y)
                self.assertLessEqual(value**12*y**4*(1-y)**3*n**6, Q(6, 5)**12)

    def test_derivative_interior_mesh(self):
        for n in range(2, 17):
            dp = j.derivative(j.jacobi(n))
            delta = Q(1, n*n)
            for k in range(33):
                y = delta + (1-2*delta)*Q(k, 32)
                value = j.evaluate(dp, y)
                self.assertLessEqual(value**12*y**10*(1-y)**9, 7**12*n**6)

    def test_derivative_endpoint_mesh(self):
        for n in range(1, 17):
            p = j.jacobi(n)
            dp = j.derivative(p)
            maximum = Q(6, 7)*n*(n+Q(7, 6))*abs(p[0])
            for k in range(33):
                self.assertLessEqual(abs(j.evaluate(dp, Q(k, 32))), maximum)

    def test_b_n_constant(self):
        for n in range(1, 65):
            b = abs(j.jacobi(n)[0])
            self.assertLessEqual(b**6, Q(6, 5)**6*n)

    def test_scalar_constants(self):
        values = j.scalar_parameters()
        self.assertEqual(values['transformed_potential_factor'], '3521/1296')
        self.assertEqual(values['logarithmic_coefficient_factor'], '223179/35')
        self.assertEqual(values['interior_derivative_factor'], '32/5')
        self.assertEqual(values['elementary_coefficient_factor'], '541/35')
        self.assertGreater(sum((Q(5, 3)**k/factorial(k) for k in range(6)), Q(0)), Q(36, 7))
        self.assertLess(Q(2401, 108), 27)

    def test_global_source_constants(self):
        exponential_integral = sum((Q(c)*factorial(k)*2**(k+1)
                                    for k, c in enumerate([1, 2, 1])), Q(0))
        self.assertEqual(exponential_integral, 26)
        self.assertEqual(12*exponential_integral, 312)
        self.assertEqual(4*(Q(5, 12)*312+Q(1, 2)*12), 544)
        for t in (Q(0), Q(1, 3), Q(1), Q(2), Q(10)):
            for v in (Q(0), t/3, t):
                self.assertLessEqual((1+t)/(1+t-v), 1+v)

    def test_polynomial_weight_comparison(self):
        for N in range(6):
            for coeff in product((-1, 0, 1), repeat=N+1):
                if not any(coeff):
                    continue
                a = j.weighted_square(list(map(Q, coeff)), Q(1, 6))
                for beta in (Q(0), Q(1, 12), Q(1, 8), Q(1, 6)):
                    b = j.weighted_square(list(map(Q, coeff)), beta)
                    exponent = 2*(Q(1, 6)-beta)
                    t, s = exponent.denominator, exponent.numerator
                    self.assertLessEqual((b/a)**t, Q(97, 25)**t*(N+1)**s)

    def test_critical_model_finite_moments(self):
        for n in range(21):
            m = [1/(2*k+Q(7, 6))-1/(2*k+Q(3, 2)) for k in range(n+1)]
            direct = sum((p*v for p, v in zip(j.jacobi(n), m)), Q(0))
            self.assertEqual(direct, j.critical_model(n)[0])

    def test_critical_telescope_all_finite_cases(self):
        for N in range(65):
            record = j.critical_record(N)
            self.assertTrue(record['identities_exact'])
            self.assertLessEqual(Q(record['finite_telescope']), 3)

    def test_critical_s_decay(self):
        for n in range(129):
            s = j.critical_model(n)[1]
            self.assertGreater(s, 0)
            self.assertLessEqual(s**3*(n+1)**4, 27)

    def test_critical_growth_not_uniform(self):
        a = Q(j.critical_record(32)['partial_energy'])
        b = Q(j.critical_record(128)['partial_energy'])
        self.assertGreater(b, a)
        self.assertGreater(b, 1)
        # The divergence follows from the written all-N harmonic lower bound,
        # not these two finite numbers.

    def test_missing_jacobian_detected(self):
        correct = j.critical_model(0)[0]
        wrong = j.beta_pairing(0, Q(7, 12)) - j.beta_pairing(0, Q(3, 4))
        self.assertNotEqual(correct, wrong)
        self.assertEqual(wrong, 2*correct)

    def test_wrong_sturm_parameter_detected(self):
        p = j.jacobi(5)
        wrong = j.add(j.multiply([0, 1, -1], j.derivative(j.derivative(p))),
                      j.multiply([1, -2], j.derivative(p)))
        wrong = j.add(wrong, j.scale(p, 30))
        self.assertNotEqual(wrong, [Q(0)])

    def test_invalid_inputs(self):
        for value in (True, -1, Q(2), 2.0, 513):
            with self.assertRaises((TypeError, ValueError)):
                j.jacobi(value)
        for value in (0, -1, True, 0.5):
            with self.assertRaises((TypeError, ValueError)):
                j.beta_pairing(3, value)
        with self.assertRaises(ValueError):
            j.weighted_square([Q(1)], -1)
        with self.assertRaises(ValueError):
            j.critical_record(512)

    def test_changed_reference_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            path = Path(d)/'reference.json'
            path.write_text('{}')
            with self.assertRaisesRegex(ValueError, 'hash mismatch'):
                j.reference_check(path)

    def test_cli_has_no_target_acceptance(self):
        cmd = [sys.executable, '-B', str(Path(j.__file__).resolve()), '--degree', '8']
        run = subprocess.run(cmd, text=True, capture_output=True, check=True)
        record = json.loads(run.stdout)
        self.assertIs(record['target_uniform_weighted_sum_proved'], False)
        self.assertEqual(record['lean_replay'], 'NOT_RUN')
        self.assertIs(record['critical_control']['uniform_energy_bound'], False)

    def test_cli_invalid_degree_rejected(self):
        cmd = [sys.executable, '-B', str(Path(j.__file__).resolve()), '--degree', '-1']
        run = subprocess.run(cmd, text=True, capture_output=True)
        self.assertNotEqual(run.returncode, 0)
        self.assertIn('degree', run.stderr)


if __name__ == '__main__':
    unittest.main()
