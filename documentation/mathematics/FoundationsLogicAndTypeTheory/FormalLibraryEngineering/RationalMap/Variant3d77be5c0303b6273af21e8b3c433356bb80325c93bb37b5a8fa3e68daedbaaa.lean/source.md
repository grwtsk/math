# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RationalMap.Variant3d77be5c0303b6273af21e8b3c433356bb80325c93bb37b5a8fa3e68daedbaaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6df7d2614b4167a9312e8940ab7177d033209eb9` · SHA-256 `3d77be5c0303b6273af21e8b3c433356bb80325c93bb37b5a8fa3e68daedbaaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.CategoryTheory.Category.Init
public import Mathlib.Data.Nat.Totient
public import Mathlib.Data.Rat.Floor
public import Mathlib.Data.Sym.Sym2
public import Mathlib.Tactic.Continuity
public import Mathlib.Tactic.ContinuousFunctionalCalculus
public import Mathlib.Tactic.NormNum.GCD
public import Mathlib.Tactic.Positivity
public import Mathlib.Topology.Sheaves.Init

deprecated_module (since := "2026-05-13")
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1ba818130c9a9609a4920ed5e26ca57ecdd0b322c243c2b6668a1c3878a0294 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RationalMap/Variant3d77be5c0303b6273af21e8b3c433356bb80325c93bb37b5a8fa3e68daedbaaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
