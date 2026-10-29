-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteGetDEqGetLsbD.Variant6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DenoteGetDEqGetLsbD.Variant6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/GetLsbD.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.GetLsbD
import Init.Data.BitVec.Bootstrap
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteGetDEqGetLsbD.Variant6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d

@[expose] public section

/-!
This module contains the verification of the `BitVec.getLsb` bitblaster from `Impl.Operations.Extract`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVPred

variable [Hashable α] [DecidableEq α]

theorem denote_getD_eq_getLsbD (aig : AIG α) (assign : α → Bool) (x : BitVec w)
    (xv : AIG.RefVec aig w) (falseRef : AIG.Ref aig)
    (hx : ∀ idx hidx, ⟦aig, xv.get idx hidx, assign⟧ = x.getLsbD idx)
    (hfalse : ⟦aig, falseRef, assign⟧ = false) :
    ∀ idx, ⟦aig, xv.getD idx falseRef, assign⟧ = x.getLsbD idx := by
  intro idx
  rw [AIG.RefVec.getD]
  split
  · rw [hx]
  · rw [hfalse]
    symm
    apply BitVec.getLsbD_of_ge
    omega

@[simp]
theorem denote_blastGetLsbD (aig : AIG α) (target : GetLsbDTarget aig) (assign : α → Bool) :
    ⟦aig, blastGetLsbD aig target, assign⟧
      =
    if h : target.idx < target.w then
      ⟦aig, target.vec.get target.idx h, assign⟧
    else
      false := by
  rcases target with ⟨expr, idx⟩
  unfold blastGetLsbD
  dsimp only
  split <;> simp

end BVPred

end Std.Tactic.BVDecide
