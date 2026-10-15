"""Exact algebra and cost tests, not numerical Weil integrals or Lean checks."""
from pathlib import Path
import sys
import unittest
import subprocess
import tempfile
import re
from fractions import Fraction as Q
import sympy as s
ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
import gaussian_weil_compactification as c
from finite_hermite_isolation import Gaussian as G, I, ONE, ZERO, isolate, evaluate, mul, add

x, t = s.symbols('x t', real=True)


def sx(a):
    return s.Rational(a.numerator, a.denominator)


def sp(p):
    return sum((sx(a.re) + s.I * sx(a.im)) * x**k for k, a in enumerate(p))


class Algebra(unittest.TestCase):
    def test_fourier_multiplier_recurrence(self):
        for L in (1, 3):
            for t0 in (Q(0), Q(2, 3)):
                env = s.exp(-s.I*sx(t0)*x - x*x/(4*L))
                for d in range(6):
                    p = (ZERO,)*d+(ONE,)
                    actual = sp(c.inverse_amplitude(p,t0,L))
                    expected = s.expand(s.simplify(s.I**d*s.diff(env,x,d)/env))
                    self.assertEqual(s.expand(actual-expected),0)

    def test_derivative_amplitudes(self):
        p = (G(2),G(-3),G(1))
        for L in (1, 7):
            env=s.exp(-2*s.I*x-x*x/(4*L)); a=c.inverse_amplitude(p,Q(2),L)
            for j in range(3):
                b=c.physical_derivative_amplitude(a,Q(2),L)
                self.assertEqual(s.simplify(s.diff(env*sp(a),x)-env*sp(b)),0)
                a=b

    def test_inverse_constant_not_one(self):
        # At P=1, t=0, inverse Fourier density is NOT exp(-x²/(4L)).
        integral=s.integrate(s.exp(-x*x/4),(x,-s.oo,s.oo))
        self.assertEqual(integral,2*s.sqrt(s.pi))
        self.assertEqual(s.simplify(integral/(2*s.sqrt(s.pi))),1)
        self.assertNotEqual(integral,1)

    def test_hermitian_physical_amplitude(self):
        p=(G(1),G(-3,0),G(2))
        a=c.inverse_amplitude(p,Q(2,3),5)
        self.assertEqual(s.expand(s.conjugate(sp(a).subs(x,-x))-sp(a)),0)

    def test_gaussian_tail_recurrence(self):
        for L in (1,4):
            for R in (Q(2),Q(17,3)):
                self.assertEqual(c.gaussian_tail_coefficient(0,R,L),4*L/R)
                self.assertEqual(c.gaussian_tail_coefficient(1,R,L),4*L)
                for k in range(2,9):
                    v=c.gaussian_tail_coefficient(k,R,L)
                    self.assertEqual(v,4*L*R**(k-1)+4*L*(k-1)*c.gaussian_tail_coefficient(k-2,R,L))

    def test_tail_integral_identity_symbolic(self):
        R,L=s.symbols('R L',positive=True)
        for k in range(1,7):
            # Integration-by-parts integrand identity, no quadrature.
            f=-4*L*x**(k-1)*s.exp(-x*x/(8*L))
            self.assertEqual(s.simplify(s.diff(f,x)-x**k*s.exp(-x*x/(8*L))+4*L*(k-1)*x**(k-2)*s.exp(-x*x/(8*L))),0)

    def test_cutoff_derivative_expansion(self):
        y=s.symbols('y',real=True); h=s.Function('h')(x)
        got=s.diff(s.exp(-y*x)*h,x,2)/s.exp(-y*x)
        self.assertEqual(s.simplify(got-(s.diff(h,x,2)-2*y*s.diff(h,x)+y*y*h)),0)

    def test_square_difference_identity(self):
        z,w=s.symbols('z w')
        self.assertEqual(s.expand(z*z-w*w-(z-w)*(z+w)),0)

    def test_cutoff_does_not_preserve_pole_vanish_by_algebra(self):
        # Adding a small allowed transform error can destroy an exact pole value.
        z=s.symbols('z'); p=z*z+s.Rational(1,4)
        self.assertEqual(p.subs(z,s.I/2),0)
        self.assertEqual((p+s.Rational(1,100)).subs(z,s.I/2),s.Rational(1,100))

    def test_square_is_not_modulus(self):
        self.assertEqual((I**2).re,-1)
        self.assertEqual((I*I.conj()).re,1)


