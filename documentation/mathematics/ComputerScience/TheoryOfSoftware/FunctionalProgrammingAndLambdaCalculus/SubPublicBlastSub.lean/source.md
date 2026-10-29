# Sub Public Blast Sub — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8020b8d1a24dac119fed8a41db8151d91cc67051` · SHA-256 `5a1272c41b4301b25fa776b8bffc452694e81db5bf9aef73b4fbfcd2b765ee95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Neg

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.sub`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastSub (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
  let ⟨lhs, rhs⟩ := input
  let res := blastNeg aig rhs
  let aig := res.aig
  let negRhs := res.vec
  let lhs := lhs.cast <| AIG.LawfulVecOperator.le_size (f := blastNeg) ..

  blastAdd aig ⟨lhs, negRhs⟩

instance : AIG.LawfulVecOperator α AIG.BinaryRefVec blastSub where
  le_size := by
    intros
    simp only [blastSub]
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastAdd)
    apply AIG.LawfulVecOperator.le_size (f := blastNeg)
  decl_eq := by
    intros
    simp only [blastSub]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastAdd)]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastNeg)]
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastNeg)
    assumption


end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a80560eb571aff206bc04f1c2984977afc248f7fb35a1f62e9bf62b9379047ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sub/Variant5a1272c41b4301b25fa776b8bffc452694e81db5bf9aef73b4fbfcd2b765ee95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
