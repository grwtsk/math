-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.CardinalMkEqMax.Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.CardinalMkEqMax.Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16","mathematical_subject":"Algebra.Polynomials","original_sha256":"b3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Cardinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Hughes, Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Junyan Xu
-/
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.SetTheory.Cardinal.Finsupp

/-!
# Cardinality of Polynomial Ring

The result in this file is that the cardinality of `R[X]` is at most the maximum
of `#R` and `ℵ₀`.
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.CardinalMkEqMax.Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16

universe u

open Cardinal Polynomial

open Cardinal

namespace Polynomial

@[simp]
theorem cardinalMk_eq_max {R : Type u} [Semiring R] [Nontrivial R] : #(R[X]) = max #R ℵ₀ :=
  (toFinsuppIso R).toEquiv.cardinal_eq.trans <| by
    rw [AddMonoidAlgebra, mk_finsupp_lift_of_infinite, lift_uzero, max_comm]
    rfl

@[deprecated (since := "2024-11-10")] alias cardinal_mk_eq_max := cardinalMk_eq_max

theorem cardinalMk_le_max {R : Type u} [Semiring R] : #(R[X]) ≤ max #R ℵ₀ := by
  cases subsingleton_or_nontrivial R
  · exact (mk_eq_one _).trans_le (le_max_of_le_right one_le_aleph0)
  · exact cardinalMk_eq_max.le

@[deprecated (since := "2024-11-10")] alias cardinal_mk_le_max := cardinalMk_le_max

end Polynomial
