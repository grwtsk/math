-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeapFindMinVal.Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.HeapFindMinVal.Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/BinomialHeap/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Data.BinomialHeap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeapFindMinVal.Variant483d65e4811257ea64409a39e2cdf3b0f1a3b0355ba63c772d3e281877dc8cf7

namespace Std.BinomialHeap
namespace Imp

theorem Heap.findMin_val : ((s : Heap α).findMin le k res).val = s.headD le res.val :=
  match s with
  | .nil => rfl
  | .cons r a c s => by rw [findMin, headD]; split <;> apply findMin_val

theorem Heap.deleteMin_fst : ((s : Heap α).deleteMin le).map (·.1) = s.head? le :=
  match s with
  | .nil => rfl
  | .cons r a c s => by simp only [deleteMin, findMin_val, Option.map, head?]

@[simp] theorem HeapNode.WF.realSize_eq :
    ∀ {n} {s : HeapNode α}, s.WF le a n → s.realSize + 1 = 2 ^ n
  | _, .nil, rfl => rfl
  | _, .node .., ⟨_, rfl, _, c, s⟩ => by
    rw [realSize, realSize_eq c, Nat.pow_succ, Nat.mul_succ]
    simp [Nat.add_assoc, realSize_eq s]

@[simp] theorem Heap.WF.size_eq :
    ∀ {s : Heap α}, s.WF le n → s.size = s.realSize
  | .nil, _ => rfl
  | .cons .., ⟨_, h₁, h₂⟩ => by
    simp [size, Nat.shiftLeft, size_eq h₂, Nat.pow_succ, Nat.mul_succ]
    simp [Nat.add_assoc, Nat.one_shiftLeft, h₁.realSize_eq, h₂.size_eq]

end Imp