class Bounds(unittest.TestCase):
    def setUp(self):
        self.points=[G(0,Q(1,4)),G(0,-Q(1,4)),G(-1),G(0),G(1)]
        self.p=isolate(self.points,self.points[0])

    def test_dyadic_exponential_majorant(self):
        for a in (Q(0),Q(1,3),Q(2),Q(51,2)):
            self.assertEqual(c.exp_negative_upper(a),Q(1,2**(a.numerator//a.denominator)))

    def test_positive_absolute_majorant(self):
        r=c.shifted_absolute_majorant(self.p,Q(2),Q(1,2))
        self.assertTrue(all(a>=0 for a in r))
        self.assertGreater(c.factorial_bound(r),0)

    def test_base_weighted_bound(self):
        self.assertGreater(c.base_weighted_square_bound(self.p,Q(0)),0)

    def test_polynomial_dependency_changes_budget(self):
        a=c.base_weighted_square_bound(self.p,Q(0))
        b=c.base_weighted_square_bound(tuple(3*x for x in self.p),Q(0))
        self.assertEqual(b,9*a)

    def test_weighted_error_budget_complete(self):
        a=c.cutoff_error(self.p,Q(0),34,Q(136))
        b=[Q(x) for x in a['derivative_tails']]
        expected=b[2]+(72/Q(136)+1)*b[1]+(1+144/Q(136)**2+36/Q(136)+Q(1,4))*b[0]
        self.assertEqual(Q(a['delta']),expected)
        self.assertGreater(Q(a['delta']),b[0])

    def test_convergence_dyadic_R(self):
        vals=[Q(c.cutoff_error(self.p,Q(0),34,Q(r))['delta']) for r in (136,272,544)]
        self.assertTrue(vals[0]>vals[1]>vals[2]>0)

    def test_schedule_two_paid_errors(self):
        a=c.choose_schedule(self.p,Q(0),Q(2),Q(32))
        self.assertLessEqual(Q(a['gaussian_tail_upper']),Q(1,2))
        self.assertLessEqual(Q(a['signed_trace_change_upper']),Q(1,2))
        self.assertLessEqual(Q(a['final_signed_trace_upper']),-1)

    def test_multiplicity_not_unit_weight(self):
        p=isolate(self.points*3,self.points[0]); a=c.choose_schedule(p,Q(0),Q(6),Q(32))
        self.assertEqual(a['pair_mass'],'6')
        self.assertEqual(a['guaranteed_negative_margin'],'3')

    def test_weighted_count_27(self):
        # Finite geometric envelope is <= its proved infinite total 27 C.
        for N in range(1,32):
            self.assertLessEqual(3+6*sum((Q(3,4)**j for j in range(N)),Q(0)),27)

    def test_weak_uniform_error_cannot_control_infinite_lattice(self):
        # A constant pointwise error creates an unbounded sum; decay weight needed.
        for N in (10,100,1000):
            self.assertEqual(sum((Q(1,10) for _ in range(N)),Q(0)),Q(N,10))

    def test_gaussian_pointwise_separation(self):
        for u in (Q(1),Q(3,2),Q(3)):
            for b in (Q(0),Q(1,4),Q(1,2)):
                for y in (-Q(1,2),Q(0),Q(1,2)):
                    self.assertGreaterEqual(u*u+b*b-y*y,Q(3,4))

    def test_near_window_must_be_killed(self):
        self.assertLess(Q(0)**2+Q(1,4)**2-Q(1,2)**2,0)

    def test_half_strip_required(self):
        self.assertLess(Q(1)**2+Q(1,4)**2-Q(2)**2,0)


class Hostile(unittest.TestCase):
    def test_inexact_input_rejected(self):
        for v in (True,1.0,'1',None):
            with self.assertRaises((ValueError,TypeError)):
                c.exact(v)

    def test_onset_required(self):
        with self.assertRaises(ValueError): c.weighted_derivative_tails((ONE,),Q(0),10,Q(39))

    def test_complex_P_rejected(self):
        with self.assertRaises(ValueError): c.inverse_amplitude((I,),Q(0),1)

    def test_zero_P_rejected(self):
        with self.assertRaises(ValueError): c.inverse_amplitude((),Q(0),1)

    def test_invalid_width(self):
        for v in (0,-1,True,1.5):
            with self.assertRaises(ValueError): c.inverse_amplitude((ONE,),Q(0),v)

    def test_negative_exponent_rejected(self):
        with self.assertRaises(ValueError): c.exp_negative_upper(Q(-1))

    def test_exponent_resource_limit(self):
        with self.assertRaises(ValueError): c.exp_negative_upper(Q(1000001))

    def test_negative_mass_or_count(self):
        for M,C in ((0,1),(1,0),(-1,1),(1,-1)):
            with self.assertRaises(ValueError): c.choose_schedule((ONE,),Q(0),Q(M),Q(C))

    def test_invalid_step_limit(self):
        with self.assertRaises(ValueError): c.choose_schedule((ONE,),Q(0),Q(1),Q(1),max_steps=0)

    def test_actual_budget_exhaustion(self):
        # Deliberately incompatible selector data tests failure mechanics only.
        with self.assertRaises(RuntimeError):
            c.choose_schedule((ONE,),Q(0),Q(1000),Q(1),max_steps=1)

    def test_output_not_overwritten(self):
        with tempfile.TemporaryDirectory() as d:
            out=Path(d)/'existing.json'; out.write_text('preserve')
            run=subprocess.run([sys.executable,'-B',str(ROOT/'scripts/gaussian_weil_compactification.py'),
                                '--output',str(out)],capture_output=True,text=True,timeout=20)
            self.assertNotEqual(run.returncode,0)
            self.assertEqual(out.read_text(),'preserve')

    def test_candidate_inventory_is_not_native(self):
        root=ROOT/'evidence/analysis/fourier/gaussian-compactification-20261015'
        files=sorted((root/'candidates').glob('*.lean.txt'))
        self.assertEqual(len(files),2)
        names=[]
        for f in files:
            text=f.read_text(); self.assertIn('CANDIDATE_SOURCE_ONLY',text)
            code=re.sub(r'/\-.*?\-/', '', text, flags=re.S)
            self.assertNotRegex(code,r'\b(sorry|admit|axiom|unsafe|partial)\b')
            names+=re.findall(r'(?m)^theorem\s+(\S+)',code)
        self.assertEqual(len(names),5)
        audit=(root/'audit.lean.txt').read_text()
        requests=re.findall(r'(?m)^#print axioms (\S+)',re.sub(r'/\-.*?\-/', '', audit, flags=re.S))
        self.assertEqual(len(requests),5)
        self.assertEqual(sorted(n.split('.')[-1] for n in requests),sorted(names))

    def test_examples_labelled_and_all_values_kept(self):
        a=c.examples()
        self.assertFalse(a['RH']); self.assertFalse(a['native_lean'])
        self.assertFalse(a['source_positive_witness'])
        for row in a['examples']:
            p=tuple(G(Q(x[0]),Q(x[1])) for x in row['selector'])
            r=G(Q(row['target'][0]),Q(row['target'][1]))
            self.assertEqual(evaluate(p,r),I)
            self.assertEqual(evaluate(p,r.conj()),-I)
            for z in [G(r.re-1),G(r.re),G(r.re+1)]:
                self.assertEqual(evaluate(p,z),ZERO)
            self.assertLessEqual(Q(row['schedule']['final_signed_trace_upper']),-Q(row['schedule']['pair_mass'])/2)


if __name__=='__main__': unittest.main()
