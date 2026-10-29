# AIGPublic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `291793f80c05593cbb4fdee9f796dc6be64c74e4` · SHA-256 `b0ee669282f6f8bc5a76bcaa21d805021302406e46f0af3bbf1f8e14586cf2f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.Basic
public import Std.Sat.AIG.LawfulOperator
public import Std.Sat.AIG.Lemmas
public import Std.Sat.AIG.Cached
public import Std.Sat.AIG.CachedLemmas
public import Std.Sat.AIG.CachedGates
public import Std.Sat.AIG.CachedGatesLemmas
public import Std.Sat.AIG.CNF
public import Std.Sat.AIG.Relabel
public import Std.Sat.AIG.RelabelNat
public import Std.Sat.AIG.RefVec
public import Std.Sat.AIG.RefVecOperator
public import Std.Sat.AIG.LawfulVecOperator
public import Std.Sat.AIG.If
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29d12ae00dcd26c9157e42f2568a6c8e9d8bec3b903f75f5bccc94f0073e0dc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AIG/Variantb0ee669282f6f8bc5a76bcaa21d805021302406e46f0af3bbf1f8e14586cf2f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
