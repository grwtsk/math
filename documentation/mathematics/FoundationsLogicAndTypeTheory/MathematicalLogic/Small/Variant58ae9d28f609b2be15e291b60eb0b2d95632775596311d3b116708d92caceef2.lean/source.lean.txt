-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ToDFinsupp.Variant94599c478d0d31cf6b925de6c838001536df7e68908c1cb8f3d2759df82d474f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94599c478d0d31cf6b925de6c838001536df7e68908c1cb8f3d2759df82d474f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ToDFinsupp.Variant94599c478d0d31cf6b925de6c838001536df7e68908c1cb8f3d2759df82d474f","mathematical_subject":"Logic.Foundations","original_sha256":"94599c478d0d31cf6b925de6c838001536df7e68908c1cb8f3d2759df82d474f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/DFinsupp/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Sophie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sophie Morel, Antoine Chambert-Loir
-/
import Mathlib.Data.Finsupp.ToDFinsupp
import Mathlib.Data.DFinsupp.Defs
import Mathlib.Logic.Small.Basic

/-!
# Smallness of the `DFinsupp` type

Let `π : ι → Type v`. If `ι` and all the `π i` are `w`-small, this provides a `Small.{w}`
instance on `DFinsupp π`.

As an application, `σ →₀ R` has a `Small.{v}` instance if `σ` and `R` have one.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ToDFinsupp.Variant94599c478d0d31cf6b925de6c838001536df7e68908c1cb8f3d2759df82d474f

universe u v w

variable {ι : Type u} {π : ι → Type v} [∀ i, Zero (π i)]

section Small

instance DFinsupp.small [Small.{w} ι] [∀ (i : ι), Small.{w} (π i)] :
    Small.{w} (DFinsupp π) :=
  small_of_injective (f := fun x j ↦ x j) (fun f f' eq ↦ by ext j; exact congr_fun eq j)

instance Finsupp.small {σ : Type*} {R : Type*} [Zero R]
    [Small.{u} R] [Small.{u} σ] :
    Small.{u} (σ →₀ R) := by
  classical
  exact small_map finsuppEquivDFinsupp

end Small
