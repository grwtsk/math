# Complete local elliptic power-series inversion and native good-reduction comparison

Mathematical attribution: grwtsk contributors. Date: 2026-11-01.
Status: complete paper proof at genuine good-reduction scope; Lean SOURCE_PROOF_CANDIDATE (compilation/kernel/axiom NOT_RUN); numeric 7-adic count identification still OPEN.

## Abstract

The exact integer recurrence c0=1, c1=a, c(n+2)=a*c(n+1)-q*c(n), where a=q+1-N for the original good-reduction point count, constructs the actual Mathlib power series F=PowerSeries.mk c. An all-degree coefficient calculation proves P*F=1 for the genuine polynomial P=1-aX+qX², then the actual Mathlib PowerSeries.invOfUnit_mul theorem and associativity prove F=PowerSeries.invOfUnit P 1. On any discrete valuation ring R with fraction field K and a Weierstrass curve W whose CHOSEN MINIMAL MODEL has good reduction, Mathlib's own localPolynomial is exactly this P with q the actual residue-field cardinal and N the count of its minimal reduction. Thus Mathlib's true localPowerSeries R W equals the full integer recurrence power series. The selected seven-adic rank-32 model has a conditional numeric specialization: independent proof of minimal-model good reduction and equality between its point count and the original source plane count remains OPEN. The residue-field size equality q=7 has an additional Lean proof candidate from Mathlib's actual PadicInt residue-field equivalence.

## 1. Exact mathematical proof, every exponent

Let N be the group order of a specified good reduction over a residue field of size q. Set a=q+1-N and define P(T)=1-aT+qT² in ℤ[T]. Let F(T)=∑_(n≥0)c_n T^n in ℤ[[T]], with c0=1, c1=a, c_(n+2)=a c_(n+1)-q c_n. Coefficient comparison yields:

- degree 0: c0=1;
- degree 1: c1-a c0=0;
- degree n+2: c_(n+2)-a c_(n+1)+q c_n=0.

Therefore P*F=1 as an identity of actual formal power series, without analytic convergence. P has constant coefficient the unit 1. Mathlib PowerSeries.invOfUnit_mul gives (invOfUnit P 1)*P=1. Hence
F=1*F=((invOfUnit P 1)*P)*F=(invOfUnit P 1)*(P*F)=invOfUnit P 1.
This argument constructs the inverse of the exact prescribed coefficients, not an arbitrary conditional supplier.

The preceding local source keeps c2=a²-q, reciprocal polynomial square b2=q, and Frobenius second trace t2=a²-2q=c2-b2 distinct. No trace-square term is omitted.

## 2. Actual native Weierstrass local factor at a specified good place

Pinned Mathlib source Mathlib/AlgebraicGeometry/EllipticCurve/LFunction.lean (Git blob de7b33670abe4c6af2a0dcc6cdd1696f42ee5738) defines localPolynomial by taking the actual chosen minimal Weierstrass model W.minimal R. Its good branch is 1-C(q+1-N)*X+C(q)*X², where q=Nat.card(IsLocalRing.ResidueField R) and N=Nat.card(((W.minimal R).reduction R).toAffine.Point). Its actual localPowerSeries is PowerSeries.invOfUnit (W.localPolynomial R) 1.

The new theorem localPolynomial_good unfolds this native definition, conditional on precisely the native good-reduction predicate (W.minimal R).HasGoodReduction R. The theorem localPowerSeries_good combines this with the all-degree inverse theorem; localPowerSeries_coeff_good identifies every coefficient with directCoeff q N. The ring and field are fully typed, including CommRing, IsDomain, IsDiscreteValuationRing, Field, Algebra and IsFractionRing. No arbitrary surrogate factor, conjectural Euler asymptotic or nil remainder is assumed. Bad local branches are separate and do not satisfy this quadratic identity.

