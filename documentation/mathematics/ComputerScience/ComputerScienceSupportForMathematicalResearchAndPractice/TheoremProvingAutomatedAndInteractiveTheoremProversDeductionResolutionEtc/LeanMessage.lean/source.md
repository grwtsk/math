# Lean Message — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9b79ad7675662c12f42bc1b13872630b64d50cf` · SHA-256 `ddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Init
import Lean.Message

/-!
# Additional operations on MessageData and related types
-/

open Lean Std MessageData

instance {α β : Type} [ToMessageData α] [ToMessageData β] : ToMessageData (α × β) :=
  ⟨fun x => paren <| toMessageData x.1 ++ ofFormat "," ++ Format.line ++ toMessageData x.2⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=915bccc90643aca972cedfdbc3cb09b81b2cddfb64a915b235d5b6d7b9b76c8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variantddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
