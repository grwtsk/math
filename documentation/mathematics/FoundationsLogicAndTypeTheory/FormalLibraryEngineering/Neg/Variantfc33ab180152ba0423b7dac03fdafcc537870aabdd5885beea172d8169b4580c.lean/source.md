# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Neg.Variantfc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4445744b88a9263e96e34eb9598c5b97eddf7faa` · SHA-256 `fc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Add
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Not
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Const

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.neg`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastNeg (aig : AIG α) (input : AIG.RefVec aig w) : AIG.RefVecEntry α w :=
  let res := blastNot aig input
  let aig := res.aig
  let notInput := res.vec

  let one := blastConst aig 1#w

  blastAdd aig ⟨notInput, one⟩

instance : AIG.LawfulVecOperator α AIG.RefVec blastNeg where
  le_size := by
    intros
    simp only [blastNeg]
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastAdd)
    apply AIG.LawfulVecOperator.le_size (f := blastNot)
  decl_eq := by
    intros
    simp only [blastNeg]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastAdd)]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastNot)]
    · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastNot)
      assumption

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8647e88d95c5c869c3dcbd0e79f4c93bf89ff9c40c51d34baeed3c2103787d8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Neg/Variantfc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
