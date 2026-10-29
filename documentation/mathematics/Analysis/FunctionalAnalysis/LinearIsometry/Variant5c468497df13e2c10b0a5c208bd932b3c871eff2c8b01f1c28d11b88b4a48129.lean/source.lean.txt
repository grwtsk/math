-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.LinearIsometryEquivStrictConvexPreimage.Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ConvexAnalysis.SourceCorpus.LinearIsometryEquivStrictConvexPreimage.Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12","mathematical_subject":"Analysis.ConvexAnalysis","original_sha256":"d70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Convex/LinearIsometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Analysis.Convex.ContinuousLinearEquiv
public import Mathlib.Analysis.Convex.StrictConvexSpace
public import Mathlib.Analysis.Normed.Operator.LinearIsometry

/-!
# (Strict) convexity and linear isometries

In this file we prove some basic lemmas about (strict) convexity and linear isometries.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.LinearIsometryEquivStrictConvexPreimage.Variantd70fc225ad74dc7acd851342cd07320c869c04dadb201be179d1359355a6db12

public section

open Set Metric
open scoped Convex

section SeminormedAddCommGroup

variable {𝕜 E F : Type*}
  [NormedField 𝕜] [PartialOrder 𝕜]
  [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
  [SeminormedAddCommGroup F] [NormedSpace 𝕜 F]

@[simp]
lemma LinearIsometryEquiv.strictConvex_preimage {s : Set F} (e : E ≃ₗᵢ[𝕜] F) :
    StrictConvex 𝕜 (e ⁻¹' s) ↔ StrictConvex 𝕜 s :=
  e.toContinuousLinearEquiv.strictConvex_preimage

@[simp]
lemma LinearIsometryEquiv.strictConvex_image {s : Set E} (e : E ≃ₗᵢ[𝕜] F) :
    StrictConvex 𝕜 (e '' s) ↔ StrictConvex 𝕜 s :=
  e.toContinuousLinearEquiv.strictConvex_image

end SeminormedAddCommGroup

variable {𝕜 E F : Type*} [NormedField 𝕜] [PartialOrder 𝕜]

lemma StrictConvex.linearIsometry_preimage [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [SeminormedAddCommGroup F] [NormedSpace 𝕜 F] {s : Set F}
    (hs : StrictConvex 𝕜 s) (e : E →ₗᵢ[𝕜] F) : StrictConvex 𝕜 (e ⁻¹' s) :=
  hs.linear_preimage _ e.continuous e.injective

variable [NormedAddCommGroup E] [NormedSpace 𝕜 E] [NormedAddCommGroup F] [NormedSpace 𝕜 F]

protected lemma LinearIsometryEquiv.strictConvexSpace_iff (e : E ≃ₗᵢ[𝕜] F) :
    StrictConvexSpace 𝕜 E ↔ StrictConvexSpace 𝕜 F := by
  simp only [strictConvexSpace_iff, ← map_zero e, ← e.image_closedBall, e.strictConvex_image]

lemma LinearIsometry.strictConvexSpace_range_iff (e : E →ₗᵢ[𝕜] F) :
    StrictConvexSpace 𝕜 (e : E →ₗ[𝕜] F).range ↔ StrictConvexSpace 𝕜 E :=
  e.equivRange.strictConvexSpace_iff.symm

instance LinearIsometry.strictConvexSpace_range [StrictConvexSpace 𝕜 E] (e : E →ₗᵢ[𝕜] F) :
    StrictConvexSpace 𝕜 (e : E →ₗ[𝕜] F).range :=
  e.strictConvexSpace_range_iff.mpr ‹_›

lemma LinearIsometry.strictConvexSpace [StrictConvexSpace 𝕜 F] (f : E →ₗᵢ[𝕜] F) :
    StrictConvexSpace 𝕜 E where
  strictConvex_closedBall r hr := by
    rw [← f.isometry.preimage_closedBall]
    exact (strictConvex_closedBall _ _ _).linearIsometry_preimage _

/-- A vector subspace of a strict convex space is a strict convex space.

This instance has priority 900
to make sure that instances like `LinearIsometry.strictConvexSpace_range`
are tried before this one. -/
instance (priority := 900) Submodule.instStrictConvexSpace [StrictConvexSpace 𝕜 E]
    (p : Submodule 𝕜 E) : StrictConvexSpace 𝕜 p :=
  p.subtypeₗᵢ.strictConvexSpace
