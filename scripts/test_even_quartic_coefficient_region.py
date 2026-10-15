#!/usr/bin/env python3
"""Exact algebra read from the STAGED candidate, finite interval/source checks.

The tiny expression reader supports only arithmetic in this one definition.
It is not a Lean parser, elaborator, tactic replay, or axiom checker.
"""
from __future__ import annotations
import ast
from fractions import Fraction as Q
from hashlib import sha256
from itertools import combinations, product
from pathlib import Path
import re
import unittest
import sympy as S
import reflected_zeta_cover as base
import source_hermite_bridge as source
import even_quartic_coefficient_region as region

PATCH = Path(__file__).resolve().parents[1]/'evidence/algebra/polynomial/quartic/quartic-enclosure-candidates-20261014.patch'
FORM_PATH = 'GRWTSK/LinearAlgebra/QuadraticForm/QuarticHermite.lean'
FORM_SHA = '11ad31c7e14d9084887e892d5ec8a798f3e936e68cc30c14600afe78bb835a91'
p, r = S.symbols('p r', real=True)
u = S.symbols('u0:4', real=True)
G = p*p-4*r
H = S.Matrix([[4,0,-2*p,0],[0,-2*p,0,2*p*p-4*r],
              [-2*p,0,2*p*p-4*r,0],[0,2*p*p-4*r,0,-2*p**3+6*p*r]])


def read_full_addition(patch: str, name: str) -> str:
    selected = False
    data = []
    for line in patch.splitlines():
        if line.startswith('diff --git '):
            selected = line == f'diff --git a/{name} b/{name}'
        elif selected and line.startswith('+') and not line.startswith('+++ '):
            data.append(line[1:])
    if not data:
        raise ValueError('missing complete added source')
    return '\n'.join(data)+'\n'


def arithmetic(text: str, names: dict):
    """Fail closed outside exact arithmetic; no Python eval/exec."""
    def visit(node):
        if isinstance(node, ast.Expression): return visit(node.body)
        if isinstance(node, ast.Constant) and type(node.value) is int: return S.Integer(node.value)
        if isinstance(node, ast.Name) and node.id in names: return names[node.id]
        if isinstance(node, ast.UnaryOp) and isinstance(node.op, ast.USub): return -visit(node.operand)
        if isinstance(node, ast.BinOp):
            a,b=visit(node.left),visit(node.right)
            if isinstance(node.op,ast.Add):return a+b
            if isinstance(node.op,ast.Sub):return a-b
            if isinstance(node.op,ast.Mult):return a*b
            if isinstance(node.op,ast.Div) and b.is_number and b != 0:return a/b
            if isinstance(node.op,ast.Pow) and b.is_Integer and 0 <= b <= 10:return a**b
        raise ValueError('unsupported source arithmetic')
    return visit(ast.parse(' '.join(text.split()).replace('^','**'),mode='eval'))


def source_form():
    code=read_full_addition(PATCH.read_text(),FORM_PATH)
    if sha256(code.encode()).hexdigest()!=FORM_SHA:raise ValueError('staged candidate bytes changed')
    match=re.search(r'def value \(p r u0 u1 u2 u3 : ℝ\) : ℝ :=(.*?)\n\ndef Nonnegative',code,re.S)
    if match is None:raise ValueError('unsupported definition boundary')
    return arithmetic(match.group(1),dict(zip(('p','r','u0','u1','u2','u3'),(p,r,*u))))


