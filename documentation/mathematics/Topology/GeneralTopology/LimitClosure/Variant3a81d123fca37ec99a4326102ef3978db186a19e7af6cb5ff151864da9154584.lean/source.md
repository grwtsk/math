# Complete source: GRWTSK.Topology.GeneralTopology.LimitClosure.Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f5ed38e6b601986f3b31b98607985a59a50a050` · SHA-256 `3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily

/-!
# Normalized weak-star limit closure

Uniform finite-cut square-root estimates bound the normalized functionals.
They do not assert convergence of the unnormalized discrepancies.  A fixed or
compatibly transported test space and a weak-star compactness certificate
produce the bounded limit functional.
-/

namespace Mathematics.StratifiedBoundary.SquareRoot

open Filter
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure UniformCofinalScaleCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (family :
      OrdinalFamilySquareRootCertificate system) where
  massCofinal :
    Tendsto family.mass atTop atTop
  normalization : Nat → ℝ
  normalization_eq :
    ∀ stage,
      normalization stage =
        Mathematics.MobiusOntology.squareRootWeight
          (family.mass stage)
          family.logarithmicOrder
  normalizationPositive :
    ∀ stage,
      0 < normalization stage
  uniformAlongRegisteredCofinalSequence : Prop
  uniformityProof :
    uniformAlongRegisteredCofinalSequence

structure NormalizedLimitCompatibilityCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (family :
      OrdinalFamilySquareRootCertificate system) where
  cofinalScale :
    UniformCofinalScaleCertificate family
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test,
      0 ≤ testNorm test
  stageFunctional :
    Nat → TestFunction → ℂ
  stageFunctionalIsNormalizedDiscrepancy :
    Prop
  normalizationProof :
    stageFunctionalIsNormalizedDiscrepancy
  stageBound :
    ∀ stage test,
      Complex.abs (stageFunctional stage test) ≤
        family.uniformConstant * testNorm test
  testSpaceCompatibleAcrossStages : Prop
  testCompatibilityProof :
    testSpaceCompatibleAcrossStages
  normalizedFamilyWeakStarCompact : Prop
  compactnessProof :
    normalizedFamilyWeakStarCompact
  limitFunctional :
    TestFunction → ℂ
  weakStarConverges :
    ∀ test,
      Tendsto
        (fun stage =>
          stageFunctional stage test)
        atTop
        (𝓝 (limitFunctional test))
  limitBound :
    ∀ test,
      Complex.abs (limitFunctional test) ≤
        family.uniformConstant * testNorm test
  unnormalizedLimitClaimed : Bool := false
  unnormalizedLimitNotClaimed :
    unnormalizedLimitClaimed = false := by
      rfl

abbrev LimitNormCompatibilityCertificate :=
  NormalizedLimitCompatibilityCertificate

def NormalizedLimitBounded
    {TestFunction : Type uTest}
    (testNorm : TestFunction → ℝ)
    (functional : TestFunction → ℂ) : Prop :=
  ∃ constant : ℝ,
    0 ≤ constant ∧
      ∀ test,
        Complex.abs (functional test) ≤
          constant * testNorm test

theorem normalized_limit_square_root_bound
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {family :
      OrdinalFamilySquareRootCertificate system}
    (certificate :
      NormalizedLimitCompatibilityCertificate family) :
    NormalizedLimitBounded
      certificate.testNorm
      certificate.limitFunctional :=
  ⟨family.uniformConstant,
    family.uniformConstantNonnegative,
    certificate.limitBound⟩

theorem normalized_limit_inherits_uniform_constant
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {family :
      OrdinalFamilySquareRootCertificate system}
    (certificate :
      NormalizedLimitCompatibilityCertificate family)
    (test : TestFunction) :
    Complex.abs (certificate.limitFunctional test) ≤
      family.uniformConstant *
        certificate.testNorm test :=
  certificate.limitBound test

end Mathematics.StratifiedBoundary.SquareRoot
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71d8bfe45d54d8727d1cb04fe43369ced6ae36a81502a1079237cd008eeb2474 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