For the concrete seven-adic place, the actual types are Mathlib PadicInt 7 and Padic 7, and the chosen curve has the original coefficients (a1,a2,a3,a4,a6)=(1,0,0,-A,B). The source theorem recordSevenPadic_localPowerSeries supplies the true native local factor under the visible hypothesis that the chosen minimal model has good reduction. To assert it equals directSeries 7 13, recordSevenPadic_localPowerSeries_of_count additionally requires agreement between the cardinality of the actual minimal reduction and the original integer-model mod-7 enumeration (Record4239.reducedPointCount 7 =13). The new sevenPadic_residue_card proof candidate constructs q=7 from the actual PadicInt.residueField ring equivalence with ZMod 7; its Lean elaboration is NOT_RUN. Good reduction and the minimal-model point-count transport are NOT proven in this increment. It would be incorrect to treat the previously proved nonzero integral discriminant and raw source point count as an automatically supplied *formal* minimal-model isomorphism.

## 3. Source comparison, hostile checks, and consumer

At record source primes 7 and 19 the existing point count proofs give traces -5 and -7, direct c2 values 18 and 30, and second Frobenius recurrence t2=11 in each case. Dropping qT² changes c2 to a² and violates the original arithmetic identity t2=c2-q. Replacing a bad-reduction linear or constant factor by this quadratic gives the wrong local Dirichlet coefficients. A nonminimal Weierstrass reduction without an isomorphism of smooth fibers does not license a transfer of raw plane point counts into the native local count.

The genuine consumer is the Mathlib L-function's existing local Euler factor and its ArithmeticFunction.ofPowerSeries realization. What is complete here is the exact source coefficient inverse for any good-reduction local factor. What is not supplied is an independent all-prime arithmetic cancellation estimate, full global multiplicativity proof of normalized coefficients, analytic continuation, zero counting, or BSD.

## 4. Pinned source, Lean declarations and verification status

New source GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPowerSeriesLocalFactor.lean, namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries.

Main source candidates: goodPolynomial, goodSeries, directSeries, goodSeries_mul_directSeries_coeff, goodSeries_mul_directSeries, goodSeries_constantCoeff, directSeries_eq_invOfUnit, localPolynomial_good, localPowerSeries_good, localPowerSeries_coeff_good, recordSevenPadic, sevenPadic_residue_card, recordSevenPadic_localPowerSeries, recordSevenPadic_localPowerSeries_of_count.

Existing imported mathematical source GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticLocalEulerCoefficientInversion.lean (blob ccb52cf5c8a419200e785d1a41e3fd8aaa0b348d); earlier EllipticFiniteEulerWindow.lean (blob 48e14ca731bd9b13f8373eea7521e746cb3eab93). Upstream Mathlib PowerSeries inverse theorem and coefficient API pinned in Mathlib/RingTheory/PowerSeries/Inverse.lean blob aaec95803dbec7ee3e249fd418ac60e8e7dec58a and Mathlib/RingTheory/PowerSeries/Basic.lean blob 8706d745321340c2be9314489d81a1631709d839, at Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612. Seven-adic ring structure: Mathlib/NumberTheory/Padics/PadicIntegers.lean blob d96ac499b84ac998f26f2bb126553453aacba972.

The paper proof of the universal good-local theorem is complete mathematical algebra using exact Mathlib definitions. The Lean file is a SOURCE_PROOF_CANDIDATE, NOT kernel accepted. Compilation NOT_RUN; expected-interface check NOT_RUN; fresh kernel checking NOT_RUN; transitive axiom audit NOT_RUN. The numeric source-to-minimal-model seven-adic bridge is also NOT_PROVED. Native verifier controller, scheduler, CI, force push and foreign repository mutation: NOT_RUN. No historical source status is promoted.

The first remaining explicit arithmetic lemma for the concrete record example is: show that the base-changed integral record model is a good minimal model over PadicInt 7 and that its smooth reduction has exactly the 13 points already enumerated over ZMod 7. Only after that model identification, and formal acceptance of the residue-size proof candidate, may the 7-adic numeric local factor be claimed unconditionally. Existing BSD verification issue #1550 covers the predecessor; rank-32 descent issue #1049 is unaffected.

This is a source-exact formalization of classical local Euler algebra, not a novel analytic estimate. For external background see Goldfeld's conditional elliptic Euler product criterion, as reviewed in Arshay Sheth, Euler Product Asymptotics for L-functions of Elliptic Curves (2025), DOI https://doi.org/10.1093/imrn/rnaf214. No unconditional BSD or elliptic RH theorem is inferred.
