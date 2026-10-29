-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealInnerEqSignedNormSquare.Variantd7d0c5c99f2409fcffe849136aa693b27bb8a18062bed13efcb1f1151804299a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7d0c5c99f2409fcffe849136aa693b27bb8a18062bed13efcb1f1151804299a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.RealInnerEqSignedNormSquare.Variantd7d0c5c99f2409fcffe849136aa693b27bb8a18062bed13efcb1f1151804299a","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"d7d0c5c99f2409fcffe849136aa693b27bb8a18062bed13efcb1f1151804299a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/MathematicalTooling/Reflection/Polarization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic.NormNum

/-!
# Signed quadratic polarization

The real inner product is a signed difference of two nonnegative quadratic
sectors. Their separate nonnegativity supplies no sign for that difference.
These are generic identities; no arithmetic weight or RH estimate is assumed.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealInnerEqSignedNormSquare.Variantd7d0c5c99f2409fcffe849136aa693b27bb8a18062bed13efcb1f1151804299a

namespace FormalResearch.MathematicalTooling.Reflection

open scoped InnerProductSpace

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- Real polarization, retaining the subtraction between the two sectors. -/
theorem real_inner_eq_signed_norm_square (x y : E) :
    ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := by
  simpa only [RCLike.re_to_real, pow_two] using
    (re_inner_eq_norm_add_mul_self_sub_norm_sub_mul_self_div_four (𝕜 := ℝ) x y)

/-- Both squared sectors can be nonnegative while their signed difference is
strictly negative: the explicit pair is `x = 1`, `y = -1` in `ℝ`. -/
theorem nonnegative_sectors_negative_difference :
    0 ≤ ‖(1 : ℝ) + (-1)‖ ^ 2 ∧
    0 ≤ ‖(1 : ℝ) - (-1)‖ ^ 2 ∧
    (‖(1 : ℝ) + (-1)‖ ^ 2 - ‖(1 : ℝ) - (-1)‖ ^ 2) / 4 < 0 := by
  norm_num

/-- Scaling the second vector gives arbitrarily negative signed differences;
separate positivity cannot supply even a fixed universal lower bound. -/
theorem signed_difference_has_no_universal_lower_bound :
    ¬ ∃ C : ℝ, ∀ x y : ℝ,
      -C ≤ (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := by
  rintro ⟨C, hC⟩
  have h := hC 1 (-C - 1)
  rw [← real_inner_eq_signed_norm_square] at h
  norm_num at h

end FormalResearch.MathematicalTooling.Reflection
