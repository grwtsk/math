# Action Public Ac — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eaf83719c8ee1dbb620654480ff55aec131aeb77` · SHA-256 `ab7ce45bbc16bd75963e4fe0c14bb53adc5feae265ccacf2048eb9316fbb0231`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.AC.Eq
namespace Lean.Meta.Grind.Action

/-- Associative-Commutative solver action. -/
public def ac : Action :=
  solverAction AC.check `(grind| ac)

end Lean.Meta.Grind.Action
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18d71c70a58f2b1a8c838637a4ed0f6466ec443115daad75829a06be7378fe3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Action/Variantab7ce45bbc16bd75963e4fe0c14bb53adc5feae265ccacf2048eb9316fbb0231.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
