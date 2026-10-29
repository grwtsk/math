# Reverse Public Blast Reverse — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd627f4eb45eb5ef50f4bce3dbbdeac3b22ee527` · SHA-256 `4ebfb881fa0bbcb6a6cc7069d57ad6b930ba419bbf1e1fac108143b80a5be2ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.LawfulVecOperator
import Init.Data.Nat.Order
import Init.Data.Order.Lemmas

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.reverse`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastReverse (aig : AIG α) (s : AIG.RefVec aig w) : AIG.RefVecEntry α w :=
  let ⟨refs, hrefs⟩ := s
  ⟨aig, ⟨refs.reverse, by simp [hrefs]⟩⟩

instance : AIG.LawfulVecOperator α AIG.RefVec blastReverse where
  le_size := by simp [blastReverse]
  decl_eq := by simp [blastReverse]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebe84fae0dc62876e55ee2cf841d4a0125e9fceec4d7721983d14fd37a956ee6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reverse/Variant4ebfb881fa0bbcb6a6cc7069d57ad6b930ba419bbf1e1fac108143b80a5be2ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
