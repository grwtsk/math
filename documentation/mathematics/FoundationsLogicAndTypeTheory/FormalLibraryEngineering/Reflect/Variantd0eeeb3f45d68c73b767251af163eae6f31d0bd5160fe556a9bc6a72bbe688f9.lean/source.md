# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reflect.Variantd0eeeb3f45d68c73b767251af163eae6f31d0bd5160fe556a9bc6a72bbe688f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a04dcd8bd2a8c378f3209272b451a10942eb2ff` · SHA-256 `d0eeeb3f45d68c73b767251af163eae6f31d0bd5160fe556a9bc6a72bbe688f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Reflect.SatAtBVLogical
public import Lean.Meta.Tactic.BVDecide.Reflect.Basic
public import Lean.Meta.Tactic.BVDecide.Reflect.ReifiedBVExpr
public import Lean.Meta.Tactic.BVDecide.Reflect.ReifiedBVLogical
public import Lean.Meta.Tactic.BVDecide.Reflect.ReifiedBVPred
public import Lean.Meta.Tactic.BVDecide.Reflect.ReifiedLemmas
public import Lean.Meta.Tactic.BVDecide.Reflect.Reify
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=628c717de6b83079be4b310cdb9efbd561e91f432925c125be6e948c780f4970 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reflect/Variantd0eeeb3f45d68c73b767251af163eae6f31d0bd5160fe556a9bc6a72bbe688f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
