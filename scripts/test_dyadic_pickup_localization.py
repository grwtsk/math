#!/usr/bin/env python3
"""Finite rational controls; not an infinite-range or Lean acceptance receipt.

Human mathematical direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT. MIT.
"""
from __future__ import annotations

from fractions import Fraction as Q
import itertools
import json
from pathlib import Path
import subprocess
import sys
import unittest

import dyadic_pickup_localization as d
from one_third_energy import Interval as I, finite_energy, moebius_coefficients, sixth_root


def interval(record: dict, key: str) -> I:
    v = record['intervals'][key]
    return I(Q(v['lower']), Q(v['upper']))


def trial_mu(n: int) -> int:
    out, p = 1, 2
    while p * p <= n:
        if n % p == 0:
            n //= p
            out = -out
            if n % p == 0:
                return 0
        p += 1
    return -out if n > 1 else out


def filter_values(values: list[Q], a: Q, q: Q) -> list[Q]:
    return [x - ((1 + a) * q * values[k - 1] if k else 0)
            + (a * q * q * values[k - 2] if k > 1 else 0)
            for k, x in enumerate(values)]


def inverse_values(values: list[Q], a: Q, q: Q) -> list[Q]:
    c = [sum((a ** j for j in range(k + 1)), Q(0)) * q ** k
         for k in range(len(values))]
    return [sum((c[j] * values[k - j] for j in range(k + 1)), Q(0))
            for k in range(len(values))]


