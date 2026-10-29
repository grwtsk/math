-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DListListEquivDList.Variant5759b618b88f9c57e1f78ab27a59bcb7be3d4b9cc3a1c77d35dae4a7e3789610","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5759b618b88f9c57e1f78ab27a59bcb7be3d4b9cc3a1c77d35dae4a7e3789610","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DListListEquivDList.Variant5759b618b88f9c57e1f78ab27a59bcb7be3d4b9cc3a1c77d35dae4a7e3789610","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5759b618b88f9c57e1f78ab27a59bcb7be3d4b9cc3a1c77d35dae4a7e3789610","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/DList/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Batteries.Data.DList.Lemmas
import Mathlib.Control.Traversable.Equiv
import Mathlib.Control.Traversable.Instances

/-!
# Traversable instance for DLists

This file provides the equivalence between `List α` and `DList α` and the traversable instance
for `DList`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DListListEquivDList.Variant5759b618b88f9c57e1f78ab27a59bcb7be3d4b9cc3a1c77d35dae4a7e3789610

open Function Equiv

namespace Batteries

variable (α : Type*)

/-- The natural equivalence between lists and difference lists, using
`DList.ofList` and `DList.toList`. -/
def DList.listEquivDList : List α ≃ DList α where
  toFun := DList.ofList
  invFun := DList.toList
  left_inv _ := DList.toList_ofList _
  right_inv _ := DList.ofList_toList _

instance : Traversable DList :=
  Equiv.traversable DList.listEquivDList

instance : LawfulTraversable DList :=
  Equiv.isLawfulTraversable DList.listEquivDList

instance {α} : Inhabited (DList α) :=
  ⟨DList.empty⟩

end Batteries
