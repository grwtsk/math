# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofMode.Variant398634f86c7d6dd83d819a07b565c299eca1c0d169003b8c1d74930688f94837

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c76a9c69e28bf67492b7ea47a2e8750f5c03ce5` · SHA-256 `398634f86c7d6dd83d819a07b565c299eca1c0d169003b8c1d74930688f94837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Std.Do.SPred.SPred

@[expose] public section


namespace Std.Tactic.Do

open Std.Do

syntax mgoalHyp := ident " : " term

syntax mgoalStx := ppDedent(ppLine mgoalHyp)* ppDedent(ppLine "⊢ₛ " term)

/-- This is the same as `SPred.entails`.
This constant is used to detect `SPred` proof mode goals. -/
abbrev MGoalEntails := @SPred.entails

/-- This is only used for delaboration purposes, so that we can render context variables that appear
to have type `A : PROP` even though `PROP` is not a type. -/
def MGoalHypMarker {σs : List (Type u)} (_A : SPred σs) : Prop := True

end Std.Tactic.Do
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a768207ddeedb70315570e8f41e593e4a307a74e4378a4700a497c5d2c40d43f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofMode/Variant398634f86c7d6dd83d819a07b565c299eca1c0d169003b8c1d74930688f94837.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
