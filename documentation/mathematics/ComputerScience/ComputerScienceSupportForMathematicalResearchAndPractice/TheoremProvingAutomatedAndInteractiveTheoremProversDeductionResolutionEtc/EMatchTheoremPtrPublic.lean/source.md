# EMatch Theorem Ptr Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a705fc3bafcb91c74e57b635f20e01a8b62c875b` · SHA-256 `00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.EMatchTheorem
public section
namespace Lean.Meta.Grind

@[inline] def isSameEMatchTheoremPtr (a b : EMatchTheorem) : Bool :=
  unsafe ptrEq a b

structure EMatchTheoremPtr where
  thm : EMatchTheorem

abbrev hashEMatchTheoremPtr (thm : EMatchTheorem) : UInt64 :=
  unsafe (ptrAddrUnsafe thm >>> 3).toUInt64

instance : Hashable EMatchTheoremPtr where
  hash k := hashEMatchTheoremPtr k.thm

instance : BEq EMatchTheoremPtr where
  beq k₁ k₂ := isSameEMatchTheoremPtr k₁.thm k₂.thm

end Lean.Meta.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4f93897ae72ab554f25e8a35ac5c6e0ca948ab31b549e33808db58143b7b6f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremPtr/Variant00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
