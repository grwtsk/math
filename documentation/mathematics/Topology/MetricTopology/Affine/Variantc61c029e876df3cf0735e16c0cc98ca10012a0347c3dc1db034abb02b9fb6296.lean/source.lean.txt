-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.InnerVsubLeftEqZeroSymm.Variantdfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.InnerVsubLeftEqZeroSymm.Variantdfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c","mathematical_subject":"Topology.MetricSpaces","original_sha256":"dfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/InnerProductSpace/Affine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Group.AddTorsor
/-!
# Normed affine spaces over an inner product space
-/


namespace GRWTSK.Topology.MetricTopology.InnerVsubLeftEqZeroSymm.Variantdfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c

variable {𝕜 V P : Type*}

section RCLike
variable [RCLike 𝕜] [NormedAddCommGroup V] [InnerProductSpace 𝕜 V] [MetricSpace P]
variable [NormedAddTorsor V P]

open scoped InnerProductSpace

theorem inner_vsub_left_eq_zero_symm {a b : P} {v : V} :
    ⟪a -ᵥ b, v⟫_𝕜 = 0 ↔ ⟪b -ᵥ a, v⟫_𝕜 = 0 := by
  rw [← neg_vsub_eq_vsub_rev, inner_neg_left, neg_eq_zero]

theorem inner_vsub_right_eq_zero_symm {v : V} {a b : P} :
    ⟪v, a -ᵥ b⟫_𝕜 = 0 ↔ ⟪v, b -ᵥ a⟫_𝕜 = 0 := by
  rw [← neg_vsub_eq_vsub_rev, inner_neg_right, neg_eq_zero]

end RCLike

section Real
variable [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
variable [NormedAddTorsor V P]

open scoped RealInnerProductSpace

/-!
In this section, the first `left`/`right` indicates where the common argument to `vsub` is,
and the section refers to the argument of `inner` that ends up in the `dist`.

The lemma shapes are such that the relevant argument of `inner` remains unchanged,
and that the other `vsub` preserves the position of the unchanging argument. -/

theorem inner_vsub_vsub_left_eq_dist_sq_left_iff {a b c : P} :
    ⟪a -ᵥ b, a -ᵥ c⟫ = dist a b ^ 2 ↔ ⟪a -ᵥ b, b -ᵥ c⟫ = 0 := by
  rw [dist_eq_norm_vsub V, inner_eq_norm_sq_left_iff, vsub_sub_vsub_cancel_left,
    inner_vsub_right_eq_zero_symm]

theorem inner_vsub_vsub_left_eq_dist_sq_right_iff {a b c : P} :
    ⟪a -ᵥ b, a -ᵥ c⟫ = dist a c ^ 2 ↔ ⟪c -ᵥ b, a -ᵥ c⟫ = 0 := by
  rw [real_inner_comm, inner_vsub_vsub_left_eq_dist_sq_left_iff, real_inner_comm]

theorem inner_vsub_vsub_right_eq_dist_sq_left_iff {a b c : P} :
    ⟪a -ᵥ c, b -ᵥ c⟫ = dist a c ^ 2 ↔ ⟪a -ᵥ c, b -ᵥ a⟫ = 0 := by
  rw [dist_eq_norm_vsub V, inner_eq_norm_sq_left_iff, vsub_sub_vsub_cancel_right,
    inner_vsub_right_eq_zero_symm]

theorem inner_vsub_vsub_right_eq_dist_sq_right_iff {a b c : P} :
    ⟪a -ᵥ c, b -ᵥ c⟫ = dist b c ^ 2 ↔ ⟪a -ᵥ b, b -ᵥ c⟫ = 0 := by
  rw [real_inner_comm, inner_vsub_vsub_right_eq_dist_sq_left_iff, real_inner_comm]

end Real
