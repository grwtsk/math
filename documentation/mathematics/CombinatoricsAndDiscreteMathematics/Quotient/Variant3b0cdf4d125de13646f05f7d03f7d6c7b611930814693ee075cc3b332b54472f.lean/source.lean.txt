-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LiftFinsupp.Variantd37c5ae1bc6118dc556fec7d7ee397f37a2631e730287d5242a4b2340e7ca55c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d37c5ae1bc6118dc556fec7d7ee397f37a2631e730287d5242a4b2340e7ca55c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LiftFinsupp.Variantd37c5ae1bc6118dc556fec7d7ee397f37a2631e730287d5242a4b2340e7ca55c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d37c5ae1bc6118dc556fec7d7ee397f37a2631e730287d5242a4b2340e7ca55c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finsupp/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yuyang Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuyang Zhao
-/
module

public import Mathlib.Data.Finsupp.Defs

/-!
# Lifts a `Finsupp` from an underlying type to a `Finsupp` on a quotient
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LiftFinsupp.Variantd37c5ae1bc6118dc556fec7d7ee397f37a2631e730287d5242a4b2340e7ca55c

@[expose] public section

noncomputable section

open Finset Function

variable {α β : Type*}

namespace Quot

variable {r : α → α → Prop} [Zero β] (f : α →₀ β) (h : ∀ a b, r a b → f a = f b)

/-- Lift a function `α →₀ β` to `Quot r →₀ β`. -/
protected def liftFinsupp : Quot r →₀ β := by
  classical
  refine ⟨image (mk r) f.support, Quot.lift f h, fun a => ⟨?_, ?_⟩⟩
  · rw [mem_image]; rintro ⟨b, hb, rfl⟩; exact Finsupp.mem_support_iff.mp hb
  · induction a using Quot.ind
    rw [lift_mk _ h]
    exact fun hb => mem_image_of_mem _ (Finsupp.mem_support_iff.mpr hb)

@[simp]
theorem liftFinsupp_mk (a : α) : Quot.liftFinsupp f h (Quot.mk r a) = f a :=
  rfl

end Quot

namespace Quotient

variable {s : Setoid α} [Zero β] (f : α →₀ β) (h : ∀ a b, s a b → f a = f b)

/-- Lift a function `α →₀ β` to `Quot r →₀ β`. -/
protected def liftFinsupp : Quotient s →₀ β :=
  Quot.liftFinsupp f h

@[simp]
theorem liftFinsupp_mk (a : α) : Quotient.liftFinsupp f h ⟦a⟧ = f a :=
  rfl

end Quotient
