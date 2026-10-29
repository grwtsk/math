-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraNormOneAddSmul.Variant60d167542dc17db1200d3e12ef3785ba48d32439b7bb7eb7048e6651975cb19b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60d167542dc17db1200d3e12ef3785ba48d32439b7bb7eb7048e6651975cb19b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraNormOneAddSmul.Variant60d167542dc17db1200d3e12ef3785ba48d32439b7bb7eb7048e6651975cb19b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"60d167542dc17db1200d3e12ef3785ba48d32439b7bb7eb7048e6651975cb19b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/NormTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.Norm.Defs
import Mathlib.RingTheory.Trace.Defs
/-!

# Relation between Norms and Traces

-/


namespace GRWTSK.Algebra.AlgebraNormOneAddSmul.Variant60d167542dc17db1200d3e12ef3785ba48d32439b7bb7eb7048e6651975cb19b

lemma Algebra.norm_one_add_smul {A B} [CommRing A] [CommRing B] [Algebra A B]
    [Module.Free A B] [Module.Finite A B] (a : A) (x : B) :
    ∃ r : A, Algebra.norm A (1 + a • x) = 1 + Algebra.trace A B x * a + r * a ^ 2 := by
  classical
  let ι := Module.Free.ChooseBasisIndex A B
  let b : Basis ι A B := Module.Free.chooseBasis _ _
  haveI : Fintype ι := inferInstance
  clear_value ι b
  simp_rw [Algebra.norm_eq_matrix_det b, Algebra.trace_eq_matrix_trace b]
  simp only [map_add, map_one, map_smul, Matrix.det_one_add_smul a]
  exact ⟨_, rfl⟩
