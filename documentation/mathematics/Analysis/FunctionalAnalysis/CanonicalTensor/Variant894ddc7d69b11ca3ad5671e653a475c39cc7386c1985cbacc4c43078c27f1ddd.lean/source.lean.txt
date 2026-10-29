-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.InnerProductSpaceCanonicalContravariantTensor.Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.InnerProductSpaceCanonicalContravariantTensor.Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/InnerProductSpace/CanonicalTensor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stefan Kebekus
-/

import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Canonical tensors in real inner product spaces

Given an `InnerProductSpace ℝ E`, this file defines two canonical tensors.

* `InnerProductSpace.canonicalContravariantTensor E : E ⊗[ℝ] E →ₗ[ℝ] ℝ`. This is the element
  corresponding to the inner product.

* If `E` is finite-dimensional, then `E ⊗[ℝ] E` is canonically isomorphic to its dual. Accordingly,
  there exists an element `InnerProductSpace.canonicalCovariantTensor E : E ⊗[ℝ] E` that
  corresponds to `InnerProductSpace.canonicalContravariantTensor E` under this identification.

The theorem `canonicalCovariantTensor_eq_sum` shows that
`InnerProductSpace.canonicalCovariantTensor E` can be computed from any orthonormal basis `v` as
`∑ i, (v i) ⊗ₜ[ℝ] (v i)`.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.InnerProductSpaceCanonicalContravariantTensor.Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a

open InnerProductSpace TensorProduct

variable (E : Type*) [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- The canonical contravariant tensor corresponding to the inner product -/
noncomputable def InnerProductSpace.canonicalContravariantTensor :
    E ⊗[ℝ] E →ₗ[ℝ] ℝ := lift bilinFormOfRealInner

/--
The canonical covariant tensor corresponding to `InnerProductSpace.canonicalContravariantTensor`
under the identification of `E` with its dual.
-/
noncomputable def InnerProductSpace.canonicalCovariantTensor [FiniteDimensional ℝ E] :
    E ⊗[ℝ] E := ∑ i, ((stdOrthonormalBasis ℝ E) i) ⊗ₜ[ℝ] ((stdOrthonormalBasis ℝ E) i)

/-- Representation of the canonical covariant tensor in terms of an orthonormal basis. -/
theorem InnerProductSpace.canonicalCovariantTensor_eq_sum [FiniteDimensional ℝ E]
    {ι : Type*} [Fintype ι] (v : OrthonormalBasis ι ℝ E) :
    InnerProductSpace.canonicalCovariantTensor E = ∑ i, (v i) ⊗ₜ[ℝ] (v i) := by
  let w := stdOrthonormalBasis ℝ E
  calc ∑ m, w m ⊗ₜ[ℝ] w m
  _ = ∑ m, ∑ n, ⟪w m, w n⟫_ℝ • w m ⊗ₜ[ℝ] w n := by
    congr 1 with m
    rw [Fintype.sum_eq_single m _, orthonormal_iff_ite.1 w.orthonormal]
    · simp only [↓reduceIte, one_smul]
    simp only [orthonormal_iff_ite.1 w.orthonormal, ite_smul, one_smul, zero_smul,
      ite_eq_right_iff]
    tauto
  _ = ∑ m, ∑ n, (∑ i, ⟪w m, v i⟫_ℝ * ⟪v i, w n⟫_ℝ) • w m ⊗ₜ[ℝ] w n := by
    simp_rw [OrthonormalBasis.sum_inner_mul_inner v]
  _ = ∑ m, ∑ n, (∑ i, ⟪w m, v i⟫_ℝ * ⟪w n, v i⟫_ℝ) • w m ⊗ₜ[ℝ] w n := by
    simp only [real_inner_comm (w _)]
  _ = ∑ i, (∑ m, ⟪w m, v i⟫_ℝ • w m) ⊗ₜ[ℝ] ∑ n, ⟪w n, v i⟫_ℝ • w n := by
    simp only [sum_tmul, tmul_sum, smul_tmul_smul, Finset.sum_comm (γ := ι), Finset.sum_smul]
    rw [Finset.sum_comm]
  _ = ∑ i, v i ⊗ₜ[ℝ] v i := by
    simp only [w.sum_repr' (v _)]
