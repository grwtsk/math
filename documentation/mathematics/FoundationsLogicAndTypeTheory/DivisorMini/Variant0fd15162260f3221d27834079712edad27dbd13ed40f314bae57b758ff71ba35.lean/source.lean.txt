-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.D.Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.D.Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/divisor-mini.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Factorization.Divisors

namespace GRWTSK.FoundationsLogicAndTypeTheory.D.Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338

namespace F
structure D (M : ℕ) where
  val : ℕ
  property : val ∣ M
instance (M : ℕ) : Coe (D M) ℕ := ⟨D.val⟩
instance (M : ℕ) : CoeOut (D M) ℕ := ⟨D.val⟩
#check (fun {M : ℕ} (d : D M) => (d : ℕ))
end F
