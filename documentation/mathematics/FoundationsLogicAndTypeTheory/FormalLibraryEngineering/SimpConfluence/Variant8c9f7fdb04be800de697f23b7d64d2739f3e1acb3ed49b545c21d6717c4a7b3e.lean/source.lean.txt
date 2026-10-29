-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant0db21b63b4328ddae7c6a06f3c2614297fcb6a39939849df97dc37e438b93d91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0db21b63b4328ddae7c6a06f3c2614297fcb6a39939849df97dc37e438b93d91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variant0db21b63b4328ddae7c6a06f3c2614297fcb6a39939849df97dc37e438b93d91","mathematical_subject":"Foundations.Unclassified","original_sha256":"0db21b63b4328ddae7c6a06f3c2614297fcb6a39939849df97dc37e438b93d91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/simp_confluence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant0db21b63b4328ddae7c6a06f3c2614297fcb6a39939849df97dc37e438b93d91

namespace Set

open Function

variable {α β : Type*}

/-- Without `subset_range_of_surjective`, `image_subset_iff` and `image_preimage_eq` create a simp
  confluence issue. -/
example {f : α → β} (s t : Set β) (h : Surjective f) :
    f '' (f ⁻¹' s) ⊆ t ↔ f '' (f ⁻¹' s) ⊆ t := by
  conv =>
    congr
    · simp [h, -image_preimage_eq, -subset_range_of_surjective]
    · simp [h, -image_subset_iff, -subset_range_of_surjective]
  fail_if_success simp [h, -subset_range_of_surjective]
  simp [h]

/-- Without `Nonempty.subset_preimage_const`, `image_subset_iff` and `Nonempty.image_const` create a
  simp confluence issue. -/
example {s : Set α} (hs : Set.Nonempty s) (t : Set β) (a : β) :
    (fun _ => a) '' s ⊆ t ↔ (fun _ => a) '' s ⊆ t := by
  conv =>
    congr
    · simp [hs, -Nonempty.image_const, -Nonempty.subset_preimage_const]
    · simp [hs, -image_subset_iff, -Nonempty.subset_preimage_const]
  fail_if_success simp [hs, -Nonempty.subset_preimage_const]
  simp [hs]

/-- Without `preimage_eq_univ_iff`, `image_subset_iff` and `image_univ` create a
  simp confluence issue. -/
example {f : α → β} (s) : f '' univ ⊆ s ↔ f '' univ ⊆ s := by
  conv =>
    congr
    · simp [-image_univ, -preimage_eq_univ_iff]
    · simp [-image_subset_iff, -preimage_eq_univ_iff]
  fail_if_success simp [-preimage_eq_univ_iff]
  simp

end Set
