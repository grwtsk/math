-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaInsertionEqRemainder.Variant61d86ffb4bbcd8fba9df09e3798427f950e85e8a4eabffb6246d05210501d0cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61d86ffb4bbcd8fba9df09e3798427f950e85e8a4eabffb6246d05210501d0cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaInsertionEqRemainder.Variant61d86ffb4bbcd8fba9df09e3798427f950e85e8a4eabffb6246d05210501d0cf","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"61d86ffb4bbcd8fba9df09e3798427f950e85e8a4eabffb6246d05210501d0cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/PrimeInsertionHomogeneity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HomogeneityDefect


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaInsertionEqRemainder.Variant61d86ffb4bbcd8fba9df09e3798427f950e85e8a4eabffb6246d05210501d0cf

set_option autoImplicit false
namespace PrimeInsertionHomogeneityScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open ThetaKernelTransport ThetaRemainder CorrelationSecondMoment
noncomputable section

/-- The literal prime-insertion coefficient cancels beta/q, retaining the actual remainder. -/
theorem theta_insertion_eq_remainder (A : ℝ) (p q : ℕ) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    thetaKernel A q - (p : ℝ) * thetaKernel A (p * q) =
      thetaRemainder A q - (p : ℝ) * thetaRemainder A (p * q) := by
  have hp0 : (p : ℝ) ≠ 0 := by exact_mod_cast (show p ≠ 0 by omega)
  have hq0 : (q : ℝ) ≠ 0 := by exact_mod_cast (show q ≠ 0 by omega)
  unfold thetaRemainder
  push_cast
  field_simp
  ring

/-- The original insertion is its leading homogeneous remainder plus the exact scaling error. -/
theorem theta_insertion_eq_homogeneity (A : ℝ) (p q : ℕ) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    thetaKernel A q - (p : ℝ) * thetaKernel A (p * q) =
      (1 - Real.sqrt (p : ℝ)) * thetaRemainder A q + Real.sqrt (p : ℝ) *
        (thetaRemainder A q - Real.sqrt (p : ℝ) * thetaRemainder A (p * q)) := by
  rw [theta_insertion_eq_remainder A p q hp hq]
  have hs := Real.sq_sqrt (Nat.cast_nonneg p)
  calc
    _ = thetaRemainder A q - Real.sqrt (p : ℝ) ^ 2 * thetaRemainder A (p * q) := by rw [hs]
    _ = _ := by ring

end
end PrimeInsertionHomogeneityScratch
#print axioms PrimeInsertionHomogeneityScratch.theta_insertion_eq_remainder
#print axioms PrimeInsertionHomogeneityScratch.theta_insertion_eq_homogeneity
