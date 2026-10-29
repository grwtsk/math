# Lemmas Lemmas Public Go Inv Of Inv — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9bf1c6dcff54335acdb454918f03073128c6025` · SHA-256 `dd1122ac42a1a350ab3a71cb6e8795d098de3060468bcfa754df867d6e07b255`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Pred

@[expose] public section

/-!
This module contains the verification of the bitblaster for general `BitVec` problems with boolean
substructure (`BVLogicalExpr`). It is the main entrypoint for verification of the bitblasting
framework.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVLogicalExpr

namespace bitblast

mutual

theorem go_Inv_of_Inv (expr : BVLogicalExpr) (aig : AIG BVBit) (assign : BVExpr.Assignment)
    (cache : BVExpr.Cache aig) (hinv : BVExpr.Cache.Inv assign aig cache) :
    BVExpr.Cache.Inv assign (go aig expr cache).result.val.aig (go aig expr cache).cache := by
  induction expr generalizing aig with
  | const =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply IsPrefix.rfl
    · exact hinv
  | literal =>
    simp only [go]
    apply BVPred.bitblast_Inv_of_Inv
    exact hinv
  | not expr ih =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply LawfulOperator.isPrefix_aig (f := mkNotCached)
    · apply ih
      exact hinv
  | gate g lhs rhs lih rih =>
    cases g
    all_goals
      simp [go]
      apply BVExpr.Cache.Inv_cast
      · apply LawfulOperator.isPrefix_aig
      · apply rih
        apply lih
        exact hinv
  | ite discr lhs rhs dih lih rih =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply LawfulOperator.isPrefix_aig (f := mkIfCached)
    · apply rih
      apply lih
      apply dih
      exact hinv

theorem go_eval_eq_eval (expr : BVLogicalExpr) (aig : AIG BVBit) (assign : BVExpr.Assignment)
    (cache : BVExpr.Cache aig) (hinv : BVExpr.Cache.Inv assign aig cache) :
    ⟦(go aig expr cache).result, assign.toAIGAssignment⟧ = expr.eval assign := by
  induction expr generalizing aig with
  | const => simp [go]
  | literal =>
    simp only [go, eval_literal]
    rw [BVPred.denote_bitblast]
    exact hinv
  | not expr ih =>
    specialize ih _ _ hinv
    simp [go, ih]
  | gate g lhs rhs lih rih =>
    cases g
    all_goals
      simp [go, Gate.eval]
      congr 1
      · rw [go_denote_mem_prefix (hstart := Ref.hgate _)]
        apply lih
        exact hinv
      · apply rih
        apply go_Inv_of_Inv
        exact hinv
  | ite discr lhs rhs dih lih rih =>
    simp only [go, Ref.cast_eq, denote_mkIfCached, denote_projected_entry,
      eval_ite, Bool.ite_eq_cond_iff]
    apply ite_congr
    · rw [go_denote_mem_prefix (hstart := ?h)]
      case h =>
        apply go_lt_size_of_lt_aig_size
        exact Ref.hgate _
      rw [go_denote_mem_prefix (hstart := Ref.hgate _)]
      specialize dih _ _ hinv
      simp [dih]
    · intro h
      rw [go_denote_mem_prefix (hstart := Ref.hgate _)]
      apply lih
      apply go_Inv_of_Inv
      exact hinv
    · intro h
      apply rih
      apply go_Inv_of_Inv
      apply go_Inv_of_Inv
      exact hinv

end

end bitblast

theorem denote_bitblast (expr : BVLogicalExpr) (assign : BVExpr.Assignment) :
    ⟦bitblast expr, assign.toAIGAssignment⟧ = expr.eval assign := by
  unfold bitblast
  rw [bitblast.go_eval_eq_eval]
  apply BVExpr.Cache.Inv_empty

theorem unsat_of_bitblast (expr : BVLogicalExpr) : expr.bitblast.Unsat → expr.Unsat :=  by
  intro h assign
  rw [← denote_bitblast]
  apply h

end BVLogicalExpr

end Std.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1709fb05cc61f3503668e929525d561bdcd39ed33024b8a5f08f936cd294344 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdd1122ac42a1a350ab3a71cb6e8795d098de3060468bcfa754df867d6e07b255.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
