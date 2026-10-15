#!/usr/bin/env python3
"""Finite exact diagnostics, not proof of the infinite Bessel arithmetic bound."""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json
import subprocess
import sys
import unittest

import jacobi_bessel_endpoint as j


def poly_value(p,x):
    return sum(a*x**k for k,a in enumerate(p))


def mul(a,b):
    out=[Q(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for k,y in enumerate(b):out[i+k]+=x*y
    return out


def normalized_coeffs(order,nu2,count):
    out=[Q(1)]
    for k in range(count):out.append(-out[-1]*nu2/(4*(k+1)*(order+k+1)))
    return out


def rising(x,n):
    result=Q(1)
    for k in range(n):result*=x+k
    return result


class ExactIdentities(unittest.TestCase):
    def test_budget_certificates(self):
        self.assertTrue(all(j.exact_certificates()['checks'].values()))

    def test_normalization_and_sturm(self):
        for n in range(21):
            p=j.jacobi_coefficients(n); dp=j.derivative(p); ddp=j.derivative(dp)
            self.assertEqual(poly_value(p,Q(0)),(-1)**n*j.endpoint_normalization(n))
            self.assertEqual(poly_value(p,Q(1)),1)
            for y in (Q(1,9),Q(1,3),Q(2,3),Q(7,8)):
                residual=(y*(1-y)*poly_value(ddp,y)+(Q(7,6)-Q(13,6)*y)*poly_value(dp,y)
                          +n*(n+Q(7,6))*poly_value(p,y))
                self.assertEqual(residual,0)

    def test_transformed_potential(self):
        for n,y in product(range(2,11),(Q(1,100),Q(1,7),Q(1,3),Q(1,2))):
            p=j.jacobi_coefficients(n); dp=j.derivative(p); ddp=j.derivative(dp)
            L=Q(1,3)/y-Q(1,4)/(1-y)
            Lp=-Q(1,3)/y**2-Q(1,4)/(1-y)**2
            curvature=(Lp+L*L)*y*(1-y)+L*(1-2*y)/2
            q=(n+Q(7,12))**2+1/(18*y)+1/(16*(1-y))
            residual=(y*(1-y)*poly_value(ddp,y)+(2*L*y*(1-y)+(1-2*y)/2)*poly_value(dp,y)
                      +(curvature+q)*poly_value(p,y))
            self.assertEqual(residual,0)

    def test_bessel_series_equation(self):
        for alpha,nu in product((Q(-1,6),Q(1,6),Q(7,6)),(Q(1),Q(31,12),Q(103,12))):
            p=normalized_coeffs(alpha,nu**2,16)
            for k in range(16):
                self.assertEqual((k+1)*(k+alpha+1)*p[k+1]+nu**2*p[k]/4,0)

    def test_bessel_derivative_identity(self):
        for alpha in (Q(-1,6),Q(1,6),Q(7,6)):
            a=normalized_coeffs(alpha,Q(1),16)
            b=normalized_coeffs(alpha+1,Q(1),15)
            for k in range(16):
                self.assertEqual(2*(k+1)*a[k+1],-b[k]/(2*(alpha+1)))

    def test_exact_wronskian(self):
        for nu in (Q(1),Q(31,12),Q(103,12)):
            N=14; a=normalized_coeffs(Q(1,6),nu**2,N+1)
            b=normalized_coeffs(Q(-1,6),nu**2,N+1)
            fg=mul(a,b); fg1=mul(a,j.derivative(b)); f1g=mul(j.derivative(a),b)
            self.assertEqual(-fg[0]/3,-Q(1,3))
            for k in range(1,N+1):
                self.assertEqual(-fg[k]/3+2*(fg1[k-1]-f1g[k-1]),0)

    def test_frequency_shift_and_origin_difference(self):
        for n in range(2,65):
            lam=n*(n+Q(7,6)); nu=n+Q(7,12)
            self.assertEqual(nu**2-lam,Q(49,144))
            self.assertEqual(Q(13,36)-Q(6,7)*nu**2+Q(6,7)*lam,Q(5,72))

    def test_missing_shift_fails_derivative_allowance(self):
        n=128
        lam=n*(n+Q(7,6))
        correct=-Q(6,7)*lam
        wrong=Q(13,36)-Q(6,7)*n*n
        self.assertGreater(abs(correct-wrong),100)

    def test_two_zero_boundary_solutions_are_distinct(self):
        # Both Frobenius powers vanish, but their normalized ratio diverges.
        high,low=Q(2,3),Q(1,3)
        self.assertGreater(low,0);self.assertGreater(high,0)
        self.assertLess(low-high,0)
        for k in range(1,12):
            theta=Q(1,k**3)
            self.assertEqual(theta**-1,k**3)

    def test_all_n_rational_cutoff_accounting(self):
        for n in range(2,101):
            lam=n*(n+Q(7,6)); nu=n+Q(7,12)
            ratio=j.finite_source_tail(n,n*n)/j.endpoint_normalization(n)*n*n
            self.assertLessEqual(ratio,Q(8,7)+Q(100,3)+Q(50,9))
            self.assertLess(nu**2/lam,2)
            self.assertLessEqual(nu**2,2*n*n)

    def test_scalar_cutoff_is_not_uniform_energy_tail(self):
        for n in range(2,20):
            self.assertGreater(j.finite_source_tail(n,n*n),0)
            self.assertLess(j.finite_source_tail(n,2*n*n),j.finite_source_tail(n,n*n))
        self.assertFalse(j.exact_certificates()['uniform_bessel_energy_proved'])

    def test_exact_critical_comparison(self):
        energy=Q(0); harmonic=Q(0); sums=Q(0)
        for n in range(65):
            s=rising(Q(5,12),n)/rising(Q(3,4),n+1)
            d=(-1)**n*(1/(n+Q(7,12))-s)/2
            energy+=(4*n+Q(7,3))*d*d
            harmonic+=1/(n+Q(7,12));sums+=s
            self.assertGreaterEqual(energy,harmonic-6)
            self.assertLessEqual(energy,harmonic+Q(45,2))
            snext=rising(Q(5,12),n+1)/rising(Q(3,4),n+2)
            self.assertEqual(sums,3*(1-(n+Q(7,4))*snext))


class IntervalDiagnostics(unittest.TestCase):
    def test_root_brackets(self):
        for x,k in product((Q(1,17),Q(2),Q(81,16),Q(1,10000)),(2,3,4,12)):
            r=j.positive_root(x,k,72)
            self.assertLessEqual(r.lo**k,x);self.assertGreaterEqual(r.hi**k,x)
            self.assertLessEqual(r.hi-r.lo,Q(1,2**72))

    def test_trig_identity_and_zero(self):
        for x in (Q(0),Q(1,100),Q(1,4),Q(1),Q(3,2)):
            s,c=j.sin_cos(x,80)
            self.assertTrue((s*s+c*c-1).contains_zero())
        s,c=j.sin_cos(0)
        self.assertEqual(s,j.Interval.point(0));self.assertEqual(c,j.Interval.point(1))

    def test_normalized_bessel_poisson_bound(self):
        for alpha,z in product((Q(-1,6),Q(1,6),Q(7,6)),(Q(0),Q(1,3),Q(3),Q(7),Q(12))):
            f=j.bessel_normalized(alpha,z,80)
            self.assertLessEqual(f.lo,1);self.assertGreaterEqual(f.hi,-1)
            if z:
                self.assertLess(f.max_abs(),1)
            else:self.assertEqual(f,j.Interval.point(1))

    def test_bessel_parity_and_precision(self):
        for z in (Q(1,7),Q(4),Q(9)):
            a=j.bessel_normalized(Q(1,6),z,64)
            b=j.bessel_normalized(Q(1,6),-z,100)
            self.assertLessEqual(a.lo,b.lo);self.assertGreaterEqual(a.hi,b.hi)

    def test_kernel_endpoint_grid(self):
        pairs=[]
        for n in (2,3,4,8,16,32,48):
            for theta in (Q(1,n),Q(1,2*n),Q(1,4),Q(1,2),Q(3,4),Q(1),Q(3,2)):
                # Use exact enclosing sine data to accept the declared endpoint range.
                _,c=j.sin_cos(theta,80);y=(1-c)/2
                if y.hi<=Q(1,n):pairs.append((n,theta))
        self.assertGreaterEqual(len(pairs),25)
        for n,theta in pairs:
            record=j.kernel_record(n,theta,64)
            self.assertTrue(all(record['checks'].values()))

    def test_error_nonzero_at_a_real_kernel_point(self):
        record=j.kernel_record(4,Q(1),80)
        error=record['intervals']['derivative_difference']
        self.assertFalse(Q(error['lower'])<=0<=Q(error['upper']))

    def test_interval_arithmetic(self):
        a=j.Interval(Q(-2),Q(3));b=j.Interval(Q(2),Q(4))
        self.assertEqual(a*a,j.Interval(-6,9))
        self.assertEqual(a**2,j.Interval(0,9))
        self.assertEqual(b.inverse(),j.Interval(Q(1,4),Q(1,2)))
        for x in (Q(-1,3),Q(1,7),Q(5,11)):
            o=j.Interval.point(x).outward(16)
            self.assertLessEqual(o.lo,x);self.assertGreaterEqual(o.hi,x)
        with self.assertRaises(ZeroDivisionError):a.inverse()

    def test_invalid_inputs(self):
        for bad in (True,2.0,Q(2),-1):
            with self.assertRaises((ValueError,TypeError)):j.kernel_record(bad,Q(1,4))
        for bad in (True,64.0,Q(64),8,513):
            with self.assertRaises((ValueError,TypeError)):j.kernel_record(4,Q(1,4),bad)
        with self.assertRaises(ValueError):j.kernel_record(32,Q(3,2))
        with self.assertRaises(ValueError):j.bessel_normalized(-Q(1,2),1)
        with self.assertRaises(TypeError):j.bessel_normalized(Q(1,6),0.5)
        with self.assertRaises(ValueError):j.finite_source_tail(4,1)
        with self.assertRaises(ValueError):j.kernel_record(128,Q(1,4),64)

    def test_cli_scope_and_failure(self):
        script=Path(j.__file__)
        ok=subprocess.run([sys.executable,'-B',str(script),'--degree','4','--angle','1'],
                          capture_output=True,text=True,check=False)
        self.assertEqual(ok.returncode,0,ok.stderr)
        data=json.loads(ok.stdout)
        self.assertFalse(data['uniform_energy_bound_proved'])
        self.assertFalse(data['source_integrals_evaluated'])
        bad=subprocess.run([sys.executable,'-B',str(script),'--degree','0'],
                           capture_output=True,text=True,check=False)
        self.assertEqual(bad.returncode,2)


if __name__=='__main__':
    unittest.main()
