#!/usr/bin/env python3
"""Finite exact controls; passing does not prove PNT, a uniform core bound, or RH."""
from fractions import Fraction as Q
from itertools import product
import unittest

import signed_prime_packets as p
from one_third_energy import Interval as I, sixth_root


def mid(value):
    return (Q(value['lower']) + Q(value['upper'])) / 2


def trial_mu(n):
    sign, q = 1, 2
    while q * q <= n:
        if n % q == 0:
            n //= q
            sign = -sign
            if n % q == 0:
                return 0
        q += 1
    return -sign if n > 1 else sign


def direct_atom_pair(m, n, x, bits=64):
    left, right = Q(max(m, n)), min(Q(x), Q(4*m), Q(4*n))
    if left >= right:
        return I.point(0)
    cuts = sorted({left, right} | {Q(k) for k in (2*m, 2*n) if left < k < right})
    def atom_coeff(k, u):
        root2 = sixth_root(Q(2), bits) ** 3
        inv = sixth_root(Q(k), bits) ** -3
        if u < 2*k:
            return 2 * inv, I.point(-2)
        return -root2 * inv, 2 * root2
    result = I.point(0)
    for a, b in zip(cuts, cuts[1:]):
        A, B = atom_coeff(m, (a+b)/2)
        C, D = atom_coeff(n, (a+b)/2)
        u, v = sixth_root(a, bits), sixth_root(b, bits)
        result += Q(3,2)*A*C*(u**-4-v**-4)
        result += Q(6,7)*(A*D+B*C)*(u**-7-v**-7)
        result += Q(3,5)*B*D*(u**-10-v**-10)
    return result


