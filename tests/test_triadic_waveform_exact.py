#!/usr/bin/env python3
"""Exact and hostile controls for the triadic waveform architecture.

These tests check finite algebra and serialization only. They do not elaborate Lean,
construct a C*-crossed product, prove moment determinacy, or imply RH.
"""
from __future__ import annotations

import importlib.util
import json
import tempfile
import unittest
import sys
from fractions import Fraction as Q
from pathlib import Path

MODULE_PATH = Path(__file__).resolve().parents[1] / "scripts" / "triadic_waveform_exact.py"
SPEC = importlib.util.spec_from_file_location("triadic_waveform_exact", MODULE_PATH)
assert SPEC and SPEC.loader
m = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = m
SPEC.loader.exec_module(m)


class PrimitiveAdditiveTests(unittest.TestCase):
    def test_count_is_totient_sum(self) -> None:
        for X in range(0, 80):
            self.assertEqual(m.primitive_count(X), m.totient_count(X))

    def test_triple_is_pairwise_coprime(self) -> None:
        for X in (2, 8, 31, 64):
            for t in m.primitive_triples(X):
                self.assertTrue(m.pairwise_coprime_of_primitive(t))

    def test_nonprimitive_control(self) -> None:
        self.assertIn((2, 4, 6), m.all_triples(6))
        self.assertNotIn((2, 4, 6), m.primitive_triples(6))

    def test_floor_scaling_identity(self) -> None:
        for exponents in ((0, 0, 0), (1, 1, 1), (3, 0, 2)):
            for X in range(0, 35):
                self.assertEqual(
                    m.tornheim_all(X, exponents),
                    m.scaling_reconstruction(X, exponents),
                )

    def test_floor_mobius_identity(self) -> None:
        for exponents in ((0, 0, 0), (1, 2, 0), (2, 2, 1)):
            for X in range(0, 35):
                self.assertEqual(
                    m.tornheim_primitive(X, exponents),
                    m.mobius_reconstruction(X, exponents),
                )

    def test_cutoff_floor_is_essential(self) -> None:
        X = 7
        exponents = (1, 1, 1)
        correct = m.scaling_reconstruction(X, exponents)
        wrong = sum(
            Q(1, d ** sum(exponents)) * m.tornheim_primitive(X, exponents)
            for d in range(1, X // 2 + 1)
        )
        self.assertNotEqual(correct, wrong)


class ChannelAndMomentTests(unittest.TestCase):
    def test_complete_three_channel_energy(self) -> None:
        values = [
            m.GQ(Q(1), Q(2)),
            m.GQ(Q(-3, 2), Q(1, 7)),
            m.GQ(Q(4, 5), Q(-9, 4)),
        ]
        self.assertEqual(m.triadic_energy(*values), m.triadic_energy_expansion(*values))

    def test_cross_terms_cannot_be_deleted(self) -> None:
        x = m.GQ(Q(1), Q(0))
        y = m.GQ(Q(-1), Q(0))
        z = m.ZERO
        diagonal = x.norm_sq() + y.norm_sq() + z.norm_sq()
        self.assertEqual(diagonal, 2)
        self.assertEqual(m.triadic_energy(x, y, z), 0)

    def test_reflection_split(self) -> None:
        x = m.GQ(Q(3, 4), Q(-2, 7))
        y = m.GQ(Q(-5, 6), Q(11, 9))
        self.assertTrue(m.reflection_energy_identity(x, y))

    def test_signed_square_not_modulus_square(self) -> None:
        self.assertEqual((m.I * m.I).re, -1)
        self.assertEqual(m.I.norm_sq(), 1)

    def test_phase_only_loses_amplitude(self) -> None:
        self.assertNotEqual(m.I.norm_sq(), m.I.scale(Q(3)).norm_sq())

    def test_finite_moments_not_determinate(self) -> None:
        for order in range(1, 10):
            measure = m.finite_difference_measure(order)
            self.assertTrue(all(m.signed_moment(measure, k) == 0 for k in range(order)))
            self.assertNotEqual(m.signed_moment(measure, order), 0)

    def test_pairwise_does_not_determine_three_way(self) -> None:
        even = m.parity_distribution(True)
        odd = m.parity_distribution(False)
        for powers in ((1,0,0),(0,1,0),(0,0,1),(1,1,0),(1,0,1),(0,1,1)):
            self.assertEqual(m.distribution_moment(even, powers), m.distribution_moment(odd, powers))
        self.assertEqual(m.distribution_moment(even, (1,1,1)), 1)
        self.assertEqual(m.distribution_moment(odd, (1,1,1)), -1)


class ReflectionAndCountingTests(unittest.TestCase):
    def test_dihedral_relation(self) -> None:
        p = (7, -2, 5)
        for k in range(-10, 11):
            self.assertEqual(
                m.swap_ab(m.difference_translate(m.swap_ab(p), k)),
                m.difference_translate(p, -k),
            )

    def test_full_semidirect_action(self) -> None:
        G = [(0,0,1),(1,2,1),(-4,3,-1),(9,-5,-1)]
        P = [(0,0,0),(1,2,3),(-2,7,5)]
        for g in G:
            for h in G:
                for p in P:
                    self.assertEqual(
                        m.semidirect_action(m.semidirect_mul(g, h), p),
                        m.semidirect_action(g, m.semidirect_action(h, p)),
                    )

    def test_positive_primitive_cone_not_translation_invariant(self) -> None:
        p = (1, 1, 2)
        q = m.full_lattice_translate(p, 1, -1)
        self.assertEqual(q, (2, 0, 2))
        self.assertNotIn(q, m.primitive_triples(2))

    def test_finite_projection_trace(self) -> None:
        for X in (0,1,2,4,8,32,64):
            self.assertEqual(m.projection_trace(X), sum(m.totient(c) for c in range(2, X+1)))

    def test_set_deduplication_loses_repeated_slots(self) -> None:
        slots = [(1,0), (1,0), (-1,0), (-1,0)]
        self.assertEqual(len(slots), 4)
        self.assertEqual(len(set(slots)), 2)


class ProgramBoundaryTests(unittest.TestCase):
    def test_complete_run(self) -> None:
        result = m.run_checks()
        self.assertEqual(result["status"], "passed")
        self.assertEqual(result["check_count"], result["passed_count"])
        self.assertGreater(result["check_count"], 300)
        self.assertFalse(result["nonclaims"]["RH"])

    def test_output_must_be_new(self) -> None:
        with tempfile.TemporaryDirectory() as td:
            path = Path(td) / "out.json"
            path.write_text("{}")
            old_argv = sys.argv
            try:
                sys.argv = [str(MODULE_PATH), "--output", str(path)]
                with self.assertRaises(FileExistsError):
                    m.main()
            finally:
                sys.argv = old_argv

    def test_serialization_roundtrip(self) -> None:
        data = m.run_checks()
        encoded = json.dumps(data, sort_keys=True)
        self.assertEqual(json.loads(encoded)["check_count"], data["check_count"])

    def test_invalid_inputs_rejected(self) -> None:
        with self.assertRaises(ValueError):
            m.mobius(0)
        with self.assertRaises(ValueError):
            m.finite_difference_measure(0)
        with self.assertRaises(ValueError):
            m.semidirect_action((0, 0, 0), (1, 1, 2))
        with self.assertRaises(ValueError):
            m.weight((1,1,2), (-1,0,0))


if __name__ == "__main__":
    unittest.main()
