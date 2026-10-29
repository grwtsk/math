# Action Public Ring — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04221d1c9f696ee6c82691d057e6b7f47c1f9efa` · SHA-256 `5330941c1d8f34553ea07d4f2034804dab9e0abb6b2c70c8463ca979bb924cec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.Arith.CommRing.EqCnstr
namespace Lean.Meta.Grind.Action

/-- Ring solver action. -/
public def ring : Action :=
  solverAction Arith.CommRing.check `(grind| ring)

end Lean.Meta.Grind.Action
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=131f9af7a25ee822c104ddd3956db43428ed9c44cf1aef0fb289b63ed42f90b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variant5330941c1d8f34553ea07d4f2034804dab9e0abb6b2c70c8463ca979bb924cec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
