# Complete Literal Positive Density Native Off Grid Countermodel Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e22936d6338a5e35d624c506e5e5cdc319f5c0a` · SHA-256 `1c2c13790a8e8674b1191e51980648d57ab7598ef2c41c33ac67cdf82d408014`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridCorrectionBounds
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridDensityReadout

/-!
# Complete literal positive-density native off-grid countermodel

The fixed density, unchanged source correlation, full x-domain readout,
exact phase carrier and uniform correction bounds are consumed together.
Every integer n>=100 has negative readout; every half-integer n+1/2 has
readout at least (9/8)*exp((n+1/2)/2)/(n+1/2)^9. Positivity, smoothness and
the power-saving counting envelope are retained in one existential witness.
Human unchanged-source and uniform-quantifier direction: grwtsk contributors.
Local complete consumer: OpenAI Codex. This is a deliberately different
smooth counting measure; it does not refute actual Mangoldt arithmetic,
provide a signed exceptional-Gram lower bound or prove RH.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCountermodel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization MeasureTheory NativeOffGridDensity NativeOffGridCounting
open NativeOffGridPhaseCarrier NativeOffGridModeBounds NativeOffGridCorrectionBounds
open NativeOffGridDensityReadout ActualComplexLaplacePrimitive
noncomputable section

/-- The comparison readout in this module, with the following exact parameterization.

def comparisonReadout (v : ℝ → ℝ) (A : ℝ) : ℝ := ∫ x in (1 : ℝ)..Real.exp (2 * A), x ^ (-(1 /
2) : ℝ) * sourceCorrelation explicitSecondDerivative A (Real.log x) * v x
-/
def comparisonReadout (v : ℝ → ℝ) (A : ℝ) : ℝ :=
  ∫ x in (1 : ℝ)..Real.exp (2 * A), x ^ (-(1 / 2) : ℝ) *
    sourceCorrelation explicitSecondDerivative A (Real.log x) * v x

theorem literal_integer_native_readout_negative (n : ℕ) (hn : 100 ≤ n) :
    densityReadout (n : ℝ) < 0 := by
  have hA : (100 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have h := literal_native_density_full_moment_error (by linarith : 1 ≤ (n : ℝ))
  rw [literal_integer_selected_source_formula n (by linarith : 1 ≤ (n : ℝ))] at h
  simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re, Complex.neg_im,
    Complex.ofReal_im, neg_zero, zero_mul, sub_zero] at h
  have hr := (literal_endpoint_correction_square_real_bounds hA).1
  have hM := literal_mode_magnitude_gt_eight hA
  have hu := (abs_le.mp h).2
  nlinarith

theorem literal_half_integer_native_readout_lower (n : ℕ) (hn : 100 ≤ n) :
    (9 / 8) * (Real.exp (((n : ℝ) + 1 / 2) / 2) / ((n : ℝ) + 1 / 2) ^ 9) ≤
      densityReadout ((n : ℝ) + 1 / 2) := by
  have hnR : (100 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have hA : (100 : ℝ) ≤ (n : ℝ) + 1 / 2 := by linarith
  have h := literal_native_density_full_moment_error (by linarith : 1 ≤ (n : ℝ) + 1 / 2)
  rw [literal_half_integer_selected_source_formula n (by linarith : 1 ≤ (n : ℝ) + 1 / 2)] at h
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] at h
  have hr := (literal_endpoint_correction_square_real_bounds hA).1
  have hM := literal_mode_magnitude_gt_eight hA
  have hML := literal_mode_magnitude_lower hA
  have hl := (abs_le.mp h).1
  have hquarter : (1 / 4) * modeMagnitude ((n : ℝ) + 1 / 2) ≤
      densityReadout ((n : ℝ) + 1 / 2) := by nlinarith
  nlinarith

theorem literal_density_comparison_readout (A : ℝ) :
    comparisonReadout density A = densityReadout A := rfl

theorem literal_positive_native_offgrid_countermodel :
    ∃ v : ℝ → ℝ,
      (∀ (k : WithTop ℕ∞) (x : ℝ), 0 < x → ContDiffAt ℝ k v x) ∧
      (∀ x : ℝ, 1 ≤ x → 1 / 2 ≤ v x ∧ v x ≤ 3 / 2) ∧
      (∀ x : ℝ, 1 ≤ x → |(∫ y in (1 : ℝ)..x, v y) - x| ≤ (4 / 3) * x ^ (3 / 4 : ℝ)) ∧
      (∀ n : ℕ, 100 ≤ n → comparisonReadout v (n : ℝ) < 0) ∧
      (∀ n : ℕ, 100 ≤ n →
        (9 / 8) * (Real.exp (((n : ℝ) + 1 / 2) / 2) / ((n : ℝ) + 1 / 2) ^ 9) ≤
          comparisonReadout v ((n : ℝ) + 1 / 2)) := by
  refine ⟨density, literal_density_smooth_at, ?_, ?_, ?_, ?_⟩
  · intro x hx
    exact literal_density_positive_bounds hx
  · intro x hx
    exact literal_counting_error_power_envelope hx
  · intro n hn
    rw [literal_density_comparison_readout]
    exact literal_integer_native_readout_negative n hn
  · intro n hn
    rw [literal_density_comparison_readout]
    exact literal_half_integer_native_readout_lower n hn

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCountermodel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea2e1ab283ca7dd723d4b94185b41c32929da42765669dc59380ed67e66d93c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCountermodel/Variant1c2c13790a8e8674b1191e51980648d57ab7598ef2c41c33ac67cdf82d408014.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
