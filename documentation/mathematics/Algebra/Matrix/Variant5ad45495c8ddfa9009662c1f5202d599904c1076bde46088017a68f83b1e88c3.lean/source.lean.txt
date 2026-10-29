-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Central.Variant50d5875684c54487177858e97304044f19d3ea9e8eca455b2921372ad1c442eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50d5875684c54487177858e97304044f19d3ea9e8eca455b2921372ad1c442eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Central.Variant50d5875684c54487177858e97304044f19d3ea9e8eca455b2921372ad1c442eb","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"50d5875684c54487177858e97304044f19d3ea9e8eca455b2921372ad1c442eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Central/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Yunzhou Xie
-/
import Mathlib.Algebra.Central.Basic
import Mathlib.Data.Matrix.Basis

/-!
# The matrix algebra is a central algebra
-/


namespace GRWTSK.Algebra.Central.Variant50d5875684c54487177858e97304044f19d3ea9e8eca455b2921372ad1c442eb

namespace Algebra.IsCentral

variable (K D : Type*) [CommSemiring K] [Semiring D] [Algebra K D] [IsCentral K D]

open Matrix in
instance matrix (ι : Type*) [Fintype ι] [DecidableEq ι] :
    Algebra.IsCentral K (Matrix ι ι D) where
  out m h := by
    refine isEmpty_or_nonempty ι |>.recOn
      (fun h => Algebra.mem_bot.2 ⟨0, Matrix.ext fun i _ => h.elim i⟩) fun ⟨i⟩ => ?_
    obtain ⟨d, rfl⟩ := mem_range_scalar_of_commute_single (M := m) (fun _ _ _ =>
      Subalgebra.mem_center_iff.mp h _)
    have mem : d ∈ Subalgebra.center K D := by
      rw [Subalgebra.mem_center_iff] at h ⊢
      intro d'
      simpa using Matrix.ext_iff.2 (h (scalar ι d')) i i
    rw [center_eq_bot, Algebra.mem_bot] at mem
    obtain ⟨r, rfl⟩ := mem
    rw [Algebra.mem_bot]
    exact ⟨r, rfl⟩

end Algebra.IsCentral
