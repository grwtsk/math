-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EventuallyLEMulLeMul.Variantd3612434d38d7e606791dcb5ef7f5c0e96f0f9c890b9e56ffa96adea07b0da38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3612434d38d7e606791dcb5ef7f5c0e96f0f9c890b9e56ffa96adea07b0da38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EventuallyLEMulLeMul.Variantd3612434d38d7e606791dcb5ef7f5c0e96f0f9c890b9e56ffa96adea07b0da38","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d3612434d38d7e606791dcb5ef7f5c0e96f0f9c890b9e56ffa96adea07b0da38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad
-/
import Mathlib.Order.Filter.Germ.OrderedMonoid
import Mathlib.Algebra.Order.Ring.Defs

/-!
# Lemmas about filters and ordered rings.
-/

namespace GRWTSK.Topology.GeneralTopology.EventuallyLEMulLeMul.Variantd3612434d38d7e606791dcb5ef7f5c0e96f0f9c890b9e56ffa96adea07b0da38

namespace Filter

open Function Filter

universe u v

variable {α : Type u} {β : Type v}

theorem EventuallyLE.mul_le_mul [MulZeroClass β] [Preorder β] [PosMulMono β] [MulPosMono β]
    {l : Filter α} {f₁ f₂ g₁ g₂ : α → β} (hf : f₁ ≤ᶠ[l] f₂) (hg : g₁ ≤ᶠ[l] g₂) (hg₀ : 0 ≤ᶠ[l] g₁)
    (hf₀ : 0 ≤ᶠ[l] f₂) : f₁ * g₁ ≤ᶠ[l] f₂ * g₂ := by
  filter_upwards [hf, hg, hg₀, hf₀] with x using _root_.mul_le_mul

@[to_additive EventuallyLE.add_le_add]
theorem EventuallyLE.mul_le_mul' [Mul β] [Preorder β] [MulLeftMono β]
    [MulRightMono β] {l : Filter α} {f₁ f₂ g₁ g₂ : α → β}
    (hf : f₁ ≤ᶠ[l] f₂) (hg : g₁ ≤ᶠ[l] g₂) : f₁ * g₁ ≤ᶠ[l] f₂ * g₂ := by
  filter_upwards [hf, hg] with x hfx hgx using _root_.mul_le_mul' hfx hgx

theorem EventuallyLE.mul_nonneg [Semiring β] [PartialOrder β] [IsOrderedRing β]
    {l : Filter α} {f g : α → β} (hf : 0 ≤ᶠ[l] f)
    (hg : 0 ≤ᶠ[l] g) : 0 ≤ᶠ[l] f * g := by filter_upwards [hf, hg] with x using _root_.mul_nonneg

theorem eventually_sub_nonneg [Ring β] [PartialOrder β] [IsOrderedRing β]
    {l : Filter α} {f g : α → β} :
    0 ≤ᶠ[l] g - f ↔ f ≤ᶠ[l] g :=
  eventually_congr <| Eventually.of_forall fun _ => sub_nonneg

namespace Germ

variable {l : Filter α}

instance instIsOrderedRing [Semiring β] [PartialOrder β] [IsOrderedRing β] :
    IsOrderedRing (Germ l β) where
  zero_le_one := const_le zero_le_one
  mul_le_mul_of_nonneg_left x y z := inductionOn₃ x y z fun _f _g _h hfg hh ↦ hh.mp <| hfg.mono
    fun _a ↦ mul_le_mul_of_nonneg_left
  mul_le_mul_of_nonneg_right x y z := inductionOn₃ x y z fun _f _g _h hfg hh ↦ hh.mp <| hfg.mono
    fun _a ↦ mul_le_mul_of_nonneg_right

end Germ

end Filter
