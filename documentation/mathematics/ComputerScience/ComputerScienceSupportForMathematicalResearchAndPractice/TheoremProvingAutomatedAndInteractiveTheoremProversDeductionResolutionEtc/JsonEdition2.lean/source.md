# Json Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8c66e5545b7400fc568354b9fd34f9bb2877f16` · SHA-256 `cf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
 Copyright (c) 2022 E.W.Ayers. All rights reserved.
 Released under Apache 2.0 license as described in the file LICENSE.
 Authors: E.W.Ayers, Mario Carneiro
-/

import Lean.Data.Json
import Std.Lean.Float

open Lean

instance : OfScientific JsonNumber where
  ofScientific mantissa exponentSign decimalExponent :=
    if exponentSign then
      { mantissa := mantissa, exponent := decimalExponent }
    else
      { mantissa := (mantissa * 10 ^ decimalExponent : Nat), exponent := 0 }

instance : Neg JsonNumber where
  neg jn := ⟨-jn.mantissa, jn.exponent⟩

instance : ToJson Float where
  toJson x :=
    match x.toRatParts' with
    | none => Json.null
    | some (n, d) =>
      if d < 0 then
        Json.num { mantissa := n * (5^d.natAbs : Nat), exponent := d.natAbs }
      else
        Json.num { mantissa := n * (2^d.natAbs : Nat), exponent := 0 }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=166ce0c5340d3936b70687bcdcf466c7a821a8df6c54a871ced8e2c39660eb9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Json/Variantcf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
