-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleProfile.Variant9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ScaleProfile.Variant9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-counterterm/source/FormalResearch/RiemannHypothesis/SourceScaleVariation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy
import FormalResearch.RiemannHypothesis.SourceHankelReflection

/-!
# Literal source variation with the scale

The actual polynomial source has C¹ scale regularity at every positive scale,
including its moving support seams. This is not an assertion of C∞ regularity,
nor a signed arithmetic or scale-flux estimate.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleProfile.Variant9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceScaleVariation

open SourcePairing GevreyPolynomial SourceDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

/-- The original normalized differential operator in literal dilation coordinates. -/
def scaleProfile (A x : ℝ) : ℝ :=
  ((deriv (deriv sourceBump) (x / A) / A ^ 2 - sourceBump (x / A) / 4) /
    Real.sqrt A) / Real.sqrt (sourceNormalization A)

/-- The scale formula equals the actual source; no smooth substitute is introduced. -/
theorem scaleProfile_eq_source {A : ℝ} (hA : 0 < A) (x : ℝ) :
    scaleProfile A x = normalizedTest explicitSecondDerivative A x := by
  rw [← normalizedOperator_sourceBump_eq hA]
  unfold GevreyNormalization.normalizedOperator
  rw [normalization_sourceBump_eq hA,
    GevreyNormalization.dilationOperator_eq sourceBump_contDiff]
  rfl

/-- The exact source normalization remains strictly positive at positive scales. -/
theorem sourceNormalization_pos {A : ℝ} (hA : 0 < A) :
    0 < sourceNormalization A := by
  unfold sourceNormalization
  positivity

/-- C¹ variation in scale, including the source support seams. -/
theorem scaleProfile_contDiffAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => scaleProfile B x) A := by
  have h2 : ContDiff ℝ 1 (deriv (deriv sourceBump)) :=
    sourceBump_contDiff_three.deriv'.deriv'
  have h0 : ContDiff ℝ 1 sourceBump := sourceBump_contDiff_three.of_le (by norm_num)
  have hn := sourceNormalization_pos hA
  unfold scaleProfile sourceNormalization
  fun_prop (disch := first | positivity | exact hA.ne' | exact hn.ne')

/-- The actual source has the proved scale regularity throughout the positive-axis domain. -/
theorem source_contDiffAt_scale {A : ℝ} (hA : 0 < A) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => normalizedTest explicitSecondDerivative B x) A := by
  apply (scaleProfile_contDiffAt hA x).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact (scaleProfile_eq_source hB x).symm

/-- Literal source scale regularity on the positive axis. -/
theorem source_contDiffOn_scale (x : ℝ) :
    ContDiffOn ℝ 1 (fun A : ℝ => normalizedTest explicitSecondDerivative A x)
      (Set.Ioi 0) := fun _ hA => (source_contDiffAt_scale hA x).contDiffWithinAt

/-- Fixed finite forward inventories vary with the actual C¹ source. -/
theorem forwardProfile_contDiffAt_scale {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => SourceHankelReflection.forwardProfile B s c x) A := by
  classical
  apply ContDiffAt.sum
  intro n _
  exact contDiffAt_const.mul (source_contDiffAt_scale hA (x - Real.log n))

/-- Fixed finite reflected inventories preserve the same scale regularity and signs. -/
theorem reflectedProfile_contDiffAt_scale {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => SourceHankelReflection.reflectedProfile B s c x) A := by
  classical
  apply ContDiffAt.sum
  intro n _
  exact contDiffAt_const.mul (source_contDiffAt_scale hA (x + Real.log n))

/-- The complete fixed-inventory pointwise interaction varies jointly with the source. -/
theorem profileProduct_contDiffAt_scale {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => SourceHankelReflection.forwardProfile B s c x *
      SourceHankelReflection.reflectedProfile B t d x) A :=
  (forwardProfile_contDiffAt_scale hA s c x).mul
    (reflectedProfile_contDiffAt_scale hA t d x)

/-- A continuous real cutoff is locally constant under natural floor away from its lower event. -/
theorem floor_eventually_eq_of_strict_lower {f : ℝ → ℝ} {A : ℝ}
    (hf : ContinuousAt f A) (hlo : (⌊f A⌋₊ : ℝ) < f A) :
    ∀ᶠ B in nhds A, ⌊f B⌋₊ = ⌊f A⌋₊ := by
  have hl : ∀ᶠ B in nhds A, (⌊f A⌋₊ : ℝ) < f B :=
    hf.eventually (eventually_gt_nhds hlo)
  have hu : ∀ᶠ B in nhds A, f B < (⌊f A⌋₊ : ℝ) + 1 :=
    hf.eventually (eventually_lt_nhds (Nat.lt_floor_add_one (f A)))
  filter_upwards [hl, hu] with B hB hB'
  exact (Nat.floor_eq_iff ((Nat.cast_nonneg _ : (0 : ℝ) ≤ ⌊f A⌋₊).trans hB.le)).2
    ⟨hB.le, hB'⟩

end
end FormalResearch.RiemannHypothesis.SourceScaleVariation
