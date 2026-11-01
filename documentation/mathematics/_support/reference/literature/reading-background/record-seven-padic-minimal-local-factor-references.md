# Record-curve 7-adic minimal local-factor references

Local attribution: grwtsk contributors. Research date: 2026-11-01.

## Repository sources

1. `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/Record4239Curve.lean`
   - exact integer constants \(A,B\);
   - exact finite count `Record4239.pointCount7`;
   - exact discriminant test `Record4239.goodAt7`;
   - no Mordell--Weil rank theorem.

2. `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticFiniteEulerWindow.lean`
   - actual integral model `FiniteEulerWindow.recordModel`;
   - source identities `recordModel_count` and `recordModel_discriminant`;
   - trace and finite Euler-factor consumers.

3. `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPowerSeriesLocalFactor.lean`
   - native Mathlib `localPolynomial` and `localPowerSeries` consumers;
   - conditional record-\(7\) theorem
     `recordSevenPadic_localPowerSeries_of_count`.

4. `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueFiberPorts.lean`
   - actual finite equation fiber `AffinePointFiber`;
   - exact count identity `affineFiber_card_add_one`.

5. `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticResidueFieldVariableChangePort.lean`
   - arbitrary field/DVR variable-change point equivalence;
   - fraction-field unit-scale descent;
   - good-reduction and reduction-count transport.

6. `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticFiberKernelComparison.lean`
   - exact source-preserving Möbius/elliptic packet comparison;
   - complete signed defect retained;
   - no cancellation estimate.

## Pinned Mathlib interfaces

Pinned revision: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

1. `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean`
   - `WeierstrassCurve.map_Δ`;
   - `WeierstrassCurve.map_map`;
   - injectivity of mapping along an injective ring homomorphism.

2. `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Basic.lean`
   - `Affine.equation_iff`;
   - `Affine.equation_iff_nonsingular_of_Δ_ne_zero`;
   - `Affine.map_nonsingular`.

3. `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean`
   - actual point type with the point at infinity and nonsingular affine points.

4. `Mathlib/AlgebraicGeometry/EllipticCurve/VariableChange.lean`
   - variable-change action;
   - discriminant covariance
     \(\Delta(C\cdot W)=C.u^{-12}\Delta(W)\).

5. `Mathlib/AlgebraicGeometry/EllipticCurve/Reduction.lean`
   - `IsIntegral`, `integralModel`, `IsMinimal`, `minimal`, `reduction`;
   - `valuation_Δ_aux` and its integral formula;
   - `HasGoodReduction`;
   - `exists_isMinimal`.

6. `Mathlib/RingTheory/Valuation/Discrete/IsDiscreteValuationRing.lean`
   - `associated_of_valuation_eq`, converting valuation-one fraction-field
     elements into images of DVR units.

7. `Mathlib/NumberTheory/Padics/RingHoms.lean`
   - `PadicInt.toZMod`;
   - `PadicInt.residueField`;
   - `PadicInt.toZMod_eq_residueField_comp_residue`.

## Classical background

- J. Silverman, *The Arithmetic of Elliptic Curves*, admissible changes of
  Weierstrass variables, minimal equations, good reduction and local factors.
- The local fact used here is standard: two good minimal equations related over
  the local field have unit scaling, so their reductions are isomorphic and
  have the same point count.

## Novelty boundary

The classical local-model theorem is not claimed as a new number-theoretic
discovery.  The programme-specific contribution is the exact formal source
chain from the published record model and count \(13\), through Mathlib's
noncomputably selected minimal model, to the native `localPolynomial` and
`localPowerSeries`, while retaining all existing evidence limits.

No global elliptic \(L\)-function equality, BSD theorem, Möbius cancellation,
all-positive-rate endpoint estimate, or RH conclusion is attributed to these
references.
