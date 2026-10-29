# Delta Convergence Literal Snippet — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb91b0e0b93ba501e50ca1716956a06cb9aecb42` · SHA-256 `a338e8538d4a6bfd2bcaee8430a7a33934ecf3b00214b443aabfffed9d4fcf3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

namespace SourceFilterDeltaConvergenceLiteral
open MeasureTheory Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta MobiusSourceFilterQuotient SourceFilterDeltaConvergenceScratch
noncomputable section
example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryFilter ε h t‖ ≤ 2 * Real.exp 1 / ‖1 + (t : ℂ) * Complex.I‖ :=
  boundaryFilter_norm_le ε h t hε hsmall hh
example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2 ≤
      (1 + 2 * Real.exp 1) ^ 2 * (1 + t ^ 2)⁻¹ :=
  boundaryFilter_error_sq_le ε h t hε hsmall hh
example (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    Integrable (fun t : ℝ =>
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) :=
  boundaryFilter_error_integrable ε h hε hsmall hh
example (ε h : ℝ) : deltaSq ε h =
    (1 / (2 * Real.pi)) * (∫ t : ℝ,
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) := rfl
example (ε h : ℝ) : delta ε h = Real.sqrt (deltaSq ε h) := rfl
example (ε h : ℕ → ℝ)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0))
    (t : ℝ) (ht : W ((t : ℂ) * Complex.I) ≠ 0) :
    Tendsto (fun j => boundaryFilter (ε j) (h j) t) atTop
      (nhds ((1 + (t : ℂ) * Complex.I)⁻¹)) := boundaryFilter_tendsto ε h hε hh t ht
example (ε h : ℕ → ℝ) (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4)
    (hhpos : ∀ j, 0 ≤ h j) (hε : Tendsto ε atTop (nhds 0))
    (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => deltaSq (ε j) (h j)) atTop (nhds 0) :=
  deltaSq_tendsto_zero ε h hεpos hεsmall hhpos hε hh
example (ε h : ℕ → ℝ) (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4)
    (hhpos : ∀ j, 0 ≤ h j) (hε : Tendsto ε atTop (nhds 0))
    (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => delta (ε j) (h j)) atTop (nhds 0) :=
  delta_tendsto_zero ε h hεpos hεsmall hhpos hε hh
end
end SourceFilterDeltaConvergenceLiteral
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c6ae1c928ba1422e8d5733acd60a3730b2e5a68eab045f646e225431132b322 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DeltaConvergenceLiteralSnippet/Varianta338e8538d4a6bfd2bcaee8430a7a33934ecf3b00214b443aabfffed9d4fcf3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