class PrimePacketTests(unittest.TestCase):
    def test_prime_validation(self):
        self.assertEqual(p.prime_set([5,2,3]), (2,3,5))
        self.assertEqual(p.prime_set([]), ())
        for values in ([2,2], [4], [True], [Q(2)], [-3], [1]):
            with self.assertRaises(ValueError):
                p.prime_set(values)

    def test_exact_source_mask(self):
        mu, a, b = p.packet_sources(30, [2])
        self.assertEqual([a[n] for n in (1,2,3,4,5,6,9,10,15,30)],
                         [0,0,-1,0,-1,1,0,1,0,0])
        self.assertEqual(mu, [x+y for x,y in zip(a,b)])
        self.assertTrue(any(v > 0 for v in a))
        self.assertTrue(any(v < 0 for v in a))

    def test_independent_mu(self):
        mu, _, _ = p.packet_sources(1024, [2,3,5])
        self.assertEqual(mu[1:], [trial_mu(n) for n in range(1,1025)])

    def test_all_small_coefficient_orbits(self):
        for primes in ([],[2],[2,3],[3,5]):
            for N in range(1,129):
                self.assertEqual(p.packet_sources(N,primes)[1],p.orbit_packet(N,primes))

    def test_selected_prime_toggle_exact(self):
        _, a, _ = p.packet_sources(2048, [2,3,5])
        for q in (2,3,5):
            for n in range(1,2048//q+1):
                expected = -a[n] if n % q else 0
                self.assertEqual(a[q*n],expected)

    def test_missing_outside_prime_gate_detected(self):
        _, a, _ = p.packet_sources(12,[2,3])
        # Incorrectly counting p=2 in the outside-prime sum invents an atom at two.
        self.assertEqual(a[2],0)
        self.assertNotEqual(a[2],-1)

    def test_closed_rational_cutoffs(self):
        for primes in ([],[2],[2,3],[2,3,5]):
            for x in [Q(1),Q(7,2),Q(4),Q(9,2),Q(17,2),Q(32)]:
                _, a, _ = p.packet_sources(x.numerator//x.denominator,primes)
                self.assertEqual(sum(a),p.packet_prefix(x,primes))

    def test_density_factor_exact(self):
        for primes in ([],[2],[2,3],[2,3,5],[2,3,5,7]):
            P=1
            for q in primes:
                P*=q
            self.assertEqual(sum((Q(s,d) for d,s in p.signed_divisors(primes,P)),Q(0)),
                             p.density_factor(primes))
        self.assertEqual(p.density_factor([2,3,5,7]),Q(8,35))

    def test_future_coefficient_rejected(self):
        with self.assertRaises(ValueError):
            p.localized_inner([0,1,0],[0,1,0],Q(3,2))
        with self.assertRaises(ValueError):
            p.localized_inner([1,1],[0,1],Q(3,2))

    def test_precision_validated_before_cached_roots(self):
        sixth_root(Q(2),64)
        for bits in (Q(64),True,64.0,7,513):
            with self.assertRaises(ValueError):
                p.packet_record(8,[2],bits)

    def test_invalid_cutoff_types(self):
        for x in (True,1.0,'2'):
            with self.assertRaises(TypeError):
                p.packet_record(x,[2])
        for x in (0,Q(1,2)):
            with self.assertRaises(ValueError):
                p.packet_record(x,[2])

    def test_startup_no_division(self):
        for x in (1,Q(7,2),5):
            r=p.packet_record(x,[2,3])
            self.assertEqual(r['packet_norm_state'],'zero_packet_no_division')
            self.assertNotIn('regression_coefficient',r['intervals'])
            self.assertEqual(r['intervals']['packet_energy'],{'lower':'0','upper':'0'})

    def test_all_primes_below_horizon_does_not_inherit_fixed_set_asymptotic(self):
        primes=[q for q in range(2,17) if p.is_prime(q)]
        r=p.packet_record(16,primes)
        self.assertEqual(r['packet_norm_state'],'zero_packet_no_division')
        self.assertGreater(mid(r['intervals']['full_energy']),0)

    def test_actual_mixed_term_changes_sign(self):
        r=p.packet_record(Q(17,2),[2,3])
        self.assertGreater(Q(r['intervals']['signed_mixed_energy']['lower']),0)
        s=p.packet_record(64,[2,3])
        self.assertLess(Q(s['intervals']['signed_mixed_energy']['upper']),0)

    def test_independent_atom_gram(self):
        x=Q(17,2)
        mu,a,b=p.packet_sources(8,[2])
        for left,right in ((mu,mu),(a,a),(a,b),(b,b)):
            direct=I.point(0)
            for m in range(1,9):
                for n in range(1,9):
                    direct+=left[m]*right[n]*direct_atom_pair(m,n,x)
            self.assertTrue(direct.overlaps(p.localized_inner(left,right,x)))

    def test_mixed_factor_two_is_not_optional(self):
        r=p.packet_record(Q(17,2),[2,3])['intervals']
        gap=mid(r['full_energy'])-mid(r['packet_energy'])-mid(r['remainder_energy'])
        self.assertGreater(abs(gap),Q(1,1000))
        self.assertLess(abs(gap-2*mid(r['signed_mixed_energy'])),Q(1,10**12))

    def test_keep_startup_source_at_one(self):
        mu,_,_=p.packet_sources(8,[2,3])
        modified=mu.copy(); modified[1]=0
        self.assertFalse(p.localized_inner(mu,mu,Q(17,2)).overlaps(
            p.localized_inner(modified,modified,Q(17,2))))

    def test_exact_schur_identities(self):
        count=0
        for v in product((-1,0,1),repeat=3):
            if not any(v):
                continue
            for w in product((-1,0,1),repeat=3):
                weights=(Q(1),Q(2),Q(3))
                A=sum(c*x*x for c,x in zip(weights,v))
                E=sum(c*y*y for c,y in zip(weights,w))
                C=sum(c*x*y for c,x,y in zip(weights,v,w))
                G=sum(c*(x+y)**2 for c,x,y in zip(weights,v,w))
                residual=E-C*C/A
                self.assertGreaterEqual(residual,0)
                self.assertEqual(G,(A+C)**2/A+residual)
                count+=1
        self.assertEqual(count,702)

    def test_regression_minus_one_does_not_pay_residual(self):
        for n in range(1,25):
            A,E,C=Q(n**4),Q(n**4+n*n),Q(-n**4)
            self.assertEqual(C/A,-1)
            self.assertEqual(E-C*C/A,n*n)
            self.assertEqual(A+2*C+E,n*n)

    def test_perfect_anticorrelation_does_not_match_amplitudes(self):
        for n in range(1,25):
            A,E,C=Q(n*n),Q(n*n,4),Q(-n*n,2)
            self.assertEqual(C*C,A*E)
            self.assertEqual(A+2*C+E,Q(n*n,4))

    def test_farkas_witness_grid(self):
        count=0
        for xi in (Q(19,50),Q(38858,100000),Q(39,100)):
            for M in (Q(-1),Q(0),Q(2,3),Q(1),Q(2)):
                for ell in (Q(-1),Q(0),Q(1,6),Q(1,3),Q(1)):
                    r=p.comparison_witness(xi,M,ell)
                    self.assertGreater(r['weighted_gain_needed_for_five_sixths'],0)
                    self.assertEqual(r['L0']-Q(5,6),r['direct_margin_above_five_sixths'])
                    count+=1
        self.assertEqual(count,75)

    def test_direct_length_obstruction_even_with_perfect_nonprincipal_count(self):
        for ell in (Q(1,10),Q(1,6),Q(1,3)):
            for gap in (Q(1,1000),Q(1,10),Q(1)):
                r=p.comparison_witness(Q(38858,100000),2*ell+gap,ell)
                self.assertGreater(r['L0'],Q(5,6))

    def test_relaxed_nonprincipal_threshold(self):
        xi=Q(38858,100000)
        r=p.comparison_witness(xi,Q(2,3),Q(1,3))
        self.assertEqual(r['L0'],Q(5,6)); self.assertEqual(r['LK'],Q(5,6))
        self.assertEqual(r['H']-Q(5,6),xi-Q(1,6))
        self.assertEqual(r['wH']*(xi-Q(1,6)),r['weighted_gain_needed_for_five_sixths'])
        self.assertGreater(xi-Q(1,6),Q(2219,10000))

    def test_invalid_comparison_class(self):
        for xi in (0,1,Q(1,6)):
            with self.assertRaises(ValueError):
                p.comparison_witness(xi,1,0)

    def test_sharper_log_power_constants(self):
        r=p.bound_parameters([2,3])
        self.assertEqual(r['prime_product'],6)
        self.assertEqual(r['reciprocal_divisor_mass'],2)
        self.assertEqual(r['core_tail_coefficient_without_alpha'],(3*5)**2*4)
        self.assertEqual(r['mixed_tail_coefficient_without_alpha'],54*3*5*4*2)
        self.assertEqual(r['mixed_log_power']-2,Q(27,20))
        self.assertEqual(r['core_log_power'],2*r['mertens_log_power'])

    def test_improper_tail_derivative_thresholds(self):
        for exponent in (Q(47,10),Q(67,20)):
            self.assertGreater(Q(1,3)-exponent/385,Q(1,4))
        self.assertLess(Q(488346,100000),5)

    def test_filter_leading_coefficient(self):
        # Exact reduction modulo alpha^2=1/2:
        # 2*(1-alpha)-2*alpha*(alpha-1/2) = 1-alpha.
        constant=Q(2)-2*Q(1,2)
        alpha_coefficient=Q(-2)+1
        self.assertEqual((constant,alpha_coefficient),(1,-1))


if __name__=='__main__':
    unittest.main()
