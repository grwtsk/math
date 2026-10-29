# Arith Public Parent Is Target — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e950223c347945d23cfffb41b17b6b64b6e26baf` · SHA-256 `031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Meta.Tactic.Simp.Arith.Nat
public import Lean.Meta.Tactic.Simp.Arith.Int

public section

namespace Lean.Meta.Simp.Arith

def parentIsTarget (parent? : Option Expr) : Bool :=
  match parent? with
  | none => false
  | some parent => isLinearTerm parent || isLinearCnstr parent || isDvdCnstr parent

end Lean.Meta.Simp.Arith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dddbe095653b9ca0a7f4d2c33c299c999a83a882069f1ff85e9b1d4cf669804 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arith/Variant031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
