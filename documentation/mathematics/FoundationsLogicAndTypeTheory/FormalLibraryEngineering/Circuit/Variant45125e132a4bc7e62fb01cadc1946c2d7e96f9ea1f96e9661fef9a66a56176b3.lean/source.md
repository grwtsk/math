# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Circuit.Variant45125e132a4bc7e62fb01cadc1946c2d7e96f9ea1f96e9661fef9a66a56176b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae41b080ab3516e0476503c25a6807dbdf044cbc` · SHA-256 `45125e132a4bc7e62fb01cadc1946c2d7e96f9ea1f96e9661fef9a66a56176b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas

@[expose] public section

/-!
This directory contains the implementation and verification of the bitblaster for `BitVec` problems
with boolean substructure. For any primitive operation defined in `Basic` there does exist one
file in `Impl`, containing the bitblaster and one file in `Lemmas`, demonstrating that the circuit
produced by the bitblaster is correct.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3747ecacdf623a196af73bc4fff592bc75da7db14e3ebfaa744e231eb02d6225 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Circuit/Variant45125e132a4bc7e62fb01cadc1946c2d7e96f9ea1f96e9661fef9a66a56176b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
