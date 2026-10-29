# Tensor Product Prod Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d387dfc51aa889ab4ee768d4d57cad51e66bba77` · SHA-256 `7fcf3fe802fbc7a7facfd52b6ad812f698e9189fc57a4143877ad7ea5111c2d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProdRight.Variante7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ProdRight.Variante7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/TensorProduct/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.LinearAlgebra.Prod
public import Mathlib.LinearAlgebra.TensorProduct.Tower

/-!
# Tensor products of products

This file shows that taking `TensorProduct`s commutes with taking `Prod`s in both arguments.

## Main results

* `TensorProduct.prodLeft`
* `TensorProduct.prodRight`

## Notes

See `Mathlib/LinearAlgebra/TensorProduct/Pi.lean` for arbitrary products.

-/


namespace GRWTSK.Algebra.LinearAlgebra.ProdRight.Variante7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd

@[expose] public section

variable (R S M₁ M₂ M₃ : Type*)

namespace TensorProduct

variable [CommSemiring R] [Semiring S] [AddCommMonoid M₁] [AddCommMonoid M₂] [AddCommMonoid M₃]
variable [Algebra R S]
variable [Module R M₁] [Module S M₁] [IsScalarTower R S M₁] [Module R M₂] [Module R M₃]

attribute [ext] TensorProduct.ext

/-- Tensor products distribute over a product on the right. -/
def prodRight : M₁ ⊗[R] (M₂ × M₃) ≃ₗ[S] (M₁ ⊗[R] M₂) × (M₁ ⊗[R] M₃) :=
  LinearEquiv.ofLinearMap
    (TensorProduct.AlgebraTensorModule.lift <|
      LinearMap.prodMapLinear R M₂ M₃ (M₁ ⊗[R] M₂) (M₁ ⊗[R] M₃) S ∘ₗ
        LinearMap.prod (AlgebraTensorModule.mk R S M₁ M₂) (AlgebraTensorModule.mk R S M₁ M₃))
    (LinearMap.coprod
      (AlgebraTensorModule.lTensor _ _ <| LinearMap.inl _ _ _)
      (AlgebraTensorModule.lTensor _ _ <| LinearMap.inr _ _ _))
    (by ext <;> simp)
    (by ext <;> simp)

@[simp] theorem prodRight_tmul (m₁ : M₁) (m : M₂ × M₃) :
    prodRight R S M₁ M₂ M₃ (m₁ ⊗ₜ m) = (m₁ ⊗ₜ m.1, m₁ ⊗ₜ m.2) :=
  rfl

@[simp] theorem prodRight_symm_tmul (m₁ : M₁) (m₂ : M₂) (m₃ : M₃) :
    (prodRight R S M₁ M₂ M₃).symm (m₁ ⊗ₜ m₂, m₁ ⊗ₜ m₃) = (m₁ ⊗ₜ (m₂, m₃)) :=
  (LinearEquiv.symm_apply_eq _).mpr rfl

variable [Module S M₂] [IsScalarTower R S M₂]

/-- Tensor products distribute over a product on the left . -/
def prodLeft : (M₁ × M₂) ⊗[R] M₃ ≃ₗ[S] (M₁ ⊗[R] M₃) × (M₂ ⊗[R] M₃) :=
  AddEquiv.toLinearEquiv (TensorProduct.comm _ _ _ ≪≫ₗ
      TensorProduct.prodRight R R _ _ _ ≪≫ₗ
      (TensorProduct.comm R _ _).prodCongr (TensorProduct.comm R _ _)).toAddEquiv
    fun c x ↦ x.inductionOn (by simp [TensorProduct.smul_tmul']) (by simp_all)

@[simp] theorem prodLeft_tmul (m₁ : M₁) (m₂ : M₂) (m₃ : M₃) :
    prodLeft R S M₁ M₂ M₃ ((m₁, m₂) ⊗ₜ m₃) = (m₁ ⊗ₜ m₃, m₂ ⊗ₜ m₃) :=
  rfl

@[simp] theorem prodLeft_symm_tmul (m₁ : M₁) (m₂ : M₂) (m₃ : M₃) :
    (prodLeft R S M₁ M₂ M₃).symm (m₁ ⊗ₜ m₃, m₂ ⊗ₜ m₃) = ((m₁, m₂) ⊗ₜ m₃) :=
  (LinearEquiv.symm_apply_eq _).mpr rfl

end TensorProduct
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cbe2c3fa17c05b06580b652f56a6bc7fd552fc45978dbc604dc04f42ddb5a91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
