-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictDerivAt.Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasStrictDerivAt.Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949","mathematical_subject":"Analysis.Calculus","original_sha256":"7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/Deriv/AffineMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Linear
import Mathlib.LinearAlgebra.AffineSpace.AffineMap
/-!
# Derivatives of affine maps

In this file we prove formulas for one-dimensional derivatives of affine maps `f : 𝕜 →ᵃ[𝕜] E`. We
also specialise some of these results to `AffineMap.lineMap` because it is useful to transfer MVT
from dimension 1 to a domain in higher dimension.

## TODO

Add theorems about `deriv`s and `fderiv`s of `ContinuousAffineMap`s once they will be ported to
Mathlib 4.

## Keywords

affine map, derivative, differentiability
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictDerivAt.Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  (f : 𝕜 →ᵃ[𝕜] E) {a b : E} {L : Filter 𝕜} {s : Set 𝕜} {x : 𝕜}

namespace AffineMap

theorem hasStrictDerivAt : HasStrictDerivAt f (f.linear 1) x := by
  rw [f.decomp]
  exact f.linear.hasStrictDerivAt.add_const (f 0)

theorem hasDerivAtFilter : HasDerivAtFilter f (f.linear 1) x L := by
  rw [f.decomp]
  exact f.linear.hasDerivAtFilter.add_const (f 0)

theorem hasDerivWithinAt : HasDerivWithinAt f (f.linear 1) s x := f.hasDerivAtFilter
theorem hasDerivAt : HasDerivAt f (f.linear 1) x := f.hasDerivAtFilter

protected theorem derivWithin (hs : UniqueDiffWithinAt 𝕜 s x) :
    derivWithin f s x = f.linear 1 :=
  f.hasDerivWithinAt.derivWithin hs

@[simp] protected theorem deriv : deriv f x = f.linear 1 := f.hasDerivAt.deriv

protected theorem differentiableAt : DifferentiableAt 𝕜 f x := f.hasDerivAt.differentiableAt
protected theorem differentiable : Differentiable 𝕜 f := fun _ ↦ f.differentiableAt

protected theorem differentiableWithinAt : DifferentiableWithinAt 𝕜 f s x :=
  f.differentiableAt.differentiableWithinAt

protected theorem differentiableOn : DifferentiableOn 𝕜 f s := fun _ _ ↦ f.differentiableWithinAt

/-!
### Line map

In this section we specialize some lemmas to `AffineMap.lineMap` because this map is very useful to
deduce higher dimensional lemmas from one-dimensional versions.
-/

theorem hasStrictDerivAt_lineMap : HasStrictDerivAt (lineMap a b) (b - a) x := by
  simpa using (lineMap a b : 𝕜 →ᵃ[𝕜] E).hasStrictDerivAt

theorem hasDerivAt_lineMap :  HasDerivAt (lineMap a b) (b - a) x :=
  hasStrictDerivAt_lineMap.hasDerivAt

theorem hasDerivWithinAt_lineMap : HasDerivWithinAt (lineMap a b) (b - a) s x :=
  hasDerivAt_lineMap.hasDerivWithinAt

end AffineMap
