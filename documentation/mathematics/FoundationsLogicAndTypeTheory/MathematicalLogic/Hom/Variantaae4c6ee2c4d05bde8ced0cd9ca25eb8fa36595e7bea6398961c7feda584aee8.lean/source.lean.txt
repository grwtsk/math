-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Archimedean.Variant5cfb89791fb89e560485b57811f0728a07eec8620c3baa5c1531741249beac1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cfb89791fb89e560485b57811f0728a07eec8620c3baa5c1531741249beac1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Archimedean.Variant5cfb89791fb89e560485b57811f0728a07eec8620c3baa5c1531741249beac1a","mathematical_subject":"Logic.Foundations","original_sha256":"5cfb89791fb89e560485b57811f0728a07eec8620c3baa5c1531741249beac1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Archimedean/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Alex J. Best, Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best, Yaël Dillies
-/
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Algebra.Order.Hom.Ring

/-!
### Uniqueness of ring homomorphisms to archimedean fields.

There is at most one ordered ring homomorphism from a linear ordered field to an archimedean linear
ordered field. Reciprocally, such an ordered ring homomorphism exists when the codomain is further
conditionally complete.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Archimedean.Variant5cfb89791fb89e560485b57811f0728a07eec8620c3baa5c1531741249beac1a

assert_not_exists Finset

variable {α β : Type*}

/-- There is at most one ordered ring homomorphism from a linear ordered field to an archimedean
linear ordered field. -/
instance OrderRingHom.subsingleton [Field α] [LinearOrder α]
    [Field β] [LinearOrder β] [IsStrictOrderedRing β] [Archimedean β] :
    Subsingleton (α →+*o β) :=
  ⟨fun f g => by
    ext x
    by_contra! h' : f x ≠ g x
    wlog h : f x < g x with h₂
    · exact h₂ g f x (Ne.symm h') (h'.lt_or_lt.resolve_left h)
    obtain ⟨q, hf, hg⟩ := exists_rat_btwn h
    rw [← map_ratCast f] at hf
    rw [← map_ratCast g] at hg
    exact
      (lt_asymm ((OrderHomClass.mono g).reflect_lt hg) <|
          (OrderHomClass.mono f).reflect_lt hf).elim⟩

/-- There is at most one ordered ring isomorphism between a linear ordered field and an archimedean
linear ordered field. -/
instance OrderRingIso.subsingleton_right [Field α] [LinearOrder α]
    [Field β] [LinearOrder β] [IsStrictOrderedRing β]
    [Archimedean β] : Subsingleton (α ≃+*o β) :=
  OrderRingIso.toOrderRingHom_injective.subsingleton

/-- There is at most one ordered ring isomorphism between an archimedean linear ordered field and a
linear ordered field. -/
instance OrderRingIso.subsingleton_left [Field α] [LinearOrder α] [IsStrictOrderedRing α]
    [Archimedean α] [Field β] [LinearOrder β] : Subsingleton (α ≃+*o β) :=
  OrderRingIso.symm_bijective.injective.subsingleton
