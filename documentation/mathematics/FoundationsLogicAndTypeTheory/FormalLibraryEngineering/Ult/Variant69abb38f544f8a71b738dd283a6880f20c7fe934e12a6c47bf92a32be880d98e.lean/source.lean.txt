-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkUltDenoteEq.Variantcabc905929efe1e6617893900ce213f7b0d9c09a05bc277e0e42346309ea1212","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cabc905929efe1e6617893900ce213f7b0d9c09a05bc277e0e42346309ea1212","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MkUltDenoteEq.Variantcabc905929efe1e6617893900ce213f7b0d9c09a05bc277e0e42346309ea1212","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cabc905929efe1e6617893900ce213f7b0d9c09a05bc277e0e42346309ea1212","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Ult.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Carry
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Not
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Ult


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkUltDenoteEq.Variantcabc905929efe1e6617893900ce213f7b0d9c09a05bc277e0e42346309ea1212

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.ult` from `Impl.Operations.Ult`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVPred

variable [Hashable α] [DecidableEq α]

theorem mkUlt_denote_eq (aig : AIG α) (lhs rhs : BitVec w) (input : BinaryRefVec aig w)
    (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ⟦mkUlt aig input, assign⟧ = BitVec.ult lhs rhs := by
  rw [BitVec.ult_eq_not_carry]
  unfold mkUlt
  simp only [denote_projected_entry, denote_mkNotCached]
  congr 1
  rw [BVExpr.bitblast.mkOverflowBit_eq_carry (input := ⟨w, _, _⟩) (lhs := lhs) (rhs := ~~~rhs)]
  · simp
  · dsimp only
    intro idx hidx
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := BVExpr.bitblast.blastNot) (h := ?h)]
    case h => simp [Ref.hgate]
    apply hleft
  · dsimp only
    intro idx hidx
    simp only [hidx, BitVec.getLsbD_eq_getElem, BitVec.getElem_not]
    rw [BVExpr.bitblast.denote_blastNot, hright, BitVec.getLsbD_eq_getElem]

end BVPred

end Std.Tactic.BVDecide
