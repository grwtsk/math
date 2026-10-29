-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ToRatAlgHom.Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ToRatAlgHom.Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Algebra/Hom/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Yury Kudryashov
-/
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.Rat

/-!
# Homomorphisms of `ℚ`-algebras

-/



namespace GRWTSK.Algebra.UniversalAlgebra.ToRatAlgHom.Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3

namespace RingHom

variable {R S : Type*}

/-- Reinterpret a `RingHom` as a `ℚ`-algebra homomorphism. This actually yields an equivalence,
see `RingHom.equivRatAlgHom`. -/
def toRatAlgHom [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S] (f : R →+* S) : R →ₐ[ℚ] S :=
  { f with commutes' := f.map_rat_algebraMap }

@[simp]
theorem toRatAlgHom_toRingHom [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S] (f : R →+* S) :
    ↑f.toRatAlgHom = f :=
  RingHom.ext fun _x => rfl

@[simp]
theorem toRatAlgHom_apply [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S] (f : R →+* S) (x : R) :
    f.toRatAlgHom x = f x :=
  rfl

end RingHom

section

variable {R S : Type*}

@[simp]
theorem AlgHom.toRingHom_toRatAlgHom [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S]
    (f : R →ₐ[ℚ] S) : (f : R →+* S).toRatAlgHom = f :=
  AlgHom.ext fun _x => rfl

/-- The equivalence between `RingHom` and `ℚ`-algebra homomorphisms. -/
@[simps]
def RingHom.equivRatAlgHom [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S] :
    (R →+* S) ≃ (R →ₐ[ℚ] S) where
  toFun := RingHom.toRatAlgHom
  invFun := AlgHom.toRingHom
  left_inv f := RingHom.toRatAlgHom_toRingHom f
  right_inv f := AlgHom.toRingHom_toRatAlgHom f

end
