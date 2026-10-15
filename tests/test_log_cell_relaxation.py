"""Exact arithmetic and hostile controls, not a replacement for analytic proofs."""
from fractions import Fraction as Q
from pathlib import Path
import json
import sys
import tempfile
import unittest
import sympy as sp
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'scripts'))
import log_cell_relaxation as m


class Arithmetic(unittest.TestCase):
    def test_reversed_interval_rejected(self):
        with self.assertRaises(ValueError): m.Interval(2,1)
    def test_float_rejected(self):
        with self.assertRaises(TypeError): m.Interval.exact(0.1)
    def test_boolean_rejected(self):
        with self.assertRaises(ValueError): m.moebius_sieve(True)
    def test_zero_divisor_rejected(self):
        with self.assertRaises(ZeroDivisionError): m.Interval(-1,1).reciprocal()
    def test_mixed_precision_rejected(self):
        with self.assertRaises(ValueError): m.Interval(0,1,64)+m.Interval(0,1,160)
    def test_product_encloses_all_corners(self):
        a,b=m.Interval(Q(-2,3),Q(4,5)),m.Interval(Q(-7,6),Q(3,2))
        p=a*b
        for x in (a.lo,a.hi):
            for y in (b.lo,b.hi): self.assertTrue(p.contains(x*y))
    def test_square_across_zero(self):
        a=m.Interval(-2,3).square()
        self.assertTrue(a.contains(0));self.assertTrue(a.contains(9));self.assertGreaterEqual(a.lo,0)
    def test_exact_square_root_cases(self):
        self.assertEqual(m.inverse_power_two_root(4,2).lo,Q(1,2))
        self.assertEqual(m.inverse_power_two_root(16,4).hi,Q(1,2))
    def test_root_enclosures_by_integer_powers(self):
        for n in (2,3,17,1000):
            for order in (2,4,8):
                x=m.inverse_power_two_root(n,order,96)
                self.assertLessEqual(n*x.lo**order,1)
                self.assertGreaterEqual(n*x.hi**order,1)
    def test_bad_root_order(self):
        with self.assertRaises(ValueError):m.inverse_power_two_root(2,3)
    def test_log_width_elementary_bounds(self):
        for n in (1,2,3,17,4096):
            h=m.log_cell_width(n)
            self.assertGreaterEqual(h.lo,Q(1,n+1))
            self.assertLessEqual(h.hi,Q(1,n))
    def test_log_precision_consistency(self):
        for n in (1,7,123):
            self.assertTrue(m.log_cell_width(n,96).overlaps(m.log_cell_width(n,192)))
    def test_log_invalid_index(self):
        with self.assertRaises(ValueError):m.log_cell_width(0)
    def test_subcell_endpoint_compatibility(self):
        for n in (1,3,11):
            for k in range(3):
                _,b=m.subcell_endpoints(n,2,k)
                a,_=m.subcell_endpoints(n,2,k+1)
                self.assertEqual(a,b)


class SymbolicIdentities(unittest.TestCase):
    def test_centering(self):
        h,s,c,A,M=sp.symbols('h s c A M',nonzero=True)
        E=4*(h*A*A-2*s*A*M+c*M*M)
        mean=2*(A-s*M/h);V=4*M*M*(c-s*s/h)
        self.assertEqual(sp.factor(E-h*mean**2-V),0)
    def test_denominator_free_centering(self):
        h,s,c,A,M=sp.symbols('h s c A M')
        self.assertEqual(sp.expand(h*4*(h*A*A-2*s*A*M+c*M*M)-4*(h*A-s*M)**2-4*M*M*(h*c-s*s)),0)
    def test_antiderivative(self):
        t,A,M=sp.symbols('t A M',real=True)
        primitive=4*(A*A*t+4*A*M*sp.exp(-t/2)-M*M*sp.exp(-t))
        self.assertEqual(sp.simplify(sp.diff(primitive,t)-4*(A-M*sp.exp(-t/2))**2),0)
    def test_variance_double_integral_constant(self):
        u,v,h=sp.symbols('u v h',positive=True)
        val=sp.integrate(sp.integrate((u-v)**2,(u,0,h)),(v,0,h))/(2*h)
        self.assertEqual(sp.simplify(val-h**3/12),0)
    def test_weighted_merge(self):
        l,r,x,y=sp.symbols('l r x y',nonzero=True)
        mean=(l*x+r*y)/(l+r)
        self.assertEqual(sp.factor(l*x*x+r*y*y-(l+r)*mean**2-l*r/(l+r)*(x-y)**2),0)
    def test_haar_split(self):
        h,x,y=sp.symbols('h x y')
        self.assertEqual(sp.expand(h*(x*x+y*y)/2-h*((x+y)/2)**2-h*(x-y)**2/4),0)
    def test_quartic_detail(self):
        a,r=sp.symbols('a r')
        self.assertEqual(sp.expand((a-2*a*r+a*r*r)**2-a*a*(1-r)**4),0)
    def test_arrival_atom_cancels(self):
        A,M,u,r=sp.symbols('A M u r')
        self.assertEqual(sp.expand(2*((A+u*r)-(M+u)*r)-2*(A-M*r)),0)
    def test_schur_minimizer(self):
        h,s,c,M=sp.symbols('h s c M',nonzero=True)
        a=s*M/h
        self.assertEqual(sp.factor(4*(h*a*a-2*s*a*M+c*M*M)-4*M*M*(c-s*s/h)),0)
    def test_refinement_geometric_bound(self):
        n,h,q=sp.symbols('n h q',positive=True)
        self.assertEqual(sp.simplify(q*n*(h/q)**3/12-n*h**3/(12*q*q)),0)


