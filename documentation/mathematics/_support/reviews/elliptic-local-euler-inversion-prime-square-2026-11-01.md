# Degree-two elliptic local Euler inversion and the prime-square source distinction

Mathematical attribution: grwtsk contributors.
Research date: 2026-11-01.
Status: complete finite mathematical argument / Lean SOURCE_PROOF_CANDIDATE / no analytic BSD estimate.

## Abstract

The existing finite-Euler source identifies the good-prime count N_q=q+1-a_q and reciprocal polynomial P_q(T)=1-a_q T+q T². This increment supplies the entire integer coefficient sequence of the *direct* Euler local factor: c_0=1, c_1=a_q, c_(n+2)=a_q c_(n+1)-q c_n. The full coefficient of P_q(T) times the formal series ∑ c_n T^n is 1 in degree zero and 0 in every positive degree. Its prime-square observations are three distinct integers: direct c_2=a_q²-q, reciprocal b_2=q, and second trace t_2=a_q²-2q=c_2-b_2. For the existing record #4239 model, these are (18,7,11) at p=7 and (30,19,11) at p=19. The local arithmetic identity does not assert a new rank bound, elliptic analytic zero theorem, or BSD.

## 1. Exact theorem and proof

Let E have a specified integral Weierstrass model with good reduction and residue-field cardinality q, and an actual finite count certificate N_q. Let a=q+1-N_q. Define

  c_0=1, c_1=a, c_(n+2)=a c_(n+1)-q c_n;
  b_0=1, b_1=-a, b_2=q, b_n=0 for n>=3;
  t_0=2, t_1=a, t_(n+2)=a t_(n+1)-q t_n.

The complete coefficientwise identity in ℤ[[T]] is

  (1-aT+qT²) ∑_(n>=0) c_n T^n = 1.

**Proof:** the constant coefficient is c_0=1; the linear coefficient is c_1-a c_0=0. Every coefficient in degree n+2 is c_(n+2)-a c_(n+1)+q c_n=0 by the defining recurrence. Equality of formal series is coefficientwise; no convergence assumption or infinite rearrangement is needed. The new Lean source proves the three-case *coefficient packet* and all-degree vanishing; a separate PowerSeries.coeff_mul correspondence to actual formal-series multiplication remains an explicit Lean API proof task, not an unresolved arithmetic premise.

The first nontrivial direct coefficients are c_2=a²-q, c_3=a³-2qa. The actual second Frobenius recurrence is t_2=a²-2q, hence **t_2=c_2-b_2**. The direct coefficient c_2/p, reciprocal normalized coefficient b_2/p=1, and trace t_2/p must not be confused. The point-count source is fixed; this is not a free polynomial chosen to make the inversion hold.

## 2. Exact original curve fixtures and independent finite diagnostic

The source model is the original rank-32 *candidate* E: y²+xy=x³-Ax+B, with the published A and B retained in Record4239Curve.lean, source blob 9b489d813ddf451a7c8d164ca808fb569b29b5b8. The source count declarations give N_7=13 and N_19=27, so traces a_7=-5, a_19=-7.

| Source object | p=7 | p=19 |
|---|---:|---:|
| N_p | 13 | 27 |
| a_p | -5 | -7 |
| reciprocal b0,b1,b2,b3 | 1,5,7,0 | 1,7,19,0 |
| direct c0,c1,c2,c3 | 1,-5,18,-55 | 1,-7,30,-77 |
| t2=c2-b2 | 11 | 11 |

An offline exact-integer diagnostic independently enumerated residue pairs (x,y) from the published integral model and recovered the counts 13 and 27. For each prime, it checked the complete finite Cauchy coefficient of P(T)∑c_n T^n for n=0,...,64; all 65 coefficients matched Kronecker delta, and t_n=c_n-p c_(n-2) held for n=2,...,64. These are finite computational tests of the recurrence and not Lean elaboration, kernel acceptance or an all-exponents proof. The mathematical recurrence proves every exponent.

## 3. Genuine Goldfeld source consumer and first missing estimate