class LocalizationTests(unittest.TestCase):
    def test_exact_rational_gain_certificates(self):
        self.assertGreater(Q(127, 160) ** 3, Q(1, 2))
        self.assertGreater(Q(9, 16) ** 6, Q(1, 32))
        self.assertLess(2560 ** 2, 123 * 231 ** 2)
        self.assertLess(Q(2025, 256), 8)
        self.assertLess(Q(7, 5) ** 2, 2)
        self.assertLess(16, 27)

    def test_actual_gain_enclosures(self):
        c = d.stability_constants(64)
        self.assertGreater(c['inverse_squared_gain'].lo, 122)
        self.assertLess(c['inverse_squared_gain'].hi, 123)
        self.assertLess(c['forward_squared_gain'].hi, 8)
        self.assertGreater(c['single_atom_mass'].lo, Q(1, 10))
        self.assertLess(c['diagonal_budget'].hi, Q(9, 10))

    def test_exact_causal_inverse_all_signs(self):
        for a, q in ((Q(1, 2), Q(2, 3)), (Q(2, 3), Q(3, 4)), (Q(0), Q(1, 2))):
            for row in itertools.product((-1, 0, 1), repeat=5):
                f = list(map(Q, row))
                self.assertEqual(inverse_values(filter_values(f, a, q), a, q), f)

    def test_exact_discrete_norm_bounds(self):
        for a, q in ((Q(1, 2), Q(2, 3)), (Q(2, 3), Q(3, 4))):
            inv = 1 / ((1 - q) * (1 - a * q)) ** 2
            fwd = ((1 + q) * (1 + a * q)) ** 2
            for row in itertools.product((-1, 0, 1), repeat=4):
                f = list(map(Q, row)); g = filter_values(f, a, q)
                H, G = sum(x*x for x in f), sum(x*x for x in g)
                self.assertLessEqual(H, inv * G)
                self.assertLessEqual(G, fwd * H)

    def test_inverse_geometric_mass(self):
        for a in (Q(0), Q(1, 2), Q(3, 4)):
            for q in (Q(1, 3), Q(2, 3), Q(9, 10)):
                R = 1 / ((1-q)*(1-a*q))
                partial = Q(0)
                for k in range(30):
                    partial += sum((a**j for j in range(k+1)), Q(0))*q**k
                    self.assertLessEqual(partial, R)

    def test_zero_damping_inverse_mass_diverges(self):
        # At q=1, c_k>=1. This finite algebra diagnoses the failed l1 allowance.
        a = Q(1, 2)
        for N in (2, 8, 32):
            self.assertGreaterEqual(sum(sum(a**j for j in range(k+1)) for k in range(N)), N)

    def test_actual_radical_annihilation(self):
        # Independent arithmetic in Q[s]/(s^2-2); a=s/2, sqrt(2)=s.
        add = lambda x,y: (x[0]+y[0], x[1]+y[1])
        mul = lambda x,y: (x[0]*y[0]+2*x[1]*y[1], x[0]*y[1]+x[1]*y[0])
        a, s, one = (Q(0),Q(1,2)), (Q(0),Q(1)), (Q(1),Q(0))
        self.assertEqual(add(add(one,(-1,-Q(1,2))),a),(0,0))
        neg = lambda x: (-x[0],-x[1])
        self.assertEqual(add(add(one,neg(mul(add(one,a),s))),mul((2,0),a)),(0,0))

    def test_atom_support_and_touching(self):
        for n in (1,2,3,7):
            for x in (Q(n,2),Q(n),Q(4*n),Q(4*n+1)):
                self.assertEqual(d.localized_atom(n,x),I.point(0))
            self.assertGreater(d.localized_atom(n,2*n).lo,0)

    def test_branch_agreement_at_double_atom(self):
        root2=sixth_root(Q(2))**3
        for n in (1,2,5):
            invn=sixth_root(Q(n))**-3; invx=sixth_root(Q(2*n))**-3
            left=2*(invn-invx); right=2*(root2*invx-invn/root2)
            self.assertTrue(left.overlaps(right))

    def test_startup_is_retained(self):
        r=d.reconstruction_at(Q(3,2))
        self.assertGreater(r['localized_reading'].lo,0)
        self.assertTrue(r['literal_pickup'].overlaps(r['localized_reading']))

    def test_locality_does_not_delete_global_carry(self):
        mu=moebius_coefficients(16); changed=mu.copy(); changed[1]=0
        first=d.reconstruction_at(16,coefficients=mu)
        second=d.reconstruction_at(16,coefficients=changed)
        self.assertEqual(first['localized_reading'],second['localized_reading'])
        self.assertFalse(first['literal_pickup'].overlaps(second['literal_pickup']))
        self.assertTrue(first['inverse_identity_residual'].contains_zero())
        self.assertTrue(second['inverse_identity_residual'].contains_zero())

    def test_local_and_inverse_all_signed_sources(self):
        for row in itertools.product((-1,0,1),repeat=4):
            for x in (Q(4),Q(9,2)):
                r=d.reconstruction_at(x,coefficients=[0,*row])
                self.assertTrue(r['local_identity_residual'].contains_zero())
                self.assertTrue(r['inverse_identity_residual'].contains_zero())

    def test_mobius_sieve_independent_trial_division(self):
        mu=moebius_coefficients(512)
        for n in range(1,513): self.assertEqual(mu[n],trial_mu(n))

    def test_original_energy_and_finite_bounds(self):
        for x in (Q(1),Q(3,2),Q(2),Q(7,2),Q(4),Q(17,2),Q(16),Q(64)):
            r=d.localized_energy(x)
            self.assertTrue(all(r['consistency'].values()))
            self.assertTrue(interval(r,'pickup_energy').overlaps(finite_energy(x)['energy_cells']))
            for key in ('inverse_bound_slack','forward_bound_slack','diagonal_bound_slack'):
                self.assertGreaterEqual(interval(r,key).hi,0)

    def test_full_ordered_gram_signed_sources(self):
        for row in itertools.product((-1,0,1),repeat=3):
            r=d.localized_energy(Q(7,2),coefficients=[0,*row],pair_check=True)
            self.assertTrue(r['consistency']['ordered_gram_identity_residual'])

    def test_full_ordered_gram_actual_source(self):
        for x in (Q(4),Q(17,2),Q(16)):
            r=d.localized_energy(x,pair_check=True)
            self.assertTrue(r['consistency']['ordered_gram_identity_residual'])

    def test_gram_is_symmetric_and_local(self):
        for m,n in ((1,2),(2,3),(1,4),(2,9),(3,12)):
            self.assertEqual(d.atom_gram(m,n,64),d.atom_gram(n,m,64))
            if max(m,n)>=4*min(m,n): self.assertEqual(d.atom_gram(m,n,64),I.point(0))
        self.assertGreater(d.atom_gram(1,3,64).lo,0)

    def test_atom_scaling_and_full_support(self):
        c=d.atom_gram(1,1,4)
        for n in range(1,17):
            value=d.atom_gram(n,n,4*n)
            scaled=c*sixth_root(Q(n))**-10
            self.assertTrue(value.overlaps(scaled))
            self.assertEqual(value,d.atom_gram(n,n,8*n))

    def test_finite_horizon_not_full_atom_mass(self):
        self.assertEqual(d.atom_gram(1,1,1),I.point(0))
        self.assertLess(d.atom_gram(1,1,2).hi,d.atom_gram(1,1,4).lo)

    def test_missing_ordered_factor_detected(self):
        r=d.localized_energy(Q(7,2),coefficients=[0,1,-1,1],pair_check=True)
        self.assertFalse(interval(r,'localized_cross').contains_zero())
        wrong=interval(r,'localized_diagonal')+interval(r,'localized_cross')/2
        self.assertFalse(wrong.overlaps(interval(r,'localized_energy')))

    def test_wrong_second_filter_root_leaks_old_atom(self):
        coeff=[Q(0),Q(1)]+[Q(0)]*7; x=Q(8); wrong=Q(1,2)
        z=d._pickup_at(x,coeff,64)-(1+wrong)*d._pickup_at(x/2,coeff,64)+wrong*d._pickup_at(x/4,coeff,64)
        self.assertFalse(z.contains_zero())
        self.assertEqual(d.localized_atom(1,x),I.point(0))

    def test_actual_mobius_cross_is_not_always_nonpositive(self):
        r=d.localized_energy(Q(17,2),pair_check=True)
        self.assertGreater(interval(r,'localized_cross').lo,Q(1,200))
        self.assertTrue(r['consistency']['ordered_gram_identity_residual'])

    def test_changed_mobius_sign_detected(self):
        mu=moebius_coefficients(16); other=mu.copy(); other[6]=-other[6]
        p=d.reconstruction_at(16,coefficients=mu)['localized_reading']
        q=d.reconstruction_at(16,coefficients=other)['localized_reading']
        self.assertFalse(p.overlaps(q))

    def test_constant_source_survives_localization(self):
        # Written lower bound: D_1(x)>=sqrt(x)/32 for x>=8.
        for n in (8,16,64):
            r=d.reconstruction_at(n,coefficients=[0]+[1]*n)
            lower=sixth_root(Q(n))**3/32
            self.assertGreater(r['localized_reading'].lo,lower.hi)

    def test_reject_invalid_source_and_parameters(self):
        for x in (0,Q(1,2),True,1.5):
            with self.assertRaises((TypeError,ValueError)): d.localized_energy(x)
        for values in ([0,1],[0,1,1,1],[1,1,1],[0,True,1],[0,1.0,1],[0,2,1]):
            with self.assertRaises((TypeError,ValueError)): d.localized_energy(2,coefficients=values)
        for bits in (1,513,True,Q(64)):
            with self.assertRaises(ValueError): d.localized_energy(1,bits)
        with self.assertRaises(TypeError): d.localized_energy(2,pair_check=1)
        for n in (0,-1,True):
            with self.assertRaises(ValueError): d.atom_gram(n,1,4)

    def test_cli_and_optimized_validation(self):
        script=str(Path(d.__file__))
        r=subprocess.run([sys.executable,'-B',script,'--cutoff','7/2','--pair-check'],capture_output=True,text=True)
        self.assertEqual(r.returncode,0,r.stderr)
        data=json.loads(r.stdout)
        self.assertFalse(data['uniform_localized_energy_proved'])
        self.assertEqual(data['lean_replay'],'NOT_RUN')
        bad=subprocess.run([sys.executable,'-O','-B',script,'--cutoff','0'],capture_output=True,text=True)
        self.assertEqual(bad.returncode,2)
        self.assertIn('physical cutoff',bad.stderr)


if __name__=='__main__':
    unittest.main()