class SourceChecks(unittest.TestCase):
    @staticmethod
    def trial_mu(n):
        sign,p=1,2
        while p*p<=n:
            if n%p==0:
                n//=p;sign=-sign
                if n%p==0:return 0
                while n%p==0:n//=p
            p+=1
        return -sign if n>1 else sign
    def test_sieve_independent_trial_factorization(self):
        mu=m.moebius_sieve(1000)
        self.assertEqual(mu[1:],[self.trial_mu(n) for n in range(1,1001)])
    def test_squareful_sources_retained_as_zero(self):
        mu=m.moebius_sieve(64)
        self.assertEqual([mu[n] for n in (4,8,9,12,16,18,25,27,36,49)],[0]*10)
    def test_mertens_essential_bound(self):
        mu=m.moebius_sieve(1000);M=0
        for n in range(1,1001):
            M+=mu[n];self.assertLessEqual(abs(M),n)
    def test_invalid_mertens_bound_rejected(self):
        with self.assertRaises(ValueError):m.cell_components(2,m.Interval.exact(0),3)
    def test_zero_mertens_zero_detail(self):
        c=m.cell_components(2,m.Interval.exact(Q(1,3)),0,2)
        self.assertEqual(c['variance'].lo,0);self.assertEqual(c['variance'].hi,0)
    def test_refinement_energy_accounting(self):
        mu=m.moebius_sieve(12);A=m.Interval.exact(0);M=0
        for n in range(1,13):
            M+=mu[n];A+=mu[n]*m.inverse_power_two_root(n,2)
            for j in range(3):
                c=m.cell_components(n,A,M,j);d=m.cell_components(n,A,M,j+1)
                detail=sum((m.haar_detail_energy(n,M,j,k) for k in range(1<<j)),m.Interval.exact(0))
                self.assertTrue((c['variance']-d['variance']).overlaps(detail))
                self.assertTrue((d['mean_energy']-c['mean_energy']).overlaps(detail))
    def test_finite_prefix_coherent_energy(self):
        r=m.full_prefix(32)
        E,G,V=[m.Interval(Q(r[k]['lower']),Q(r[k]['upper'])) for k in ('integrated_energy','cell_mean_energy','prefix_variance')]
        self.assertTrue(E.overlaps(G+V));self.assertGreater(V.lo,0)
    def test_source_prefix_refinement_improves(self):
        rs=[m.full_prefix(32,j) for j in range(3)]
        for a,b in zip(rs,rs[1:]):
            self.assertLess(Q(b['prefix_variance']['upper']),Q(a['prefix_variance']['lower']))
            self.assertGreater(Q(b['cell_mean_energy']['lower']),Q(a['cell_mean_energy']['upper']))
    def test_global_variance_certificate_128(self):
        r=m.full_prefix(128)
        self.assertLess(Q(r['all_height_variance_upper']),Q(11,500))
    def test_variance_is_not_full_energy(self):
        r=m.full_prefix(32)
        self.assertGreater(Q(r['integrated_energy']['lower']),Q(r['all_height_variance_upper']))
        self.assertIs(r['whole_source_energy_bounded'],False)
    def test_saved_report_replay_and_tamper(self):
        r=m.full_prefix(8)
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'r.json';p.write_text(json.dumps(r))
            self.assertTrue(m.verify_saved(str(p))['verified'])
            r['native_lean_admission']=True;p.write_text(json.dumps(r))
            with self.assertRaises(ValueError):m.verify_saved(str(p))

    def test_boolean_false_is_not_numeric_zero_in_receipt(self):
        r=m.full_prefix(8);r['native_lean_admission']=0
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'r.json';p.write_text(json.dumps(r))
            with self.assertRaises(ValueError):m.verify_saved(str(p))
    def test_no_cancellation_source_still_has_small_variance(self):
        A=m.Interval.exact(0)
        for n in range(1,33):
            A+=m.inverse_power_two_root(n,2)
            row=m.cell_components(n,A,n)
            self.assertLessEqual(row['variance'].hi,Q(1,12*n*n))
            if n>=16:self.assertGreater(row['direct'].lo,Q(1,2))

    def test_operator_report_replay_and_tamper(self):
        r=m.residual_operator_certificate(8)
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'r.json';p.write_text(json.dumps(r))
            self.assertTrue(m.verify_saved(str(p))['verified'])
            r['linfinity_norm_squared_upper']='0';p.write_text(json.dumps(r))
            with self.assertRaises(ValueError):m.verify_saved(str(p))

    def test_residual_operator_bounds(self):
        r=m.residual_operator_certificate(64)
        self.assertLess(Q(r['linfinity_norm_squared_upper']),Q(1,6))
        self.assertLess(Q(r['hilbert_schmidt_squared_upper']),Q(1,8))
        self.assertIs(r['full_signed_energy_bound'],False)
    def test_residual_gram_keeps_all_pairs(self):
        c=[Q(1),Q(-1),Q(0),Q(1),Q(-1)]
        b=[Q(1,12*(n+1)**4) for n in range(len(c))]
        left=sum(b[n]*sum(c[:n+1])**2 for n in range(len(c)))
        right=sum(c[i]*c[j]*sum(b[max(i,j):])
                  for i in range(len(c)) for j in range(len(c)))
        diagonal=sum(c[i]**2*sum(b[i:]) for i in range(len(c)))
        self.assertEqual(left,right)
        self.assertNotEqual(left,diagonal)
    def test_residual_gram_trace_identity(self):
        b=[Q(1,12*n**4) for n in range(1,17)]
        self.assertEqual(sum(sum(b[i:]) for i in range(16)),
                         sum((n+1)*b[n] for n in range(16)))
    def test_bounded_coefficient_operator_majorant(self):
        c=[Q(1),Q(-1,2),Q(3,4),Q(-1),Q(0)]
        b=[Q(1,12*n**4) for n in range(1,6)]
        value=sum(b[n]*sum(c[:n+1])**2 for n in range(5))
        majorant=sum((n+1)**2*b[n] for n in range(5))
        self.assertLessEqual(value,majorant)


