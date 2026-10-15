"""Exact polynomial/interval controls; finite facts are not the RH endpoint."""
from fractions import Fraction as Q
from math import comb,factorial
from pathlib import Path
import sys
import unittest
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'scripts'))
import laguerre_discrepancy_energy as d
s=d.source


def add(a,b):
    return [(a[i] if i<len(a) else 0)+(b[i] if i<len(b) else 0)
            for i in range(max(len(a),len(b)))]


def mul(a,b):
    c=[Q(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return c


def deriv(a):
    return [(i+1)*a[i+1] for i in range(len(a)-1)] or [Q(0)]


def integral_exp(a,rate):
    return sum((x*factorial(i)/rate**(i+1) for i,x in enumerate(a)),Q(0))


def matmul(a,b):
    return [[sum((a[i][k]*b[k][j] for k in range(len(b))),Q(0))
             for j in range(len(b[0]))] for i in range(len(a))]


def semigroup_polynomial(n,t):
    qs=s.prime_jet_polynomials(n)
    v=[d.polynomial(p,2*t) for p in qs]
    return [[v[i-j] if i>=j else Q(0) for j in range(n)] for i in range(n)]


class ExactLaguerreEnergy(unittest.TestCase):
    def test_source_pin(self):d.pinned_source()

    def test_filters_reject_nonexact_inputs(self):
        for x in [True,1.0,complex(1,0)]:
            for f in [d.compose,d.inverse_filter]:
                with self.assertRaises(TypeError):f([x])

    def test_empty_prefix_rejected(self):
        for f in [d.compose,d.inverse_filter]:
            with self.assertRaises(ValueError):f([])

    def test_empty_antiderivative_rejected(self):
        with self.assertRaises(ValueError):d.exponential_tail_polynomial([],1)

    def test_composition_constant(self):
        self.assertEqual(d.compose([Q(2),Q(0),Q(0)]),[2,0,0])

    def test_composition_basis(self):
        for n in range(1,12):
            for j in range(n):
                a=[Q(int(k==j)) for k in range(n)]
                expected=[Q(int(j==0))]+[Q(2**j*comb(k-1,j-1)) if j and k>=j else Q(0)
                                          for k in range(1,n)]
                self.assertEqual(d.compose(a),expected)

    def test_filter_constant_and_terminal(self):
        self.assertEqual(d.inverse_filter([Q(-3,2),Q(-1,2)]),[1,0])
        self.assertEqual(d.inverse_filter([Q(0),Q(0),Q(-9)]),[0,0,6])

    def test_complete_filter_roundtrip(self):
        for n in range(1,20):
            u=[Q((-1)**k*(k+1),k+2) for k in range(n)]
            p=[-(3*x+(u[k-1] if k else 0))/2 for k,x in enumerate(u)]
            self.assertEqual(d.inverse_filter(p),u)

    def test_tail_exact_exponent_comparison(self):self.assertLess(14**26,2**99)

    def test_tail_rational_constants(self):
        alpha=Q(9,26)
        self.assertEqual((1-Q(3,12))/(2*(1+Q(1,12))),alpha)
        self.assertEqual(11*alpha,Q(99,26))
        for n in range(1,50):
            original=Q(1,11)*(Q(77*n,10)/alpha+1/alpha+1/alpha**2)
            self.assertEqual(original,Q(91*n,45)+Q(910,891))

    def test_tail_budget_formula(self):
        for n in [1,2,8,64,128]:
            self.assertEqual(d.tail_budget_squared(n),
                             n*(Q(91*n,45)+Q(910,891))**2*Q(36,49)**n)

    def test_tail_declines_after_peak(self):
        for n in range(10,128):self.assertLess(d.tail_budget_squared(n+1),d.tail_budget_squared(n))

    def test_tail_at_128(self):self.assertLess(d.tail_budget_squared(128),Q(1,10**10))

    def test_tail_rejects_invalid_dimension(self):
        for x in (0,-1,True,1.0,4097):
            with self.assertRaises(ValueError):d.tail_budget_squared(x)

    def test_generator_full_symmetric_part(self):
        for n in range(1,17):
            a=d.dissipation_generator(n)
            self.assertTrue(all(a[i][j]+a[j][i]==2 for i in range(n) for j in range(n)))

    def test_generator_skew_part_retained(self):
        a=d.dissipation_generator(3)
        k=[[x-1 for x in row] for row in a]
        self.assertNotEqual(k,[[0]*3 for _ in range(3)])
        self.assertTrue(all(k[i][j]==-k[j][i] for i in range(3) for j in range(3)))

    def test_generator_quadratic_energy(self):
        for n in range(1,12):
            a=d.dissipation_generator(n)
            x=[Q((-1)**j,j+1) for j in range(n)]
            value=sum((x[i]*a[i][j]*x[j] for i in range(n) for j in range(n)),Q(0))
            self.assertEqual(value,sum(x)**2)

    def test_laguerre_differential_system(self):
        for n in range(1,10):
            a=d.dissipation_generator(n)
            polys=[d.laguerre(k,Q(2))+[Q(0)]*(n-k-1) for k in range(n)]
            for i in range(n):
                left=add(deriv(polys[i]),[-x for x in polys[i]])
                right=[-sum((a[i][j]*polys[j][k] for j in range(n)),Q(0)) for k in range(n)]
                self.assertEqual(left,right)

    def test_semigroup_addition(self):
        for n in range(1,9):
            for t,u in [(Q(1,3),Q(2,5)),(Q(0),Q(2)),(Q(2),Q(3))]:
                self.assertEqual(matmul(semigroup_polynomial(n,t),semigroup_polynomial(n,u)),
                                 semigroup_polynomial(n,t+u))

    def test_semigroup_features(self):
        for n in range(1,9):
            for t in [Q(0),Q(1,3),Q(2)]:
                q=semigroup_polynomial(n,t)
                self.assertEqual([sum(row) for row in q],
                                 [d.polynomial(d.laguerre(k,Q(2)),t) for k in range(n)])

    def test_exact_orthogonal_gram(self):
        for i in range(9):
            for j in range(9):
                val=integral_exp(mul(d.laguerre(i,Q(2)),d.laguerre(j,Q(2))),Q(2))
                self.assertEqual(val,Q(int(i==j),2))

    def test_lyapunov_identity(self):
        for n in range(1,9):
            a=d.dissipation_generator(n)
            self.assertTrue(all(a[i][j]/2+a[j][i]/2==1 for i in range(n) for j in range(n)))

    def test_forced_energy_completes_square(self):
        for x in [Q(-2),Q(0),Q(5,7)]:
            for f in [Q(-3),Q(2,5)]:
                self.assertEqual(-2*x*x+2*x*f, f*f/2-2*(x-f/2)**2)

    def test_taking_absolute_input_changes_readout(self):
        # The positive and negative forcing coefficients cannot be averaged away.
        self.assertNotEqual((Q(2)-Q(3))**2,(Q(2)+Q(3))**2)

    def test_exponential_antiderivative(self):
        for k in range(10):
            c=d.laguerre(k,Q(2))
            for rate in [Q(1,2),Q(3,2),Q(4)]:
                a=d.exponential_tail_polynomial(c,rate)
                self.assertEqual(add([rate*x for x in a],[-x for x in deriv(a)]),c)

    def test_rejects_nonpositive_rate(self):
        for q in [Q(0),Q(-1)]:
            with self.assertRaises(ValueError):d.exponential_tail_polynomial([Q(1)],q)

    def test_prime_powers_complete(self):
        self.assertEqual(d.prime_power_inventory(16),
                         [(2,2),(3,3),(4,2),(5,5),(7,7),(8,2),(9,3),(11,11),(13,13),(16,2)])

    def test_independent_factorization(self):
        table=dict(d.prime_power_inventory(2048))
        for n in range(2,2049):self.assertEqual(table.get(n),d.trial_prime_base(n))

    def test_rejects_bool_cutoff(self):
        with self.assertRaises(ValueError):d.prime_power_inventory(True)

    def test_head_empty_prime_range(self):
        r=d.finite_head(4,1)
        self.assertTrue(all(Q(x['lower'])==Q(x['upper'])==0 for x in r['moments']))

    def test_touching_prime_power_retained(self):
        r=d.finite_head(2,4)
        self.assertEqual(r['touching_prime_power'],2)
        self.assertTrue(r['endpoint_retained'])
        self.assertEqual(r['prime_power_count'],3)

    def test_first_head_moment_direct_formula(self):
        for x in [2,4,16]:
            bits=256;inv=s.I.point(Q(1,x),bits).sqrt();pow3=inv/x
            ans=-2*(1-inv)+Q(2,3)*(1-pow3)
            for n,p in d.prime_power_inventory(x):
                if n<x:
                    ans+=Q(2,3)*s.log_q(Q(p),bits)*(s.I.point(Q(1,n),bits).sqrt()/n-pow3)
            box=d.finite_head(1,x,bits)['moments'][0]
            self.assertLessEqual(max(ans.lo,Q(box['lower'])),min(ans.hi,Q(box['upper'])))

    def test_signed_intervals_square_correctly(self):
        self.assertEqual(d.energy([s.I(Q(-2),Q(1))]).record(),{'lower':'0','upper':'4'})

    def test_intervals_reject_reversal_before_rounding(self):
        with self.assertRaises(ValueError):s.I.outward(Q(1,2**1000),Q(0),160)

    def test_source_consistency_low_degree(self):
        direct,_,_=d.direct_moments(4,256,64,48)
        alternate=d.alternate_moments(4,256,64,48)
        self.assertTrue(all(max(x.lo,y.lo)<=min(x.hi,y.hi) for x,y in zip(direct,alternate)))

    def test_constant_is_not_erased(self):
        u,_,_=d.direct_moments(2,256,64,48)
        self.assertLess(u[0].hi,0)
        self.assertGreater(d.energy([u[0]]).lo,Q(1,10))

    def test_cauchy_circle_real_part_identity(self):
        # For |z|=r, (1+r)|1-z|^2*(Re(z/(1-z))+r/(1+r))
        # equals (1-r)*(r+Re z); test using exact rational circle points.
        for r in [Q(1,12),Q(1,4)]:
            for t in [Q(0),Q(1,2),Q(1),Q(3)]:
                re=r*(1-t*t)/(1+t*t);im=r*2*t/(1+t*t)
                den=(1-re)**2+im**2
                lhs=(1+r)*den*((re-re*re-im*im)/den+r/(1+r))
                self.assertEqual(lhs,(1-r)*(r+re))
                self.assertGreaterEqual(lhs,0)

    def test_old_absolute_budget_does_not_decay_at_11N(self):
        # Its squared exponential ratio is 81/sqrt(2**11)>1.
        self.assertGreater(81**2,2**11)


if __name__=='__main__':unittest.main(verbosity=2)
