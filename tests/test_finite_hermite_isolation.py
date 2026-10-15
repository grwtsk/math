#!/usr/bin/env python3
"""Finite exact and hostile tests. They do not elaborate the Lean candidates."""
from fractions import Fraction as Q
from pathlib import Path
import itertools
import json
import random
import re
import sys
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
import finite_hermite_isolation as f

G=f.Gaussian
BASE=[G(2,Q(1,4)),G(2,-Q(1,4)),G(-2,Q(1,4)),G(-2,-Q(1,4)),G(10),G(-10)]

class IsolationTests(unittest.TestCase):
    def test_arithmetic_inverse(self):
        for x,y in itertools.product(range(-3,4),repeat=2):
            z=G(x,y)
            if z!=f.ZERO:
                self.assertEqual(z*z.inv(),f.ONE)

    def test_conjugation_power(self):
        for z in BASE:
            for n in range(9):
                self.assertEqual((z**n).conj(),z.conj()**n)

    def test_invalid_scalar_types(self):
        for bad in [True,False,1.0,'1','NaN',None]:
            with self.assertRaises(TypeError): G(bad)

    def test_zero_denominator(self):
        with self.assertRaises(ZeroDivisionError): f.ZERO.inv()

    def test_negative_power(self):
        for bad in [-1,True,1.5]:
            with self.assertRaises(ValueError): f.I**bad

    def test_distinct_basis_values(self):
        for x in BASE:
            p=f.basis(BASE,x)
            self.assertEqual(len(p)-1,len(BASE)-1)
            for y in BASE:
                self.assertEqual(f.evaluate(p,y),f.ONE if x==y else f.ZERO)

    def test_duplicate_basis_rejected(self):
        with self.assertRaises(ValueError): f.basis(BASE+[BASE[0]],BASE[0])

    def test_divisor_retains_multiplicity(self):
        ds=f.divisor(BASE+[BASE[0],BASE[1]]*2)
        self.assertEqual(ds[BASE[0]],3)
        self.assertEqual(sum(ds.values()),10)

    def test_unequal_conjugate_multiplicity_rejected(self):
        with self.assertRaises(ValueError): f.divisor(BASE+[BASE[0]])

    def test_missing_conjugate_rejected(self):
        with self.assertRaises(ValueError): f.divisor(BASE[1:])

    def test_empty_and_resource_profile(self):
        for points in [[],[f.ZERO]*129,[G(k) for k in range(33)]]:
            with self.assertRaises(ValueError): f.divisor(points)

    def test_pair_polynomial_is_real(self):
        for eta in [f.I,f.ONE+f.I,G(Q(2,3),Q(4,5))]:
            p=f.isolate(BASE,BASE[0],eta)
            self.assertTrue(all(z.im==0 for z in p))
            self.assertLess(len(p)-1,len(BASE))

    def test_all_other_nodes_annihilated(self):
        p=f.isolate(BASE,BASE[0])
        for z in BASE[2:]: self.assertEqual(f.evaluate(p,z),f.ZERO)

    def test_real_and_absent_targets_rejected(self):
        for z in [G(10),G(7,2)]:
            with self.assertRaises(ValueError): f.isolate(BASE,z)

    def test_exact_negative_square(self):
        p=f.isolate(BASE,BASE[0])
        self.assertEqual(f.trace(BASE,p),-2)
        self.assertEqual(f.trace(BASE+[BASE[0],BASE[1]]*2,p),-6)

    def test_exact_negative_fourth(self):
        p=f.isolate(BASE,BASE[0],f.ONE+f.I)
        self.assertEqual(f.trace(BASE,p,4),-8)
        self.assertEqual(f.trace(BASE+[BASE[0],BASE[1]]*2,p,4),-24)

    def test_old_test_fourth_power_is_positive(self):
        p=f.isolate(BASE,BASE[0],f.I)
        self.assertEqual(f.trace(BASE,p,4),2)

    def test_modulus_replacement_wrong_sign(self):
        p=f.isolate(BASE,BASE[0])
        squares=sum((f.evaluate(p,z).re**2+f.evaluate(p,z).im**2 for z in BASE),Q(0))
        self.assertEqual(squares,2)
        self.assertEqual(f.trace(BASE,p,2),-2)

    def test_fixed_quadratic_contamination(self):
        p=(G(Q(1,16)-4),f.ZERO,f.ONE)
        self.assertLess(f.trace(BASE[:4],p),0)
        self.assertGreater(f.trace(BASE,p),0)
        self.assertLess(f.trace(BASE,f.isolate(BASE,BASE[0])),0)

    def test_complete_moment_contraction(self):
        for d in (2,4):
            p=f.isolate(BASE,BASE[0],f.I if d==2 else f.ONE+f.I)
            m=f.moments(BASE,d*(len(p)-1))
            self.assertEqual(f.from_moments(p,d,m),f.trace(BASE,p,d))
            with self.assertRaises(ValueError): f.from_moments(p,d,m[:-1])

    def test_uniform_moment_bound(self):
        for d in (2,4):
            p=f.isolate(BASE,BASE[0],f.I if d==2 else f.ONE+f.I)
            eps=Q(1,2**30)
            e=f.moment_error(p,d,[eps]*(d*(len(p)-1)+1))
            self.assertLessEqual(e,eps*f.coefficient_mass(p)**d)

    def test_nonuniform_moment_bound(self):
        rng=random.Random(31015)
        for d in (2,4):
            p=f.isolate(BASE,BASE[0],f.I if d==2 else f.ONE+f.I)
            m=f.moments(BASE,d*(len(p)-1))
            errs=[Q(rng.randrange(5),10000000) for _ in m]
            altered=[x+e*(-1 if k%2 else 1) for k,(x,e) in enumerate(zip(m,errs))]
            diff=abs(f.from_moments(p,d,m)-f.from_moments(p,d,altered))
            self.assertLessEqual(diff,f.moment_error(p,d,errs))

    def test_error_input_rejected(self):
        p=f.isolate(BASE,BASE[0])
        for errs in [[],[Q(-1)]*11,[True]*11,[1.0]*11]:
            with self.assertRaises((ValueError,TypeError)): f.moment_error(p,2,errs)

    def test_coefficient_factor_cannot_be_dropped(self):
        p=(G(1000),)
        self.assertEqual(f.moment_error(p,2,[Q(1,100)]),10000)
        self.assertGreater(f.moment_error(p,2,[Q(1,100)]),Q(1,100))

    def test_strictness_boundary(self):
        p=f.isolate([f.I,-f.I],f.I)
        m=f.moments([f.I,-f.I],2)
        self.assertEqual(f.from_moments(p,2,m)+f.moment_error(p,2,[0,0,2]),0)

    def test_conditioning_cost(self):
        last=Q(0)
        for a in (Q(1,16),Q(1,256),Q(1,4096)):
            points=[G(2,a),G(2,-a),G(0),G(4)]
            p=f.isolate(points,points[0])
            mass=f.coefficient_mass(p)
            self.assertLessEqual(mass,f.conditioning(points,f.I)['coefficient_l1_upper'])
            self.assertGreater(mass,last)
            last=mass

    def test_general_rational_divisors(self):
        rng=random.Random(20261015)
        self.cases=0
        for _ in range(24):
            x=Q(rng.randrange(-4,5),3); y=Q(rng.randrange(1,8),8)
            z=G(x,y)
            points=[z,z.conj()]*rng.randrange(1,4)+[G(-5),G(6)]
            for d in (2,4):
                cert=f.certificate(points,z,d)
                self.assertLess(Q(cert['signed_trace']),0)
                self.assertGreater(Q(cert['strict_negative_margin']),0)
                self.cases+=1
        self.assertEqual(self.cases,48)

    def test_zero_height_repeated_slots(self):
        points=[f.I,-f.I,f.I,-f.I]
        p=f.isolate(points,f.I)
        self.assertEqual(f.trace(points,p),-4)
        self.assertEqual(len(f.divisor(points)),2)

    def test_axis_repetitions_are_weights(self):
        points=[G(2),G(2),G(-2),G(-2)]
        self.assertEqual(f.moments(points,2),(Q(4),Q(0),Q(16)))
        self.assertEqual(f.trace(points,(G(-4),f.ZERO,f.ONE)),0)
        # No analytic zeta multiplicity is inferred from these listed slots.

    def test_all_real_nodes(self):
        nodes=[G(-2),G(-1),G(0),G(1),G(2)]
        for c in itertools.product((-1,0,1),repeat=3):
            p=tuple(G(v) for v in c)
            for k in (2,4): self.assertGreaterEqual(f.trace(nodes,p,k),0)

    def test_sparse_exceptions_are_not_RH(self):
        for n in (20,100,1000):
            # Exact proportion of designated real nodes; the imaginary pair remains.
            self.assertGreaterEqual(Q(n,n+2),1-Q(2,n))
            self.assertNotEqual(f.I.im,0)

    def test_symbolic_lagrange_and_hankel(self):
        import sympy as s
        x=s.symbols('x'); t=s.symbols('t',real=True); a=s.symbols('a',nonzero=True,real=True)
        ell=(x-(t-s.I*a))/(2*s.I*a)
        ellbar=(x-(t+s.I*a))/(-2*s.I*a)
        p=s.expand(s.I*ell-s.I*ellbar)
        self.assertEqual(s.simplify(p-(x-t)/a),0)
        self.assertEqual(s.simplify(p.subs(x,t+s.I*a)**2+p.subs(x,t-s.I*a)**2),-2)
        eta=1+s.I
        p4=s.expand(eta*ell+s.conjugate(eta)*ellbar)
        self.assertEqual(s.simplify(p4.subs(x,t+s.I*a)**4+p4.subs(x,t-s.I*a)**4),-8)
        c=s.symbols('c0:3',real=True); z=s.symbols('z'); q=sum(c[k]*z**k for k in range(3))
        hankel=sum(c[i]*c[j]*z**(i+j) for i in range(3) for j in range(3))
        self.assertEqual(s.expand(hankel-q*q),0)

    def test_candidate_inventory_not_native_acceptance(self):
        root=ROOT/'evidence/algebra/polynomial/finite-hermite-20261015'
        paths=sorted((root/'candidates').glob('*.lean.txt'))
        self.assertEqual(len(paths),4)
        names=[]
        for p in paths:
            text=p.read_text()
            self.assertIn('UNCOMPILED',text)
            self.assertNotRegex(text,r'(?m)^\s*(axiom|opaque|unsafe|partial)\b')
            # Supplementary lexical control only, not an axiom-closure audit.
            self.assertNotRegex(text,r'\b(sorry|admit|sorryAx)\b')
            names.extend(re.findall(r'(?m)^theorem\s+(\S+)',text))
            self.assertNotRegex(text,r'(?m)^def\s+(RiemannHypothesis|riemannZeta)\b')
        self.assertEqual(len(names),len(set(names)))
        self.assertGreaterEqual(len(names),15)

    def test_report_grade_and_reproducibility(self):
        a=f.run(); b=f.run()
        self.assertEqual(a,b)
        self.assertEqual(a['native_Lean'],'NOT_RUN')
        self.assertIs(a['nonclaims']['RH'],False)
        self.assertEqual(len(a['records']),6)
        self.assertTrue(all(r['source_kind'].startswith('synthetic') for r in a['records']))

if __name__=='__main__': unittest.main()
