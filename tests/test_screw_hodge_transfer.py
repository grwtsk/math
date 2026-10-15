#!/usr/bin/env python3
"""Finite exact algebra and source-tail regressions; not continuum proof admission."""
from fractions import Fraction as F
from pathlib import Path
import copy
import itertools
import json
import sys
import tempfile
import unittest
import sympy as S
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'scripts'))
import screw_hodge_transfer as h

class Coordinates(unittest.TestCase):
    def test_right_is_upper(self):
        self.assertEqual(h.centered_coordinate(h.C(F(7,8),3)),h.C(-3,F(3,8)))
    def test_left_is_lower(self):
        self.assertEqual(h.centered_coordinate(h.C(F(1,8),3)),h.C(-3,F(-3,8)))
    def test_reflection_commutes(self):
        for a,b in itertools.product((F(-1),F(1,8),F(1,2),F(7,8),F(2)),repeat=2):
            z=h.C(a,b)
            self.assertEqual(h.centered_coordinate(h.critical_reflection(z)),h.centered_coordinate(z).conj())
    def test_reflection_involution(self):
        z=h.C(F(3,7),F(-5,9)); self.assertEqual(h.critical_reflection(h.critical_reflection(z)),z)
    def test_paired_domain_status(self):
        a=h.rectangle_pair(F(1,8),40)
        self.assertEqual(a['right_s'],['5/8','1','-40','40'])
        self.assertEqual(a['left_s'],['0','3/8','-40','40'])
        self.assertEqual(a['source_status'],'UNRESOLVED_NO_NONVANISHING_MARGIN')
    def test_invalid_rectangle(self):
        for d,H in [(0,1),(1,1),(F(1,8),-1)]:
            with self.assertRaises(ValueError): h.rectangle_pair(d,H)

class Spectral(unittest.TestCase):
    def setUp(self):
        self.model=h.CosineHodge(((F(1),F(2)),(F(4),F(3))),F(1,5))
    def test_mass_not_covariance_mass(self):
        self.assertEqual(self.model.covariance_mass(),5)
        self.assertEqual(self.model.spectral_mass(),F(71,5))
    def test_herglotz_exact(self):
        for x,y in itertools.product(range(-4,5),range(1,5)):
            self.assertGreater(self.model.m(h.C(x,F(y,3))).im,0)
    def test_schur_exact(self):
        for x,y in itertools.product(range(-4,5),range(1,5)):
            self.assertLessEqual(self.model.omega(h.C(x,F(y,3))).abs2(),1)
    def test_lower_reflected_contractivity(self):
        for x in range(-3,4):
            self.assertLessEqual(self.model.reflected_omega(h.C(x,-2)).abs2(),1)
    def test_reflected_formula_uses_other_sign(self):
        z=h.C(2,-3);m=self.model.m(z)
        self.assertEqual(self.model.reflected_omega(z),(m+h.I)/(m-h.I))
    def test_resolvent_conjugation(self):
        z=h.C(F(3,2),F(7,3));self.assertEqual(self.model.m(z.conj()),self.model.m(z).conj())
    def test_source_residual_identity(self):
        z=h.C(2,3);X=h.C(F(3,2),-2);d=h.C(-3,F(1,4))
        self.assertEqual(h.source_residual(X,d,self.model.omega(z)),h.differential_residual(X,d,self.model.m(z)))
    def test_reflected_residual_identity(self):
        z=h.C(2,3);X=h.C(1,2);d=h.C(3,4);u=self.model.omega(z)
        low=(X.conj()-h.I*d.conj())*u.conj()+X.conj()+h.I*d.conj()
        self.assertEqual(low,h.source_residual(X,d,u).conj())
    def test_zero_frequency_is_not_axial_mass(self):
        a=h.CosineHodge(((F(0),F(900)),)); self.assertEqual(a.m(h.C(0,1)),h.C())
        b=h.CosineHodge((),F(900)); self.assertEqual(b.m(h.C(0,1)),h.C(0,900))
    def test_negative_mass_rejected(self):
        for atoms,alpha in [(((1,-1),),0),(((-1,1),),0),((),-1)]:
            with self.assertRaises(ValueError):h.CosineHodge(atoms,alpha)
    def test_no_real_resolvent_claim(self):
        with self.assertRaises(ValueError):self.model.m(h.C(2))
    def test_wrong_halfplane_rejected(self):
        with self.assertRaises(ValueError):self.model.omega(h.C(0,-1))
        with self.assertRaises(ValueError):self.model.reflected_omega(h.C(0,1))
    def test_frequency_weighted_hodge_block(self):
        z=S.symbols('z'); Q=S.Matrix([[0,2],[2,0]]);v=S.Matrix([6,0])
        m=(v.T*(Q-z*S.eye(2)).inv()*v)[0]
        self.assertEqual(S.cancel(m-36*z/(4-z*z)),0)
    def test_atom_laplace_transform(self):
        z,l=S.symbols('z l',nonzero=True)
        transform=S.I/2*(1/(z+l)+1/(z-l))-S.I/z
        self.assertEqual(S.cancel(S.I*z*z*transform-l*l*z/(l*l-z*z)),0)
    def test_axial_laplace_transform(self):
        z,a=S.symbols('z a',nonzero=True)
        self.assertEqual(S.cancel(S.I*z*z*(-a/2)*(-2*S.I/z**3)+a/z),0)
    def test_curvature_mass_even_odd(self):
        s,t,l=S.symbols('s t l',real=True)
        plus=2*(S.cos(l*s)-1)*(S.cos(l*t)-1)
        minus=2*S.sin(l*s)*S.sin(l*t)
        self.assertEqual(S.diff(plus,s,t).subs({s:0,t:0}),0)
        self.assertEqual(S.diff(minus,s,t).subs({s:0,t:0}),2*l*l)
    def test_axial_and_oscillatory_heat_channels(self):
        z,l,r=S.symbols('z l r',nonzero=True)
        self.assertEqual(S.cancel((l+z)/(l*l-z*z)-1/(l-z)),0)
    def test_stieltjes_anchor_mass(self):
        y=F(3,2);m=self.model.m(h.C(0,y))
        expected=self.model.alpha/y+sum(a*q*y/(q+y*y) for q,a in self.model.atoms)
        self.assertEqual(m,h.C(0,expected))

