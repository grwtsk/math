-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PiMkQRTensor.Variantc007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PiMkQRTensor.Variantc007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Ideal/Quotient/ChineseRemainder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.LinearAlgebra.TensorProduct.Pi
public import Mathlib.LinearAlgebra.TensorProduct.RightExactness
public import Mathlib.RingTheory.Ideal.Quotient.Operations

/-! # Module version of Chinese remainder theorem
-/


namespace GRWTSK.Algebra.LinearAlgebra.PiMkQRTensor.Variantc007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b

public section

open Function

variable {R : Type*} [CommRing R] {ι : Type*}
variable (M : Type*) [AddCommGroup M] [Module R M]
variable (I : ι → Ideal R) (hI : Pairwise (IsCoprime on I))

namespace Ideal

open TensorProduct LinearMap

lemma pi_mkQ_rTensor [Fintype ι] [DecidableEq ι] :
    (LinearMap.pi fun i ↦ (I i).mkQ).rTensor M = (piLeft ..).symm.toLinearMap ∘ₗ
      .pi (fun i ↦ TensorProduct.mk R (R ⧸ I i) M 1) ∘ₗ TensorProduct.lid R M := by
  ext; simp [LinearMap.pi, LinearEquiv.piCongrRight]

variable [Finite ι]
include hI

attribute [local instance] Fintype.ofFinite

/-- A form of Chinese remainder theorem for modules, part I: if ideals `Iᵢ` of `R` are pairwise
coprime, then for any `R`-module `M`, the natural map `M → Πᵢ (R ⧸ Iᵢ) ⊗[R] M` is surjective. -/
theorem pi_tensorProductMk_quotient_surjective :
    Surjective (LinearMap.pi fun i ↦ TensorProduct.mk R (R ⧸ I i) M 1) := by
  have := rTensor_surjective M (pi_mkQ_surjective hI)
  classical rw [pi_mkQ_rTensor] at this
  simpa using this

/-- A form of Chinese remainder theorem for modules, part II: if ideals `Iᵢ` of `R` are pairwise
coprime, then for any `R`-module `M`, the kernel of `M → Πᵢ (R ⧸ Iᵢ) ⊗[R] M` equals `(⋂ᵢ Iᵢ) • M`.
-/
theorem ker_tensorProductMk_quotient :
    ker (LinearMap.pi fun i ↦ TensorProduct.mk R (R ⧸ I i) M 1) =
      (⨅ i, I i) • (⊤ : Submodule R M) := by
  have := rTensor_exact M (exact_subtype_ker_map _) (pi_mkQ_surjective hI)
  rw [← (TensorProduct.lid R M).conj_exact_iff_exact, exact_iff] at this
  convert! this
  · classical simp [pi_mkQ_rTensor, LinearMap.comp_assoc]
  refine le_antisymm (Submodule.smul_le.mpr fun r hr m _ ↦ ⟨⟨r, ?_⟩ ⊗ₜ m, rfl⟩) ?_
  · simpa only [ker_pi, Submodule.ker_mkQ]
  rintro _ ⟨x, rfl⟩
  refine x.inductionOn (fun r m ↦ Submodule.smul_mem_smul ?_ ⟨⟩) fun _ _ ↦ ?_
  · simpa only [← (I _).ker_mkQ, ← ker_pi] using! Subtype.mem _
  · simpa using! add_mem

end Ideal