class HostileControls(unittest.TestCase):
    def test_averaging_does_not_erase_variance(self):
        self.assertNotEqual((Q(1)**2+Q(-1)**2)/2,((Q(1)+Q(-1))/2)**2)
    def test_absolute_sign_substitution_changes_source(self):
        self.assertNotEqual((Q(1)-Q(1,2))**2,(Q(1)+Q(1,2))**2)
    def test_reversed_mixed_sign_changes_energy(self):
        h,s,c,A,M=Q(1),Q(1,2),Q(1),Q(2),Q(1)
        self.assertNotEqual(4*(h*A*A-2*s*A*M+c*M*M),4*(h*A*A+2*s*A*M+c*M*M))
    def test_small_schur_floor_not_upper_bound(self):
        self.assertEqual(4*0**2,0)
        self.assertGreater(4*10**2,100)
    def test_harmonic_channel_survives_heat(self):
        # Exact attenuation model diag(1,1/2,1/4), native source=(3,4,-2).
        x=[Q(3),Q(4),Q(-2)];z=[x[0],x[1]/2,x[2]/4]
        self.assertEqual(x[0],z[0]);self.assertNotEqual(sum(t*t for t in z),sum(t*t for t in z[1:]))
    def test_native_complex_source_not_inferred_from_auxiliary_gram(self):
        H=sp.Matrix([[0,1],[1,0]])
        v=sp.Matrix([1,0])
        self.assertEqual((v.T*H*v)[0],0)
        self.assertNotEqual(H*v,sp.zeros(2,1))

