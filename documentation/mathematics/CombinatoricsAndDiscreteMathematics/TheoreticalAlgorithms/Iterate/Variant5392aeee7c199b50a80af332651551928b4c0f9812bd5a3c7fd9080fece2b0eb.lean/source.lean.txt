-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SmulEqSelfOfPreimageZpowEqSelf.Variant61433959fe4617c7e51d1f5ffdd1f087bca2e70c9de9b42920d68462d3552766","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61433959fe4617c7e51d1f5ffdd1f087bca2e70c9de9b42920d68462d3552766","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SmulEqSelfOfPreimageZpowEqSelf.Variant61433959fe4617c7e51d1f5ffdd1f087bca2e70c9de9b42920d68462d3552766","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"61433959fe4617c7e51d1f5ffdd1f087bca2e70c9de9b42920d68462d3552766","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Set/Pointwise/Iterate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Data.Set.Pointwise.SMul
import Mathlib.Algebra.Hom.Iterate
import Mathlib.Dynamics.FixedPoints.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SmulEqSelfOfPreimageZpowEqSelf.Variant61433959fe4617c7e51d1f5ffdd1f087bca2e70c9de9b42920d68462d3552766

#align_import data.set.pointwise.iterate from "leanprover-community/mathlib"@"9003f28797c0664a49e4179487267c494477d853"

/-!
# Results about pointwise operations on sets with iteration.
-/


open Pointwise

open Set Function

/-- Let `n : ℤ` and `s` a subset of a commutative group `G` that is invariant under preimage for
the map `x ↦ x^n`. Then `s` is invariant under the pointwise action of the subgroup of elements
`g : G` such that `g^(n^j) = 1` for some `j : ℕ`. (This subgroup is called the Prüfer subgroup when
 `G` is the `Circle` and `n` is prime.) -/
@[to_additive
      "Let `n : ℤ` and `s` a subset of an additive commutative group `G` that is invariant
      under preimage for the map `x ↦ n • x`. Then `s` is invariant under the pointwise action of
      the additive subgroup of elements `g : G` such that `(n^j) • g = 0` for some `j : ℕ`.
      (This additive subgroup is called the Prüfer subgroup when `G` is the `AddCircle` and `n` is
      prime.)"]
theorem smul_eq_self_of_preimage_zpow_eq_self {G : Type*} [CommGroup G] {n : ℤ} {s : Set G}
    (hs : (fun x => x ^ n) ⁻¹' s = s) {g : G} {j : ℕ} (hg : g ^ n ^ j = 1) : g • s = s := by
  suffices ∀ {g' : G} (_ : g' ^ n ^ j = 1), g' • s ⊆ s by
    refine' le_antisymm (this hg) _
    conv_lhs => rw [← smul_inv_smul g s]
    replace hg : g⁻¹ ^ n ^ j = 1
    · rw [inv_zpow, hg, inv_one]
    simpa only [le_eq_subset, set_smul_subset_set_smul_iff] using this hg
  rw [(IsFixedPt.preimage_iterate hs j : (zpowGroupHom n)^[j] ⁻¹' s = s).symm]
  rintro g' hg' - ⟨y, hy, rfl⟩
  change (zpowGroupHom n)^[j] (g' * y) ∈ s
  replace hg' : (zpowGroupHom n)^[j] g' = 1
  · simpa [zpowGroupHom]
  rwa [iterate_map_mul, hg', one_mul]
#align smul_eq_self_of_preimage_zpow_eq_self smul_eq_self_of_preimage_zpow_eq_self
#align vadd_eq_self_of_preimage_zsmul_eq_self vadd_eq_self_of_preimage_zsmul_eq_self
