-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExistsOfSet.Variante47445e1b541b6381c9c4f0ed4d10a5ee8010c20a7147d2f08aec948c445d4ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e47445e1b541b6381c9c4f0ed4d10a5ee8010c20a7147d2f08aec948c445d4ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExistsOfSet.Variante47445e1b541b6381c9c4f0ed4d10a5ee8010c20a7147d2f08aec948c445d4ff","mathematical_subject":"Computation.DataStructures","original_sha256":"e47445e1b541b6381c9c4f0ed4d10a5ee8010c20a7147d2f08aec948c445d4ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array/TakeDrop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
import all Init.Data.Array.Basic
public import Init.Data.Array.Basic
public import Init.NotationExtra
import Init.Data.Array.Lemmas
import Init.Data.List.Nat.TakeDrop
import Init.Data.List.TakeDrop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExistsOfSet.Variante47445e1b541b6381c9c4f0ed4d10a5ee8010c20a7147d2f08aec948c445d4ff

public section

/-!
These lemmas are used in the internals of HashMap.
They should find a new home and/or be reformulated.
-/

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

theorem exists_of_set {i : Nat} {a' : α} {l : List α} (h : i < l.length) :
    ∃ l₁ l₂, l = l₁ ++ l[i] :: l₂ ∧ l₁.length = i ∧ l.set i a' = l₁ ++ a' :: l₂ := by
  refine ⟨l.take i, l.drop (i + 1), ⟨by simp, ⟨length_take_of_le (Nat.le_of_lt h), ?_⟩⟩⟩
  simp [set_eq_take_append_cons_drop, h]

end List

namespace Array

theorem exists_of_uset {xs : Array α} {i d} (h) :
    ∃ l₁ l₂, xs.toList = l₁ ++ xs[i] :: l₂ ∧ List.length l₁ = i.toNat ∧
      (xs.uset i d h).toList = l₁ ++ d :: l₂ := by
  simpa only [ugetElem_eq_getElem, ← getElem_toList, uset, toList_set] using
    List.exists_of_set _

end Array
