-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePeanoBoundaryAtoms.Variantdf8547d7a8ce226fe60c3b54a156f1afec7b5db2e5285a0011b60ba94a4c03b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df8547d7a8ce226fe60c3b54a156f1afec7b5db2e5285a0011b60ba94a4c03b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePeanoBoundaryAtoms.Variantdf8547d7a8ce226fe60c3b54a156f1afec7b5db2e5285a0011b60ba94a4c03b0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"df8547d7a8ce226fe60c3b54a156f1afec7b5db2e5285a0011b60ba94a4c03b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/boundary-atom-worker/Audit-attempt1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePeanoBoundaryAtoms.Variantdf8547d7a8ce226fe60c3b54a156f1afec7b5db2e5285a0011b60ba94a4c03b0

#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_contDiff_two
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_contDiff_two
#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_second_deriv
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_second_deriv
#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.boundaryPeano_nonneg
#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.peanoScale_mul_closedPrimeMoment_eq_atoms
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.peanoScale_mul_closedPrimeMoment_eq_atoms
#check FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.peanoScale_mul_mertensResidual_eq_atoms
#print axioms FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms.peanoScale_mul_mertensResidual_eq_atoms

noncomputable section
namespace FormalResearch.RiemannHypothesis.BoundaryAtomWorkerAudit
open SourcePeanoBoundaryAtoms SourceMangoldtAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateCorrelation EstimateMertensResidual

example {A : ℝ} (hA : 0 < A) : 0 < peanoScale A := by unfold peanoScale; positivity

example {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (boundaryPeano A)) (2*A) = peanoScale A := by
  rw [boundaryPeano_second_deriv (by linarith)]
  unfold boundaryKernel peanoScale
  rw [sub_self, actual_correlation_at_zero A hA]
  have he : -(2*A)/2 = -A := by ring
  rw [he]
  ring

example {A : ℝ} (hA : 0 < A) : deriv (deriv (boundaryPeano A)) 0 = 0 := by
  rw [boundaryPeano_second_deriv hA]
  unfold boundaryKernel
  rw [sub_zero, sourceCorrelation_upper_endpoint A hA]
  ring

example {A : ℝ} {n : ℕ} (hn : n ∈ primePowerInventory (2*A)) :
    0 ≤ 2*A - Real.log (n:ℝ) ∧ 2*A - Real.log (n:ℝ) ≤ 2*A := by
  have h := mangoldtInventory_log_bounds (2*A) n hn
  constructor <;> linarith

example : ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
  rw [show (4:ℕ) = 2^2 by norm_num,
    ArithmeticFunction.vonMangoldt_apply_pow (by norm_num),
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num)]

example {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A =
      (∑ n ∈ primePowerInventory (2*A), ArithmeticFunction.vonMangoldt n / (n:ℝ) *
        deriv (deriv (boundaryPeano A)) (2*A-Real.log n)) / peanoScale A := by
  have hp : 0 < peanoScale A := by unfold peanoScale; positivity
  apply (eq_div_iff hp.ne').mpr
  rw [mul_comm]
  exact peanoScale_mul_mertensResidual_eq_atoms hA

end FormalResearch.RiemannHypothesis.BoundaryAtomWorkerAudit
