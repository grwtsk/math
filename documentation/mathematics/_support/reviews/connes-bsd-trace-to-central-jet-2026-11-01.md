# Connes--BSD: signed local log derivative and central jet annihilator (2026-11-01)

Local attribution: grwtsk contributors. Status: SOURCE_PROOF_CANDIDATES; Lean compilation NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN. BSD-I and BSD-II OPEN. No full arithmetic-to-analytic source comparison is claimed.

## Precise prior art and corrected reference

- Alain Connes, *Trace formula in noncommutative geometry and the zeros of the Riemann zeta function*, Selecta Math. 5 (1999), 29--106, DOI 10.1007/s000290050042, arXiv:math/9811068. Adelic zeta absorption/explicit-formula programme.
- Anton Deitmar, *A Polya--Hilbert operator for automorphic L-functions* (1999), arXiv:math/9903061, Theorem 3.16, automorphic spectral-zero realization and multiplicity cutoff.
- Dihua Jiang and Zhilin Luo, *Certain Fourier operators and their associated Poisson summation formulae on GL1*, Pacific Journal of Mathematics 326 (2023), 301--372, DOI 10.2140/pjm.2023.326.301, arXiv:2108.03566. **Spectral zero correspondence is THEOREM 8.1, printed p. 366, not Theorem 8.2.** LEMMA 8.2, printed p. 367, is density of compactly supported smooth convolutions of theta test functions. Theorem 8.1 specifies the strict cutoff m < (1+delta)/2 and m <= the true L-zero multiplicity.
- SGA 4 1/2, Expose II, section 3, Theorems 3.1--3.2, https://grothendiecksga.com/read/sga4.5/en/II_3.html : the genuine cohomological Frobenius trace and determinant/L-function interpretation. A count-defined 2x2 companion matrix is NOT automatically the actual geometric Frobenius operator.
- The exact record elliptic curve #4239 and its 7/19 counts retain original authorship to Noam D. Elkies, Zev Klagsbrun and Samuel Li in the existing Record4239Curve.lean.

## Signed local trace-to-Euler derivation

The existing genuine integral record count gives a_q=q+1-N_q and P_q(T)=1-a_q*T+q*T^2, as in EllipticFiniteEulerWindow.lean. Let t_0=2, t_1=a_q and t_(n+2)=a_q*t_(n+1)-q*t_n using EXISTING extensionTrace. Define F_q(T)=sum_(n>=1)t_n*T^n. The coefficients of P_q(T)*F_q(T) are 0 at degree 0, a_q at degree 1, -2q at degree 2, and 0 at all higher degrees by the recurrence. Thus the complete exact formal-power-series identity is:

    P_q(T)*F_q(T) = a_q*T-2q*T^2 = -T*P_q'(T).

Since P_q(0)=1, F_q(T)=-T*P_q'(T)/P_q(T). In Mathlib's actual PowerSeries ring, directSeries is the inverse of goodSeries. The new source candidate consequently derives logTraceSeries=directSeries*logTraceNumerator, and under ACTUAL minimal-model good reduction replaces directSeries by W.localPowerSeries R with the precise localSize/localCount source. This is not an artificial stand-in for the real local Euler producer.

Source candidate file: GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticConnesLogDerivative.lean; declarations logTraceCoeff, logTraceSeries, logTraceNumerator, traceProductCoeff, traceProductCoeff_zero/one/two/high, goodSeries_mul_logTraceSeries_coeff, goodSeries_mul_logTraceSeries, logTraceSeries_eq_inverse_times_numerator, native_good_local_log_trace, finite_good_center_nonzero, record_seven_nineteen_center_positive.

Mathematical analytic consumer: in a region where convergence/differentiation is separately established, good-prime contributions to -L'/L are (log p)*sum_(n>=1)t_(p,n)*p^(-ns). The bad primes, genuine Frobenius cohomology, global automorphic identification, normal convergence and archimedean completion are NOT supplied by this identity; especially -L'/L has a pole at a central zero and cannot be evaluated at s=1 by substituting into the Euler series.

Exact independent integer diagnostic: q=7,N=13 gives a=-5 and t_0..t_5=(2,-5,11,-20,23,25); q=19,N=27 gives a=-7 and t_0..t_5=(2,-7,11,56,-601,3143). These are signed trace sources, not positive Gram traces. For any q>0, N_q>0, P_q(1/q)=N_q/q>0. At the original two-prime record window P_7(1/7)*P_19(1/19)=351/133>0. All finite such windows are NONZERO at the center. Central vanishing necessarily involves global analytic structure; the finite prime count is insufficient. This is a real hostile boundary against a falsely claimed finite spectral BSD proof.

## Central jet annihilation and restricted test-space failure

Let c_n be actual Taylor coefficients of the genuine, analytically continued elliptic L-function around s=1, and b_n the coefficients of a test germ. Define h_n=sum_(k=0)^n c_k*b_(n-k) retaining all mixed terms. There is an exact all-test equivalence for any r>=0:

    (for every j<r, c_j=0)
       iff
    (for every test sequence b, and every j<r, h_j=0).

Forward follows since k<=j<r in each convolution term; reverse chooses test b=1. If c_r!=0, the unit test reveals the first nonzero Taylor coefficient, so the exact analytic order is detected rather than assigned.

But for the RESTRICTED test family b_0=0, every h_0 vanishes even with source c=1 (which has c_0=1). Thus a restricted family can fabricate a vanishing test result: one cannot import the all-test converse into an adelic theta/Mellin-image quotient without proving its density/richness in exactly the appropriate topology and jet order. This is why Jiang--Luo Theorem 8.1 and Lemma 8.2 must be applied to the genuine chosen test space, not merely cited.

Source candidate file: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConnesCentralJetAnnihilator.lean; declarations coeffConvolution, unitGerm, coeffConvolution_unit, vanishesBelow, jet, coeffConvolution_vanishesBelow, jet_convolution_zero, vanishesBelow_iff_all_test_jets, exact_order_distinguished_by_unit, restricted_test_family_false_detection.

Mathematically, if f(z)=z^r*u(z) with u(0)!=0 in the actual holomorphic local ring at the central point, O/(f) is isomorphic to O/(z^r) and has dimension r. The local-jet dual is a correct analytic multiplicity target; a spectral generalized eigenspace may contain Jordan chains and cannot be replaced with ker D absent a semisimplicity proof. The source only proves finite convolution arithmetic, not the construction of the actual L germ, theta quotient, or any associated Hilbert structure.

## Essential BSD obstruction unchanged

The desired comparison Phi_E must start with the actual Mordell--Weil lattice and its Neron--Tate pairing and land in the genuine central analytic jet dual or the proven Jiang--Luo central generalized zero space, preserving the canonical regulator/covolume. No Phi_E is supplied by these finite results, nor by a chosen same-dimension basis. Genuine high-rank Selmer/height correspondences, period, Tamagawa, torsion and Sha correction factors are independent BSD-II obligations. Gross--Zagier/Kolyvagin supply a restricted rank-one sanity check, not arbitrary rank.

The imports and pinned dependencies are those of grwtsk/math: Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Both source files have zero added sorry and zero new axiom declarations, but parsing, compilation, kernel verification and transitive axiom auditing are all NOT_RUN. Do not add root GRWTSK.lean imports or assert BSD completion. Verify the exact source blobs before any promotion. No execution was dispatched. Source publication, mathematical analysis and formal acceptance are separate.
