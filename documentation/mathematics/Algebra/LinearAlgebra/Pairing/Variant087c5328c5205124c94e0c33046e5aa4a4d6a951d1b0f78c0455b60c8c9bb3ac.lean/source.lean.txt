-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MultilinearMapToDual.Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MultilinearMapToDual.Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/TensorPower/Pairing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.GroupTheory.MonoidLocalization.Basic
import Mathlib.LinearAlgebra.Dual.Defs
import Mathlib.LinearAlgebra.TensorPower.Basic

/-!
# The pairing between the tensor power of the dual and the tensor power

We construct the pairing
`TensorPower.pairingDual : ⨂[R]^n (Module.Dual R M) →ₗ[R] (Module.Dual R (⨂[R]^n M))`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.MultilinearMapToDual.Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf

open TensorProduct PiTensorProduct

namespace TensorPower

variable (R : Type*) (M : Type*) [CommSemiring R] [AddCommMonoid M] [Module R M]
  (n : ℕ)

open BigOperators

/-- The canonical multilinear map from `n` copies of the dual of the module `M`
to the dual of `⨂[R]^n M`. -/
noncomputable def multilinearMapToDual :
    MultilinearMap R (fun (_ : Fin n) ↦ Module.Dual R M)
      (Module.Dual R (⨂[R]^n M)) :=
  have : ∀ (_ : DecidableEq (Fin n)) (f : Fin n → Module.Dual R M)
      (φ : Module.Dual R M) (i j : Fin n) (v : Fin n → M),
      (Function.update f i φ) j (v j) =
      Function.update (fun j ↦ f j (v j)) i (φ (v i)) j := fun _ f φ i j v ↦ by
    by_cases h : j = i
    · subst h
      simp only [Function.update_self]
    · simp only [Function.update_of_ne h]
  { toFun := fun f ↦ PiTensorProduct.lift
      (MultilinearMap.compLinearMap (MultilinearMap.mkPiRing R (Fin n) 1) f)
    map_update_add' := fun f i φ₁ φ₂ ↦ by
      ext v
      dsimp
      simp only [lift.tprod, MultilinearMap.compLinearMap_apply, this,
        LinearMap.add_apply, MultilinearMap.map_update_add]
    map_update_smul' := fun f i a φ ↦  by
      ext v
      dsimp
      simp only [lift.tprod, MultilinearMap.compLinearMap_apply, this,
         LinearMap.smul_apply, MultilinearMap.map_update_smul]
      dsimp }

variable {R M n} in
@[simp]
theorem multilinearMapToDual_apply_tprod (f : (_ : Fin n) → Module.Dual R M) (v : Fin n → M) :
    multilinearMapToDual R M n f (tprod _ v) = ∏ i, (f i (v i)) := by
  simp [multilinearMapToDual]

/-- The linear map from the tensor power of the dual to the dual of the tensor power. -/
noncomputable def pairingDual :
    ⨂[R]^n (Module.Dual R M) →ₗ[R] (Module.Dual R (⨂[R]^n M)) :=
  PiTensorProduct.lift (multilinearMapToDual R M n)

variable {R M n} in
@[simp]
lemma pairingDual_tprod_tprod (f : (_ : Fin n) → Module.Dual R M) (v : Fin n → M) :
    pairingDual R M n (tprod _ f) (tprod _ v) = ∏ i, (f i (v i)) := by
  simp [pairingDual]

end TensorPower
