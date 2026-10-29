
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
