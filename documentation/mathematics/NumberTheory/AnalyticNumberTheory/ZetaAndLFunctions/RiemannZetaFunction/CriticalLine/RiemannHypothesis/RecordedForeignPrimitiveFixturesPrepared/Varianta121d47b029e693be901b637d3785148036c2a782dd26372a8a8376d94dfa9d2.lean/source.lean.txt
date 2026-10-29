-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveFiveNonnegOnClosedSupport.Variant1c4dc7ca2764954bff2870898e5c3d0495c0b2b94a211b3628cc6dd3a6e7884b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c4dc7ca2764954bff2870898e5c3d0495c0b2b94a211b3628cc6dd3a6e7884b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimitiveFiveNonnegOnClosedSupport.Variant1c4dc7ca2764954bff2870898e5c3d0495c0b2b94a211b3628cc6dd3a6e7884b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1c4dc7ca2764954bff2870898e5c3d0495c0b2b94a211b3628cc6dd3a6e7884b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/regent-origin/fixture-preparation-v1/RecordedForeignPrimitiveFixtures.prepared.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelationSignChange
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

/-!
Prospective recorded-scope foreign primitive controls only. UNCOMPILED here.
The root sign2 proof has no dependency on these foreign modules. These fixtures
do not replay or integrate the foreign packet or identify a literal prime atom.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveFiveNonnegOnClosedSupport.Variant1c4dc7ca2764954bff2870898e5c3d0495c0b2b94a211b3628cc6dd3a6e7884b

set_option autoImplicit false
noncomputable section
namespace Cycle24RecordedForeignPrimitiveFixtures

open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationSignChange SourceMangoldtInteraction
open SourcePositivePeanoPrimitive SourcePeanoProfileTransport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem primitive_five_nonneg_on_closed_support :
    ∀ t : ℝ, 0 ≤ t → t ≤ 10 → 0 ≤ sourcePeanoPrimitive 5 t := by
  intro t ht0 ht10
  exact sourcePeanoPrimitive_nonneg (by norm_num) (by norm_num) ht0 (by simpa using ht10)

theorem primitive_five_second_derivative_negative_inside :
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧ deriv (deriv (sourcePeanoPrimitive 5)) t < 0 := by
  obtain ⟨t, ht0, ht2, ht⟩ :=
    sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)
  refine ⟨t, ht0, by simpa using ht2, ?_⟩
  rw [sourcePeanoPrimitive_second_deriv (by norm_num : (0 : ℝ) < 5)]
  exact mul_neg_of_pos_of_neg (Real.exp_pos _) ht

theorem primitive_five_second_derivative_at_zero_one :
    deriv (deriv (sourcePeanoPrimitive 5)) 0 = 1 := by
  rw [sourcePeanoPrimitive_second_deriv (by norm_num : (0 : ℝ) < 5),
    sourceCorrelation_zero (by norm_num : (0 : ℝ) < 5)]
  norm_num

end Cycle24RecordedForeignPrimitiveFixtures
