# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Var.Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da5ddd8c072f69d4b64c7c6dec127ed56ad83e8d` · SHA-256 `2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

@[expose] public section

/-!
This module contains the implementation of a bitblaster for symbolic `BitVec` values.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

structure BVVar (width : Nat) where
  ident : Nat

def blastVar (aig : AIG BVBit) (var : BVVar w) : AIG.RefVecEntry BVBit w :=
  go aig w var.ident 0 (.emptyWithCapacity w) (by omega)
where
  go (aig : AIG BVBit) (w : Nat) (a : Nat) (curr : Nat) (s : AIG.RefVec aig curr)
    (hcurr : curr ≤ w) :
    AIG.RefVecEntry BVBit w :=
  if hcurr : curr < w then
    let res := aig.mkAtomCached ⟨a, ⟨curr, hcurr⟩⟩
    let aig := res.aig
    let bitRef := res.ref
    let s := s.cast <| AIG.LawfulOperator.le_size (f := AIG.mkAtomCached) ..
    let s := s.push bitRef
    go aig w a (curr + 1) s (by omega)
  else
    have hcurr : curr = w := by omega
    ⟨aig, hcurr ▸ s⟩
  termination_by w - curr

theorem blastVar.go_le_size {aig : AIG BVBit} (curr : Nat) (s : AIG.RefVec aig curr) (a : Nat)
    (hcurr : curr ≤ w) :
    aig.decls.size ≤ (go aig w a curr s hcurr).aig.decls.size := by
  unfold go
  split
  · dsimp only
    refine Nat.le_trans ?_ (by apply go_le_size)
    apply AIG.LawfulOperator.le_size (f := AIG.mkAtomCached)
  · simp
termination_by w - curr

theorem blastVar.go_decl_eq {aig : AIG BVBit} (curr : Nat) (s : AIG.RefVec aig curr) (a : Nat)
    (hcurr : curr ≤ w) :
    ∀ (idx : Nat) (h1) (h2), (go aig w a curr s hcurr).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig w a curr s hcurr = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    intro curr h1 h2
    rw [blastVar.go_decl_eq]
    rw [AIG.LawfulOperator.decl_eq (f := AIG.mkAtomCached)]
    apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkAtomCached)
    assumption
  · dsimp only at hgo
    rw [← hgo]
    intros
    simp
termination_by w - curr

instance : AIG.LawfulVecOperator BVBit (fun _ w => BVVar w) blastVar where
  le_size := by
    intros
    unfold blastVar
    apply blastVar.go_le_size
  decl_eq := by
    intros
    unfold blastVar
    apply blastVar.go_decl_eq

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a876f9ebe2736cc49e069db504d3d08619bd903e5e808027dc5ee1cab2f8a13e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
