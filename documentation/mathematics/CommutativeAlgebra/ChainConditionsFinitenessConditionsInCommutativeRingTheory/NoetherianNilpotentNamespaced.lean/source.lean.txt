-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsNoetherianRingIsNilpotentNilradical.Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsNoetherianRingIsNilpotentNilradical.Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"aca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Noetherian/Nilpotent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro, Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.Finiteness.Ideal
import Mathlib.RingTheory.Nilpotent.Lemmas
import Mathlib.RingTheory.Noetherian.Defs

/-!
# Nilpotent ideals in Noetherian rings


## Main results

* `IsNoetherianRing.isNilpotent_nilradical`
-/


namespace GRWTSK.Algebra.IsNoetherianRingIsNilpotentNilradical.Variantaca52a57c22e973fc1e30fdddca3557314945e9a3b6b2416f9da9afa7f23105f

open IsNoetherian

theorem IsNoetherianRing.isNilpotent_nilradical (R : Type*) [CommSemiring R] [IsNoetherianRing R] :
    IsNilpotent (nilradical R) := by
  obtain ⟨n, hn⟩ := Ideal.exists_radical_pow_le_of_fg (⊥ : Ideal R) (IsNoetherian.noetherian _)
  exact ⟨n, eq_bot_iff.mpr hn⟩

lemma Ideal.FG.isNilpotent_iff_le_nilradical {R : Type*} [CommSemiring R] {I : Ideal R}
    (hI : I.FG) : IsNilpotent I ↔ I ≤ nilradical R :=
  ⟨fun ⟨n, hn⟩ _ hx ↦ ⟨n, hn ▸ Ideal.pow_mem_pow hx n⟩,
    fun h ↦ let ⟨n, hn⟩ := exists_pow_le_of_le_radical_of_fg h hI; ⟨n, le_bot_iff.mp hn⟩⟩