class Boundary(unittest.TestCase):
    def test_cyclic_complete_gram(self):
        v=[F(1),F(-2),F(3),F(0)];labels=[0,1,-1,2]
        A=h.cyclic_gram(v,labels)
        features=[[v[(j+t)%4]-v[j] for j in range(4)] for t in labels]
        self.assertEqual(A,[[sum(x*y for x,y in zip(a,b)) for b in features] for a in features])
    def test_cyclic_signed_quadratics(self):
        A=h.cyclic_gram([1,-2,3,0],[1,2,3])
        for c in itertools.product((-2,-1,0,1,2),repeat=3):
            self.assertGreaterEqual(sum(c[i]*A[i][j]*c[j] for i in range(3) for j in range(3)),0)
    def test_parity_congruence(self):
        A,P,M=h.parity_form([[2,1],[1,3]],[[F(1,2),0],[0,F(1,3)]])
        eye=S.eye(2);U=eye.row_join(eye).col_join(eye.row_join(-eye))/S.sqrt(2)
        self.assertEqual(U.T*S.Matrix(A)*U,S.diag(S.Matrix(P),S.Matrix(M)))
    def test_odd_negative_not_deleted(self):
        _,P,M=h.parity_form([[0]],[[1]])
        self.assertEqual(P,[[1]]);self.assertEqual(M,[[-1]])
    def test_restoration_cost(self):
        self.assertEqual(h.restored_error(F(1,4),F(1,100),F(1,100)),F(8,25))
    def test_large_heat_does_not_certify_sign(self):
        r=F(1,1000)
        self.assertEqual(h.restored_error(r,r*r,0),1)
    def test_zero_retention_rejected(self):
        with self.assertRaises(ValueError):h.restored_error(0,0,0)
    def test_missing_mixed_channel_counterexample(self):
        A=S.Matrix([[1,-1,-1],[-1,1,-1],[-1,-1,1]])
        self.assertEqual(A.det(),-4)
        for a,b in itertools.combinations(range(3),2): self.assertEqual(A.extract([a,b],[a,b]).det(),0)
    def test_aliasing_keeps_phase_not_frequency(self):
        M=12;ell=3;lift=ell+M
        self.assertEqual(ell%M,lift%M);self.assertNotEqual(ell*ell,lift*lift)
    def test_asymmetric_parity_input_rejected(self):
        with self.assertRaises(ValueError):h.parity_form([[1,2],[0,1]],[[0,0],[0,0]])

