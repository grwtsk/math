-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UnorderedInterval.Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.UnorderedInterval.Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017","mathematical_subject":"Algebra.OrderTheory","original_sha256":"d886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/OrderEmbedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Order.Interval.Set.UnorderedInterval
import Mathlib.Order.Hom.Basic

/-!
# Preimages of intervals under order embeddings

In this file we prove that the preimage of an interval in the codomain under an `OrderEmbedding`
is an interval in the domain.

Note that similar statements about images require the range to be order-connected.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UnorderedInterval.Variantd886d6328a7a37f4eea083dcd5745a81383472a23ba1a4e11f2fc7b58b64c017

open Set

namespace OrderEmbedding

variable {α β : Type*}

section Preorder

variable [Preorder α] [Preorder β] (e : α ↪o β) (x y : α)

@[simp] theorem preimage_Ici : e ⁻¹' Ici (e x) = Ici x := ext fun _ ↦ e.le_iff_le
@[simp] theorem preimage_Iic : e ⁻¹' Iic (e x) = Iic x := ext fun _ ↦ e.le_iff_le
@[simp] theorem preimage_Ioi : e ⁻¹' Ioi (e x) = Ioi x := ext fun _ ↦ e.lt_iff_lt
@[simp] theorem preimage_Iio : e ⁻¹' Iio (e x) = Iio x := ext fun _ ↦ e.lt_iff_lt

@[simp] theorem preimage_Icc : e ⁻¹' Icc (e x) (e y) = Icc x y := by ext; simp
@[simp] theorem preimage_Ico : e ⁻¹' Ico (e x) (e y) = Ico x y := by ext; simp
@[simp] theorem preimage_Ioc : e ⁻¹' Ioc (e x) (e y) = Ioc x y := by ext; simp
@[simp] theorem preimage_Ioo : e ⁻¹' Ioo (e x) (e y) = Ioo x y := by ext; simp

end Preorder

variable [LinearOrder α]

@[simp] theorem preimage_uIcc [Lattice β] (e : α ↪o β) (x y : α) :
    e ⁻¹' (uIcc (e x) (e y)) = uIcc x y := by
  cases le_total x y <;> simp [*]

@[simp] theorem preimage_uIoc [LinearOrder β] (e : α ↪o β) (x y : α) :
    e ⁻¹' (uIoc (e x) (e y)) = uIoc x y := by
  cases le_total x y <;> simp [*]

end OrderEmbedding
