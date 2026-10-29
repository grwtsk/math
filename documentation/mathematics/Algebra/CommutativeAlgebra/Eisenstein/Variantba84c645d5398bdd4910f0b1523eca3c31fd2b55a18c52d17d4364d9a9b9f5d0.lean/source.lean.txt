-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Quotient.Variant1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Quotient.Variant1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37","mathematical_subject":"Algebra.Polynomials","original_sha256":"1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Archive/Examples/Eisenstein.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/

import Mathlib.Algebra.CharP.Quotient
import Mathlib.Algebra.Field.ZMod
import Mathlib.Algebra.Polynomial.SpecificDegree
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.RingTheory.Polynomial.Eisenstein.Basic
import Mathlib.Tactic.ComputeDegree

/-! # Example of an application of the generalized Eisenstein criterion

We show here how `Polynomial.generalizedEisenstein` can be applied
to establish the irreducibility of the explicit polynomial of degree 4
  `X ^ 4 - 10 * X ^ 2 + 1 : ℤ[X]`.
(to which the standard criterion) wouldn't apply.
One argues modulo `3`, with `q := X ^ 2 + 1`.

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Quotient.Variant1b5bf08a43da9c96e3a8ec152da0a00aa95d4e1963558ffcac662aa1e8320a37

namespace Polynomial

open Ideal.Quotient Ideal RingHom

example : Irreducible (X ^ 4 - 10 * X ^ 2 + 1 : ℤ[X]) := by
  -- We will apply the generalized Eisenstein criterion with `q = X ^ 2 + 1` and `K = ZMod 3`.
  set f : ℤ[X] := X ^ 4 - 10 * X ^ 2 + 1 with hf_eq
  have hdeg_f : f.natDegree = 4 := by unfold f; compute_degree!
  have hf_lC : f.leadingCoeff = 1 := by
    simp only [f, leadingCoeff, hdeg_f]; compute_degree!
  set q : ℤ [X] := X ^ 2 + 1 with hq_eq
  have hq_deg : q.natDegree = 2 := by unfold q; compute_degree!
  have hq_monic : q.Monic := by unfold q; monicity!
  have hfq : f = q ^ 2 - 12 * q + 12 := by ring
   -- On the other hand, `f %ₘ q = 12`, which is not a multiple of `9`.
  apply generalizedEisenstein (K := ZMod 3) (q := q) (p := 2)
  · set q₃ : (ZMod 3)[X] := X ^ 2 + 1
    have hdeg_q₃ : q₃.natDegree = 2 := by unfold q₃; compute_degree!
    suffices Irreducible q₃ by simpa [q] using this
    apply irreducible_of_degree_le_three_of_not_isRoot
      (by simp_all) (by simp_all [q₃]; decide)
  · unfold q; monicity!
  · exact Monic.isPrimitive hf_lC
  · simp_all
  · suffices f.leadingCoeff = 1 by
      simp [this, map_one, one_ne_zero]
    simp only [leadingCoeff, hdeg_f]
    unfold f; compute_degree!
  · nth_rewrite 1 [hfq]
    rw [hf_lC, ← map_C, C_1, Polynomial.map_one, one_mul, ← sub_eq_zero]
    have : (12 : (ZMod 3)[X]) = 0 := by apply CharP.ofNat_eq_zero' _ 3 12; norm_num
    simp [this]
  · suffices f %ₘ q = 12 by
      rw [this, ← map_ofNat C, Polynomial.map_C, ne_eq, C_eq_zero, eq_zero_iff_mem,
      CharP.ker_intAlgebraMap_eq_span 3, span_singleton_pow, mem_span_singleton]
      norm_num
    rw [hfq, ← modByMonicHom_apply, LinearMap.map_add]
    convert zero_add _
    · rw [← LinearMap.mem_ker, mem_ker_modByMonic hq_monic]
      rw [pow_two, ← sub_mul]
      apply dvd_mul_left
    · symm
      simp only [modByMonicHom_apply, Polynomial.modByMonic_eq_self_iff hq_monic, f]
      rw [show q.degree = 2 by unfold q; compute_degree!]
      rw [show degree _ = 0 by compute_degree!]
      norm_num

end Polynomial