class HeatAndCells(unittest.TestCase):
    def test_quartic_transverse_heat(self):
        z,t=S.symbols('z t');P=z**4+3*z**2+7
        heat=P-t*S.diff(P,z,2)+t*t*S.diff(P,z,4)/2
        self.assertEqual(S.expand(heat-(z**4+(3-12*t)*z*z+12*t*t-6*t+7)),0)
    def test_quartic_heat_semigroup(self):
        z,t,u=S.symbols('z t u');P=z**4+3*z*z+7
        def H(p,v):return S.expand(p-v*S.diff(p,z,2)+v*v*S.diff(p,z,4)/2)
        self.assertEqual(S.expand(H(H(P,t),u)-H(P,t+u)),0)
    def test_gaussian_imaginary_shift_sign(self):
        z,v,t=S.symbols('z v t');P=S.Poly(S.expand((z-2*S.I*v)**4),v)
        moments={0:1,1:0,2:t/2,3:0,4:3*t*t/4}
        avg=sum(co* moments[k[0]] for k,co in P.terms())
        self.assertEqual(S.expand(avg-(z**4-12*t*z*z+12*t*t)),0)
    def test_lipschitz_covariance_constant(self):
        x,y,b=S.symbols('x y b',positive=True)
        self.assertEqual(S.integrate((x-y)**2,(x,0,b),(y,0,b)),b**4/6)
    def test_all_height_schedule(self):
        for H,eps in [(0,F(1,100)),(40,F(1,1000)),(10**6,F(1,100))]:
            a=h.strip_tail_schedule(H,eps)
            self.assertLessEqual(F(a['tail_upper']),eps)
    def test_full_strip_tail_exact(self):
        self.assertEqual(h.strip_residual_tail(40,4096),F(81,65536))
    def test_cell_half_transform_zero_symbolically(self):
        H,Q,M=S.symbols('H Q M',nonzero=True)
        self.assertEqual(S.cancel(-2*M*(Q-(Q/H)*H)),0)
    def test_endpoint_signs_and_source(self):
        zero,one=h.endpoint_cell(1,1)
        self.assertGreater(zero.lo,0);self.assertLess(one.hi,0)
        n0,n1=h.endpoint_cell(1,-1)
        self.assertEqual(n0,-zero);self.assertEqual(n1,-one)
    def test_zero_prefix_kept(self):
        zero,one=h.endpoint_cell(2,0)
        self.assertEqual(zero.lo,0);self.assertEqual(one.hi,0)
    def test_mobius_independent(self):
        mu=h.moebius(2000)
        self.assertEqual(mu[1:11],[1,-1,-1,0,-1,1,-1,0,0,1])
        for n in range(1,2001):self.assertEqual(mu[n],h.trial_mu(n))
    def test_endpoint_certificate_replay(self):
        a=h.endpoint_certificate(64,160);self.assertTrue(h.verify_endpoint_report(a))
        self.assertFalse(a['new_zeta_zero_exclusion'])
    def test_endpoint_nested_enclosures(self):
        a=h.endpoint_certificate(64,160);b=h.endpoint_certificate(128,160)
        for key in ['at_s_zero_enclosure','at_s_one_enclosure']:
            self.assertLessEqual(max(F(a[key]['lower']),F(b[key]['lower'])),min(F(a[key]['upper']),F(b[key]['upper'])))
    def test_status_promotion_rejected(self):
        a=h.endpoint_certificate(8);a['new_zeta_zero_exclusion']=True
        with self.assertRaises(ValueError):h.verify_endpoint_report(a)
    def test_unknown_field_rejected(self):
        a=h.endpoint_certificate(8);a['fake']=True
        with self.assertRaises(ValueError):h.verify_endpoint_report(a)
    def test_missing_field_rejected(self):
        a=h.endpoint_certificate(8);del a['at_s_half']
        with self.assertRaises(ValueError):h.verify_endpoint_report(a)
    def test_float_rejected(self):
        for x in [True,False,0.5,complex(1,2)]:
            with self.assertRaises(TypeError):h.rational(x)
    def test_reversed_interval_rejected_before_rounding(self):
        with self.assertRaises(ValueError):h.Box.rounded(F(1,2**100),0,64)
    def test_mixed_precision_rejected(self):
        with self.assertRaises(ValueError):h.Box.exact(1,64)+h.Box.exact(1,160)
    def test_zero_denominator_rejected(self):
        with self.assertRaises(ZeroDivisionError):h.Box.exact(1)/h.Box(-1,1)
        with self.assertRaises(ZeroDivisionError):h.C(1)/h.C()
    def test_bad_resources(self):
        for fn,args in [(h.endpoint_certificate,(True,160)),(h.strip_tail_schedule,(1,0)),(h.endpoint_cell,(3,4)),(h.sqrt_box,(0,))]:
            with self.assertRaises((ValueError,TypeError)):fn(*args)
    def test_duplicate_and_float_json_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'test.json'
            for text in ['{"a":1,"a":2}','{"a":0.1}','{"a":NaN}']:
                p.write_text(text)
                with self.assertRaises(ValueError):h.read_exact(p)
    def test_positive_source_still_has_mean_debt(self):
        n=S.symbols('n',positive=True)
        # The bounded variance estimate holds with |M_n|<=n, regardless of signs.
        self.assertEqual(S.cancel(n*n/(12*n)*(1/n)**3),1/(12*n*n))
        # It supplies no bound on the independent nonnegative mean-energy term.
        E,G,R=S.symbols('E G R');self.assertEqual((G+R)-R,G)


