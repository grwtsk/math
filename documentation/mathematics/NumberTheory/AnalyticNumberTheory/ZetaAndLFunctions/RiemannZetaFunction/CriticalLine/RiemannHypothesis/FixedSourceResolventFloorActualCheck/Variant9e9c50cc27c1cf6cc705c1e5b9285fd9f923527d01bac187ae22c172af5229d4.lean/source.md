# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FixedSourceResolventFloorActualCheck.Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10a064729fda5c9e85eaa0eb07e3276ef61be498` · SHA-256 `9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
import FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
import FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolventKernel
set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
open PositiveResolventKernel SourceResolventTruncation

/-- An actual adjoint-kernel vector contributes its full reference overlap to every source mass. -/
theorem sourceMass_kernel_overlap_le (u : H) (hu : u ≠ 0)
    (hTu : sourceOperator.adjoint u = 0) (α : ℝ) (hα : 0 < α) :
    ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 ≤ sourceMass α := by
  apply kernel_witness_regularizedMass_le sourceEnergy sourceEnergy_isPositive α hα
    referenceVector u hu
  rw [sourceEnergy_apply, hTu, map_zero]

/-- Every original occurrence to the right gives the exact positive overlap floor, at all rates. -/
theorem occurrence_sourceMass_floor (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hcoefficient, _⟩ := occurrence_reference_visible_kernel o ho
  rw [← hcoefficient]
  exact sourceMass_kernel_overlap_le u hu hTu α hα

/-- An actual off-line zero to the right supplies one strictly positive floor for all parameters. -/
theorem nontrivial_sourceMass_uniform_positive_floor (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hc⟩ := nontrivial_reference_visible_kernel ρ hρ hρre
  refine ⟨‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2, hc, ?_⟩
  intro α hα
  exact sourceMass_kernel_overlap_le u hu hTu α hα

end FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

namespace FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential

open PositiveResolventKernel SourceResolventTruncation

example (u : H) (hu : u ≠ 0)
    (hTu : sourceOperator.adjoint u = 0) (α : ℝ) (hα : 0 < α) :
    ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 ≤ sourceMass α := sourceMass_kernel_overlap_le u hu hTu α hα

example (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := occurrence_sourceMass_floor o ho α hα

example (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := nontrivial_sourceMass_uniform_positive_floor ρ hρ hρre

example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤
      α * (inner ℂ referenceVector
        (Ring.inverse (sourceOperator.comp sourceOperator.adjoint +
          (α : ℂ) • (1 : H →L[ℂ] H)) referenceVector)).re :=
  occurrence_sourceMass_floor o ho α hα

end FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor


set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa5884d0968d5d480fd06c8fab7f977acad605ea3bdd09d1a548c190a701c9ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorActualCheck/Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
