-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastRotateLeft.Variant65450d8c1df6bfe56d4900356a3937e7566f1eb56f3aa301a3ef474b5df9e162","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65450d8c1df6bfe56d4900356a3937e7566f1eb56f3aa301a3ef474b5df9e162","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastRotateLeft.Variant65450d8c1df6bfe56d4900356a3937e7566f1eb56f3aa301a3ef474b5df9e162","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"65450d8c1df6bfe56d4900356a3937e7566f1eb56f3aa301a3ef474b5df9e162","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/RotateLeft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.LawfulVecOperator
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastRotateLeft.Variant65450d8c1df6bfe56d4900356a3937e7566f1eb56f3aa301a3ef474b5df9e162

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.rotateLeft`. Note that only
rotating with a known rotation distance is supported because `rotateLeft` takes a `Nat` as distance.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastRotateLeft (aig : AIG α) (target : AIG.ShiftTarget aig w) :
    AIG.RefVecEntry α w :=
  let ⟨input, distance⟩ := target
  ⟨aig, go input distance 0 (by omega) (.emptyWithCapacity w)⟩
where
  go {aig : AIG α} (input : AIG.RefVec aig w) (distance : Nat) (curr : Nat) (hcurr : curr ≤ w)
      (s : AIG.RefVec aig curr) :
      AIG.RefVec aig w :=
  if hcurr1 : curr < w then
    if hcurr2 : curr < distance % w then
      let ref := input.get (w - (distance % w) + curr) (by omega)
      let s := s.push ref
      go input distance (curr + 1) (by omega) s
    else
      let ref := input.get (curr - (distance % w)) (by omega)
      let s := s.push ref
      go input distance (curr + 1) (by omega) s
  else
    have hcurr : curr = w := by omega
    hcurr ▸ s
termination_by w - curr

instance : AIG.LawfulVecOperator α AIG.ShiftTarget blastRotateLeft where
  le_size := by
    intros
    unfold blastRotateLeft
    dsimp only
    omega
  decl_eq := by
    intros
    unfold blastRotateLeft
    dsimp only; rfl

end bitblast
end BVExpr

end Std.Tactic.BVDecide