class ExactSourceAlgebra(unittest.TestCase):
    def zero(self,value):self.assertEqual(S.expand(value),0)
    def test_literal_form_matches_hankel_matrix(self):
        vec=S.Matrix(u);self.zero(source_form()-(vec.T*H*vec)[0])
    def test_denominator_free_completion(self):
        v=source_form();a=-2*p;b=2*p*p-4*r
        rhs=-8*p*(u[0]-p*u[2]/2)**2-2*p*G*u[2]**2+(a*u[1]+b*u[3])**2+4*r*G*u[3]**2
        self.zero(a*v-rhs)
    def test_even_block_determinant(self):self.zero(H.extract([0,2],[0,2]).det()-4*G)
    def test_odd_block_determinant(self):self.zero(H.extract([1,3],[1,3]).det()-4*r*G)
    def test_zero_coefficient_branch(self):self.zero(source_form().subs({p:0,r:0})-4*u[0]**2)
    def test_coefficient_region_49_rational_pairs(self):
        vals=[S.Rational(-2),S.Rational(-1),S.Rational(-1,4),S.Integer(0),S.Rational(1,4),S.Integer(1),S.Integer(2)]
        for a,b in product(vals,repeat=2):
            mat=H.subs({p:a,r:b})
            psd=all(mat.extract(ix,ix).det()>=0 for k in range(1,5) for ix in combinations(range(4),k))
            self.assertEqual(bool(psd),bool(a<=0 and b>=0 and a*a-4*b>=0))
    def test_r_constraint_cannot_be_omitted(self):
        mat=H.subs({p:-1,r:-1})
        self.assertGreater(G.subs({p:-1,r:-1}),0)
        self.assertLess(mat.extract([1,3],[1,3]).det(),0)
    def test_expression_reader_rejects_nonarithmetic(self):
        for expr in ('f(p)','p.real','p / r','True','p ** -1'):
            with self.assertRaises(ValueError):arithmetic(expr,{'p':p,'r':r})


class IntervalControls(unittest.TestCase):
    def test_squared_interval_contains_zero(self):
        a=region.square_interval(base.Interval(Q(-2),Q(3)))
        self.assertEqual((a.lo,a.hi),(0,9))
    def test_outward_rounding(self):
        a=base.Interval(Q(-2,3),Q(5,7));out=a.rounded(64)
        self.assertLessEqual(out.lo,a.lo);self.assertGreaterEqual(out.hi,a.hi)
    def test_strict_interior(self):
        out=region.coefficient_region(base.Interval.point(-5),base.Interval.point(4))
        self.assertTrue(out['strict_coefficient_region_certified'])
    def test_axis_semidefinite_not_positive(self):
        out=region.coefficient_region(base.Interval.point(-8),base.Interval.point(16))
        self.assertTrue(out['coefficient_region_certified']);self.assertFalse(out['strict_coefficient_region_certified'])
    def test_zero_polynomial_coefficients(self):
        out=region.coefficient_region(base.Interval.point(0),base.Interval.point(0))
        self.assertTrue(out['coefficient_region_certified']);self.assertFalse(out['strict_coefficient_region_certified'])
    def test_uncertainty_not_improperly_projected(self):
        out=region.coefficient_region(base.Interval(Q(-8),Q(-8)),base.Interval(Q(16),Q(16)+Q(1,100000)))
        self.assertFalse(out['coefficient_region_certified'])
    def test_type_rejection(self):
        with self.assertRaises(TypeError):region.coefficient_region(-5,4)


class ActualSource(unittest.TestCase):
    @classmethod
    def setUpClass(cls):cls.result=region.demo()
    def test_all_three_source_regions(self):
        self.assertEqual(len(self.result['divisors']),3)
        for row in self.result['divisors']:
            self.assertTrue(row['scalar_consumer']['strict_coefficient_region_certified'])
            self.assertLess(Q(row['scalar_consumer']['p']['hi']),0)
            self.assertGreater(Q(row['scalar_consumer']['r']['lo']),0)
            self.assertGreater(Q(row['scalar_consumer']['gap']['lo']),0)
    def test_distinct_divisor_not_orbit(self):
        for row in self.result['divisors']:
            self.assertIn('NOT',row['family'])
            self.assertGreater(Q(row['moment_gap']['lo']),0)
    def test_grade_and_scope_preserved(self):
        for field in ('all_height_claim','new_region_claim','single_orbit_positivity_claim','native_lean_admission'):
            self.assertIs(self.result[field],False)
        for row in self.result['divisors']:
            self.assertIs(row['scalar_consumer']['actual_zeta_source_identified_by_this_function'],False)

if __name__ == '__main__':unittest.main()
