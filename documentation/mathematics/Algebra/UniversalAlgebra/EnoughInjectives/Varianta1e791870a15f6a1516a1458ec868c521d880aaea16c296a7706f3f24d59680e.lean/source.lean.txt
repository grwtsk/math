-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ModuleCatEnoughInjectives.Variantea0e3c19b33e26676de68a9fa91ac58d66c1ad4adf04a729815d1bb595deaa4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea0e3c19b33e26676de68a9fa91ac58d66c1ad4adf04a729815d1bb595deaa4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ModuleCatEnoughInjectives.Variantea0e3c19b33e26676de68a9fa91ac58d66c1ad4adf04a729815d1bb595deaa4b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ea0e3c19b33e26676de68a9fa91ac58d66c1ad4adf04a729815d1bb595deaa4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/EnoughInjectives.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.Algebra.Category.Grp.EnoughInjectives
import Mathlib.Algebra.Category.ModuleCat.ChangeOfRings

/-!
# Category of $R$-modules has enough injectives

we lift enough injectives of abelian groups to arbitrary $R$-modules by adjoint functors
`restrictScalars ⊣ coextendScalars`
-/


namespace GRWTSK.Algebra.UniversalAlgebra.ModuleCatEnoughInjectives.Variantea0e3c19b33e26676de68a9fa91ac58d66c1ad4adf04a729815d1bb595deaa4b

open CategoryTheory

universe v u

variable (R : Type u) [Ring R]

instance : EnoughInjectives (ModuleCat.{v} ℤ) :=
  EnoughInjectives.of_equivalence (forget₂ (ModuleCat ℤ) AddCommGrp)

lemma ModuleCat.enoughInjectives : EnoughInjectives (ModuleCat.{max v u} R) :=
  EnoughInjectives.of_adjunction (ModuleCat.restrictCoextendScalarsAdj.{max v u} (algebraMap ℤ R))

open ModuleCat in
instance [Small.{v} R] : EnoughInjectives (ModuleCat.{v} R) :=
  letI := enoughInjectives.{v} (Shrink.{v} R)
  EnoughInjectives.of_equivalence (restrictScalars (equivShrink R).symm.ringEquiv.toRingHom)
