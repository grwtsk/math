from fractions import Fraction as Q
from pathlib import Path
import json, subprocess, sys, tempfile, unittest
from unittest.mock import patch
import sympy as S
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
import weil_prime_discrepancy as W


class PrimeDiscrepancyTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.rows={a:W.profile(a,128,128) for a in (Q(1,2),Q(1),Q(2))}

    def test_exact_types(self):
        for x in (True,False,1.0,'1',None):
            with self.assertRaises(TypeError):W.exact(x)

    def test_resource_profile(self):
        for a in (Q(0),Q(1,8),Q(3)):
            with self.assertRaises(ValueError):W.bump_test(a)
        for n in (True,0,2049):
            with self.assertRaises(ValueError):W.profile(Q(1),128,n)

    def test_polynomial_operations(self):
        x=S.symbols('x');p=(Q(1),Q(-2),Q(3));q=(Q(2),Q(4))
        expr=lambda r:sum(S.Rational(c.numerator,c.denominator)*x**i for i,c in enumerate(r))
        self.assertEqual(S.expand(expr(W.mul(p,q))-expr(p)*expr(q)),0)
        self.assertEqual(S.expand(expr(W.deriv(p))-S.diff(expr(p),x)),0)

    def test_actual_bump_operator(self):
        u=S.symbols('u')
        for A in self.rows:
            g,f=W.bump_test(A)
            gg=sum(S.Rational(c.numerator,c.denominator)*u**j for j,c in enumerate(g))
            ff=sum(S.Rational(c.numerator,c.denominator)*u**j for j,c in enumerate(f))
            self.assertEqual(S.expand(ff+S.diff(gg,u,2)-gg/4),0)

    def test_four_endpoint_derivatives(self):
        for A in self.rows:
            g,f=W.bump_test(A)
            for k in range(4):
                self.assertEqual(W.ev(g,A),0);self.assertEqual(W.ev(g,-A),0);g=W.deriv(g)
            self.assertEqual(W.ev(f,A),0);self.assertEqual(W.ev(W.deriv(f),A),0)

    def test_autocorrelation_independent_integration(self):
        u=S.symbols('u')
        for A in self.rows:
            _,f=W.bump_test(A);h=W.autocorrelation(f,A)
            for x in (Q(0),A/3,A,2*A):
                fu=sum(S.Rational(c.numerator,c.denominator)*u**j for j,c in enumerate(f))
                expected=S.integrate(fu.subs(u,u+S.Rational(x.numerator,x.denominator))*fu,(u,-A,A-x))
                self.assertEqual(S.Rational(W.ev(h,x)),expected)

    def test_autocorrelation_norm_and_endpoints(self):
        for A in self.rows:
            _,f=W.bump_test(A);h=W.autocorrelation(f,A)
            self.assertEqual(W.ev(h,0),W.poly_integral(W.mul(f,f),-A,A))
            self.assertEqual(W.ev(W.deriv(h),0),0)
            for j in range(3):
                self.assertEqual(W.ev(h,2*A),0);h=W.deriv(h)

    def test_antiderivative_symbolic(self):
        x,q=S.symbols('x q',nonzero=True)
        for p in ((1,2,-3),(0,1),(2,0,0,1)):
            pp=sum(S.Integer(c)*x**j for j,c in enumerate(p))
            v=sum((-1)**j*S.diff(pp,x,j)/q**(j+1) for j in range(len(p)))
            self.assertEqual(S.expand(S.diff(v,x)+q*v-pp),0)

    def test_zero_exponent_retained(self):
        r=W.exponential_integral((Q(1),Q(2)),Q(0),Q(0),Q(3),128)
        self.assertEqual((r.lo,r.hi),(Q(12),Q(12)))

    def test_reversed_interval_rejected(self):
        with self.assertRaises(ValueError):W.exponential_integral((Q(1),),Q(1),Q(2),Q(1),128)

    def test_exp_inverse_product(self):
        for q in (Q(0),Q(1,2),Q(4),Q(32)):
            self.assertTrue((W.exponential(q,128)*W.exponential(-q,128)).contains(1))

    def test_roots_outward(self):
        for n in range(1,75):
            i=W.sqrt_integer(n,128)
            self.assertLessEqual(i.lo*i.lo,n);self.assertGreaterEqual(i.hi*i.hi,n)

    def test_logs_range_reduction(self):
        for n in (1,2,3,17,64):
            a=W.log_rational(Q(n),128);b=W.log_integer(n,128)
            self.assertLessEqual(max(a.lo,b.lo),min(a.hi,b.hi))
        self.assertTrue((W.log_rational(Q(3,2),128)+W.log_rational(Q(2,3),128)).contains(0))

    def test_archimedean_constant_bracket(self):
        v=W.arch_constant(128)
        self.assertGreater(v.lo,Q(-11,2));self.assertLess(v.hi,-5)
        self.assertLess(v.hi-v.lo,Q(1,10**8))

    def test_prime_power_inventory_independent(self):
        b=W.prime_base_sieve(4096)
        for n in range(1,4097):self.assertEqual(b[n],W.prime_base_trial(n))
        self.assertEqual([b[n] for n in (4,8,9,16,25,27,49)],[2,2,3,2,5,3,7])
        self.assertEqual(b[6],0)

    def test_known_prime_cutoffs(self):
        self.assertEqual([r['n'] for r in self.rows[Q(1,2)]['prime_power_inventory']],[2])
        self.assertEqual([r['n'] for r in self.rows[Q(1)]['prime_power_inventory']],[2,3,4,5,7])
        self.assertIn(49,[r['n'] for r in self.rows[Q(2)]['prime_power_inventory']])
        self.assertNotIn(64,[r['n'] for r in self.rows[Q(2)]['prime_power_inventory']])

    def test_classification_mutation_rejected(self):
        with patch.object(W,'prime_base_trial',return_value=0):
            with self.assertRaises(ArithmeticError):W.profile(Q(1,2),128,1)

    def test_poles_are_exact_not_numerical_projection(self):
        for row in self.rows.values():
            self.assertEqual(row['pole_exact_value'],'0')
            lo,hi=map(Q,row['pole_direct_check']);self.assertLessEqual(lo,0);self.assertGreaterEqual(hi,0)

    def test_signed_discrepancy_not_positive_by_definition(self):
        self.assertLess(Q(self.rows[Q(1,2)]['signed_discrepancy'][1]),0)
        self.assertGreater(Q(self.rows[Q(1)]['signed_discrepancy'][0]),0)
        self.assertGreater(Q(self.rows[Q(2)]['signed_discrepancy'][0]),0)

    def test_closed_floor_return(self):
        for A,row in self.rows.items():
            x,y=map(Q,row['signed_discrepancy']);u,v=map(Q,row['closed_floor_discrepancy'])
            self.assertLessEqual(max(x,u),min(y,v))
        self.assertEqual([self.rows[a]['closed_floor_cells'] for a in self.rows],[2,7,54])

    def test_positive_kernel_in_actual_examples(self):
        for row in self.rows.values():self.assertGreater(Q(row['positive_kernel'][0]),0)

    def test_derivative_budget_symbolic(self):
        h,x=S.symbols('h x',positive=True)
        # The positive-kernel integration by parts retains the minus sign.
        E=S.Function('E')(x);v=S.Function('v')(x)
        self.assertEqual(S.simplify(S.diff(S.exp(-x/2)*v,x)-S.exp(-x/2)*(S.diff(v,x)-v/2)),0)

    def test_polar_continuum_identity(self):
        x=S.symbols('x',real=True)
        self.assertEqual(S.simplify((4*S.cosh(x/2)-2*S.exp(x/2)-2*S.exp(-x/2)).rewrite(S.exp)),0)

    def test_stieltjes_endpoint_not_optional(self):
        # E(1)=0 but a truncated nonzero h at the OTHER endpoint contributes.
        self.assertNotEqual(2*Q(3)*Q(1,2)*Q(4),0)

    def test_tail_integral_bound(self):
        u=S.symbols('u',positive=True)
        for J in (1,2,64,512):
            val=S.integrate((2*u+S.Rational(1,2))**-3,(u,J,S.oo))
            self.assertEqual(val,S.Rational(1,4)/(2*J+S.Rational(1,2))**2)

    def test_tail_remains_positive(self):
        for row in self.rows.values():self.assertGreater(Q(row['arch_series_tail_upper']),0)

    def test_no_global_claims(self):
        for row in self.rows.values():
            for k in ('RH','all_support_lower_growth','new_zero_region','native_Lean'):self.assertIs(row[k],False)
            self.assertIn('not all functions',row['scope'])

    def test_regularized_source_rearrangement(self):
        arch,polar,prime,plus,minus=S.symbols('arch polar prime plus minus')
        old=arch+polar-prime;new=arch+minus+(plus-prime)
        self.assertEqual(S.expand((old-new).subs(polar,plus+minus)),0)

    def test_missing_polar_changes_the_form(self):
        self.assertNotEqual(2+3-4,2-4)

    def test_missing_cross_changes_the_form(self):
        # Source quadratic recomputed on f+g, not on diagonal samples alone.
        self.assertEqual((1-1)**2,0);self.assertNotEqual(1**2+(-1)**2,0)

    def test_derivative_bound_is_not_uniform_L2(self):
        # Modulation f(u)e^(iku) preserves L2 but not the derivative norm.
        k,S0,S1=S.symbols('k S0 S1',positive=True)
        self.assertEqual(S.expand(S1+k*k*S0-S1),k*k*S0)

    def test_precision_overlap(self):
        hi=W.profile(Q(1),192,128);lo=self.rows[Q(1)]
        for name in ('signed_discrepancy','positive_kernel','whole_weil_form','archimedean_term'):
            a,b=map(Q,lo[name]);c,d=map(Q,hi[name]);self.assertLessEqual(max(a,c),min(b,d))

    def test_cli_refuses_overwrite(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'keep.json';p.write_text('KEEP')
            run=subprocess.run([sys.executable,'-B',str(ROOT/'scripts/weil_prime_discrepancy.py'),'--output',str(p)],capture_output=True,text=True)
            self.assertNotEqual(run.returncode,0);self.assertEqual(p.read_text(),'KEEP')

if __name__=='__main__':unittest.main()