For a good Frobenius prime p with the actual Hasse–Weil eigenvalue theorem, the previous source-preserving logarithmic ledger is

  log P_p(p^-1) = -a_p/p - (a_p²-2p)/(2p²) + R_p.

Its quadratic term can now be read without conflating local coefficients:

  -(c_(p,2)-b_(p,2))/(2p²).

This is an exact finite arithmetic comparison. It does not bound the first trace prime sum, its centered second trace, or the actual analytic central vanishing order. The previous k>=3 absolutely summable logarithm remainder is unchanged. A pointwise O(p) estimate for c_2 only yields O(log log x) cumulative control and does not establish Goldfeld's required asymptotic exponent or constant.

The true degree-two Dirichlet coefficient system must still assemble multiplicatively over all primes, using separate bad local polynomials; a unitary-normalization Mellin bridge, zero-count infrastructure and conductor/gamma/root-number corrections remain open.

## 4. Independent 2-torsion alternative: already present in this repository

As an independent hostile calculation for record #4239, the *actual* 2-torsion cubic 4x³+x²-4Ax+4B becomes the monic z³+z²-16Az+64B after setting z=4x. Its seven values mod 7 are 2,2,3,4,4,2,4; it has no rational root by the integral rational-root theorem. It has no root mod 19 either, but **does** have the root z=3 mod 5. This is a source-specific proof, not a uniform all-prime statement.

Crucially, this arithmetic conclusion is not new: Record4239NegationObstruction.lean, blob 4b6667cff267f4957df954762291451582e6ce91, already proves no rational fixed affine point using another monic short-model cubic. Record4239NativeTwoTorsion.lean, blob bcb50256fecda780583fc70b7b2e6f854fd5323b, already provides the group-law theorem nativeNoTwoTorsion as a source proof candidate. The alternative calculation is retained here only as independent cross-check. No competing Lean curve, duplicate two-torsion module, or newly claimed Rank32 theorem is published. The exact missing Rank32 supplier remains the global two-descent character/SourceBitsMatch and integral independence.

## 5. Source correspondence, trust and remaining formal obligations

New source module:
GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticLocalEulerCoefficientInversion.lean
under namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerInversion.

Declarations include directPair, directCoeff, directCoeff_recurrence, directCoeff_two, directCoeff_three, localProductCoefficient, localProductCoefficient_succ, localProductCoefficient_eq_delta, trace_two_add_size_eq_direct_two, direct_two_sub_reciprocal_two and the record-direct/prime-square finite fixtures.

It imports unchanged EllipticFiniteEulerWindow.lean blob 48e14ca731bd9b13f8373eea7521e746cb3eab93 and reuses original Record4239Curve.lean. The actual Mathlib L function and power series producers are WeierstrassCurve.localPolynomial, WeierstrassCurve.localPowerSeries, PowerSeries.coeff_mul and PowerSeries.mk at Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; pinned LFunction.lean blob de7b33670abe4c6af2a0dcc6cdd1696f42ee5738.

**Source status:** Lean proof candidate, no new axiom or admitted hypothesis. **Compilation:** NOT_RUN. **Expected interfaces:** NOT_RUN. **Fresh kernel:** NOT_RUN. **Transitive axiom audit:** NOT_RUN. **Actual local minimal-model/PowerSeries transfer:** OPEN. **Analytic cancellation/BSD:** OPEN. The offline Python diagnostic is a separate finite computation. No Lean/controller/scheduler/CI run or external repository write. Do not promote this module into the public root until source-bound acceptance.

Baseline main at first inspection: 915dc1a8bd53d093204806283d453b0a141788df. Preserve subsequent unrelated concurrent changes by a refreshed non-force expected-head publication. Source commit and new blob IDs are recorded by exact readback, not predicted.

Prior art: classical Hasse–Weil local factors and Goldfeld's conditional theorem as described by Arshay Sheth, Euler Product Asymptotics for L-functions of Elliptic Curves (2025), https://doi.org/10.1093/imrn/rnaf214. This recurrence is elementary and is not claimed as a novel analytic theorem. Cross-references: grwtsk/math#1049 (Rank32), #1105 (CM/twists), #1530 and #1548 (different Liouville coefficients), and #132 (prismatic comparison remains optional).