class IntegrationControls(unittest.TestCase):
    def with_report(self, raw, function):
        with tempfile.TemporaryDirectory() as d:
            path = Path(d) / 'report.json'
            path.write_text(raw, encoding='utf-8')
            return function(str(path))

    def test_duplicate_top_level_key_rejected(self):
        raw = json.dumps(m.full_prefix(2))
        raw = raw[:-1] + ', "native_lean_admission": false}'
        with self.assertRaisesRegex(ValueError, 'duplicate JSON key'):
            self.with_report(raw, m.verify_saved)

    def test_duplicate_nested_key_rejected(self):
        raw = json.dumps(m.full_prefix(2))
        raw = raw.replace('"integrated_energy": {',
                          '"integrated_energy": {"lower":"0",', 1)
        with self.assertRaisesRegex(ValueError, 'duplicate JSON key'):
            self.with_report(raw, m.verify_saved)

    def test_nonfinite_json_rejected(self):
        with self.assertRaisesRegex(ValueError, 'nonexact JSON number'):
            self.with_report('{"cutoff":NaN}', m.verify_saved)

    def test_float_json_rejected(self):
        raw = json.dumps(m.full_prefix(2)).replace('"cutoff": 2', '"cutoff": 2.0')
        with self.assertRaisesRegex(ValueError, 'nonexact JSON number'):
            self.with_report(raw, m.verify_saved)

    def test_unknown_fields_rejected_before_work(self):
        row = m.full_prefix(2); row['unreviewed'] = True
        with self.assertRaisesRegex(ValueError, 'fields mismatch'):
            self.with_report(json.dumps(row), m.verify_saved)

    def test_missing_field_rejected(self):
        row = m.residual_operator_certificate(2); del row['source_scope']
        with self.assertRaisesRegex(ValueError, 'fields mismatch'):
            self.with_report(json.dumps(row), m.verify_saved)

    def test_full_energy_promotion_rejected(self):
        row = m.full_prefix(2); row['whole_source_energy_bounded'] = True
        with self.assertRaisesRegex(ValueError, 'full energy status promotion'):
            self.with_report(json.dumps(row), m.verify_saved)

    def test_rows_type_rejected(self):
        row = m.full_prefix(2); row['rows'] = {}
        with self.assertRaisesRegex(ValueError, 'rows must be a list'):
            self.with_report(json.dumps(row), m.verify_saved)

    def test_truncated_row_inventory_rejected(self):
        row = m.full_prefix(2, keep_rows=True); row['rows'].pop()
        with self.assertRaisesRegex(ValueError, 'incomplete row inventory'):
            self.with_report(json.dumps(row), m.verify_saved)

    def test_rows_replay(self):
        self.assertTrue(self.with_report(json.dumps(m.full_prefix(3, keep_rows=True)),
                                         m.verify_saved)['verified'])

    def test_rounding_cannot_hide_reversed_interval(self):
        with self.assertRaisesRegex(ValueError, 'reversed interval before rounding'):
            m.Interval.rounded(Q(1, 10)+Q(1, 1 << 200), Q(1, 10), 64)

    def test_rounding_validates_bits_before_shift(self):
        with self.assertRaisesRegex(ValueError, 'bits must be an integer'):
            m.Interval.rounded(0, 1, 10**9)

    def test_combined_subcell_resource_guard(self):
        with self.assertRaisesRegex(ValueError, 'subcell resource guard'):
            m.full_prefix(4097, 6)

    def test_boolean_row_switch_required(self):
        with self.assertRaisesRegex(ValueError, 'keep_rows must be Boolean'):
            m.full_prefix(2, keep_rows=1)

    def test_report_size_guard(self):
        from unittest.mock import patch
        with patch.object(m, 'MAX_REPORT_BYTES', 8):
            with self.assertRaisesRegex(ValueError, 'report size resource guard'):
                self.with_report('{"payload":1234}', m.verify_saved)

    def test_json_array_not_certificate(self):
        with self.assertRaisesRegex(ValueError, 'report object required'):
            self.with_report('[]', m.verify_saved)


if __name__=='__main__':unittest.main()