class CertificateHardening(unittest.TestCase):
    def setUp(self):
        self.report=h.endpoint_certificate(4,64)
    def test_numeric_false_status_rejected(self):
        for key in ('new_zeta_zero_exclusion','whole_source_energy_bound',
                    'global_positive_boundary_approximation'):
            changed=copy.deepcopy(self.report); changed[key]=0
            with self.assertRaises(ValueError): h.verify_endpoint_report(changed)
    def test_true_status_rejected(self):
        changed=copy.deepcopy(self.report); changed['new_zeta_zero_exclusion']=True
        with self.assertRaises(ValueError): h.verify_endpoint_report(changed)
    def test_unknown_field_rejected(self):
        changed=copy.deepcopy(self.report); changed['accepted']=True
        with self.assertRaises(ValueError): h.verify_endpoint_report(changed)
    def test_missing_field_rejected(self):
        changed=copy.deepcopy(self.report); del changed['at_s_half']
        with self.assertRaises(ValueError): h.verify_endpoint_report(changed)

class MomentAndSmoothing(unittest.TestCase):
    def test_first_moment_projection_cancels_two_moments(self):
        t=S.symbols('t'); f=1+2*t+3*t*t
        a,b=S.symbols('a b'); r=f-a-b*t
        values=S.solve([S.integrate(r,(t,0,1)),S.integrate(t*r,(t,0,1))],(a,b))
        remainder=S.expand(r.subs(values))
        self.assertEqual(S.integrate(remainder,(t,0,1)),0)
        self.assertEqual(S.integrate(t*remainder,(t,0,1)),0)
        self.assertGreater(S.integrate(remainder**2,(t,0,1)),0)
    def test_higher_moment_exponent(self):
        d,a=S.symbols('d a')
        # W derivative factor sqrt(n), dual exponent a-1/2,
        # and two L2 Taylor remainders with h^(d+3/2).
        power=S.Rational(1,2)-(a-S.Rational(1,2))-(2*d+3)
        self.assertEqual(S.expand(power-(-a-2*d-2)),0)
    def test_anchor_smoothing_spectral_factor(self):
        for q,y in itertools.product((F(0),F(1,10),F(2),F(100)),(F(1,2),F(1),F(4))):
            self.assertLessEqual(q*q/(q+y*y),q)
    def test_paid_second_mass_schedule(self):
        for n,M in itertools.product(range(1,20),(F(0),F(1),F(1000000))):
            r=F(1,n)/(1+M)
            self.assertLessEqual(r*M,F(1,n))

if __name__=='__main__': unittest.main()
