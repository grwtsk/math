-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PrimitiveContinuousOnIci.Varianta8000cac06d71726b3ffa7325bd13d76d416633d5ad5e2d09f749570db0df725","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8000cac06d71726b3ffa7325bd13d76d416633d5ad5e2d09f749570db0df725","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PrimitiveContinuousOnIci.Varianta8000cac06d71726b3ffa7325bd13d76d416633d5ad5e2d09f749570db0df725","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a8000cac06d71726b3ffa7325bd13d76d416633d5ad5e2d09f749570db0df725","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/RootActualXiConditionalComplexLaplace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualXiComplexLaplaceBudget
import SourceActualXiConditionalLaplace

/-!
The exact future average hypothesis extends genuine L1 and the finite-prefix
budget to the same literal actual complex Laplace transform. It does not supply
an arithmetic average witness or assert holomorphy or zero-free continuation.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.PrimitiveContinuousOnIci.Varianta8000cac06d71726b3ffa7325bd13d76d416633d5ad5e2d09f749570db0df725

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualXiConditionalComplexLaplace
open MeasureTheory Set Complex Filter
open scoped Topology
open RootActualXiTailPrimitive RootActualXiComplexLaplaceBudget
open SourceActualXiConditionalLaplace
noncomputable section

private theorem primitive_continuousOn_Ici :
    ContinuousOn actualAnchoredXiTailPrimitive (Ici (Real.log 7)) := by
  intro t ht
  change Real.log 7 ≤ t at ht
  have hb : Real.log 7 ≤ t + 1 := by linarith
  have hc := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).continuousOn
  rw [uIcc_of_le hb] at hc
  apply (hc t ⟨ht, by linarith⟩).mono_of_mem_nhdsWithin
  rw [← Ici_inter_Iic]
  exact inter_mem self_mem_nhdsWithin
    (nhdsWithin_le_nhds (Iic_mem_nhds (by linarith : t < t + 1)))

/-- The literal complex kernel norm is exactly the real weighted source norm. -/
theorem actualXiComplexLaplaceKernel_norm_eq (z : ℂ) (t : ℝ) :
    ‖(actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ))‖ =
      ‖actualAnchoredXiTailPrimitive t * Real.exp (-z.re * t)‖ := by
  rw [norm_mul, Complex.norm_real, Complex.norm_exp, norm_mul]
  simp only [mul_re, neg_re, ofReal_re, neg_im, ofReal_im, mul_zero, sub_zero]
  simp only [Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]

/-- Under the actual future average, every positive real part gives genuine complex L1. -/
theorem actualXiComplexLaplace_integrableOn_of_future_average {M T₀ : ℝ}
    (hM : 0 ≤ M) (hT₀ : Real.log 7 ≤ T₀)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
  have hr := (actualXiLaplace_integrableOn_of_future_average hM hT₀ hz haverage).norm
  have hc : ContinuousOn (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) :=
    ((Complex.continuous_ofReal.comp_continuousOn primitive_continuousOn_Ici).mul
      (by fun_prop)).mono Ioi_subset_Ici_self
  apply hr.mono' (hc.aestronglyMeasurable measurableSet_Ioi)
  filter_upwards [] with t
  exact (actualXiComplexLaplaceKernel_norm_eq z t).le

/-- The same literal transform keeps the proved real finite-prefix payment. -/
theorem actualXiComplexLaplace_norm_le_of_future_average {M T₀ : ℝ}
    (hM : 0 ≤ M) (hT₀ : Real.log 7 ≤ T₀)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T)
    {z : ℂ} (hz : 0 < z.re) :
    ‖actualXiComplexLaplace z‖ ≤ actualXiConditionalLaplaceBudget M T₀ z.re := by
  have hL1 := actualXiComplexLaplace_integrableOn_of_future_average hM hT₀ haverage hz
  unfold actualXiComplexLaplace
  apply (norm_integral_le_integral_norm _).trans
  have hr := (actualXiLaplace_integrableOn_of_future_average hM hT₀ hz haverage).norm
  apply (integral_mono_ae hL1.norm hr (by
    filter_upwards [] with t
    exact (actualXiComplexLaplaceKernel_norm_eq z t).le)).trans
  exact actualXiLaplace_integral_norm_le hM hT₀ hz haverage

end
end FormalResearch.RiemannHypothesis.RootActualXiConditionalComplexLaplace
