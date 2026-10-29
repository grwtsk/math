-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEqDenoteEq.Variantd3f391cbc796afbfae915cb486147dcf4d5980a2d0561df8c5bdad4ffc64c0e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3f391cbc796afbfae915cb486147dcf4d5980a2d0561df8c5bdad4ffc64c0e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MkEqDenoteEq.Variantd3f391cbc796afbfae915cb486147dcf4d5980a2d0561df8c5bdad4ffc64c0e3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d3f391cbc796afbfae915cb486147dcf4d5980a2d0561df8c5bdad4ffc64c0e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Eq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Eq
import Init.Data.BitVec.Bootstrap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEqDenoteEq.Variantd3f391cbc796afbfae915cb486147dcf4d5980a2d0561df8c5bdad4ffc64c0e3

@[expose] public section

/-!
This module contains the verification of the `BitVec` equality bitblaster from `Impl.Operations.Eq`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVPred

variable [Hashable α] [DecidableEq α]

theorem mkEq_denote_eq (aig : AIG α) (pair : AIG.BinaryRefVec aig w) (assign : α → Bool)
    (lhs rhs : BitVec w)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, pair.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, pair.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ⟦mkEq aig pair, assign⟧ = (lhs == rhs) := by
  unfold mkEq
  rw [Bool.eq_iff_iff]
  simp only [RefVec.denote_fold_and, RefVec.denote_zip, denote_mkBEqCached, beq_iff_eq]
  constructor
  · intro h
    ext i h'
    rw [← BitVec.getLsbD_eq_getElem, ← BitVec.getLsbD_eq_getElem, ← hleft, ← hright]
    · simp [h, h']
    · omega
    · omega
  · intro h idx hidx
    rw [hleft, hright]
    simp [h]

end BVPred

end Std.Tactic.BVDecide
