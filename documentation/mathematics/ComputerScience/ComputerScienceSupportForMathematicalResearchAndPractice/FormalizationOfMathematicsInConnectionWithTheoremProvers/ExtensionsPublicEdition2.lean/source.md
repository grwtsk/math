# Extensions Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f9a53c0883887889a7c9dc104482b8612c9a73f` · SHA-256 `5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Environment

open Lean

namespace Lake

public builtin_initialize nameExt : EnvExtension (Nat × Name) ←
  registerEnvExtension (pure ⟨0, .anonymous⟩)

public builtin_initialize dirExt : EnvExtension (Option System.FilePath) ←
  registerEnvExtension (pure none)

public builtin_initialize optsExt : EnvExtension (Option (NameMap String)) ←
  registerEnvExtension (pure none)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0585ddffb51619281f86f7e4675ec8eee07b97a2c9c6fb1ffa7383ac5faca5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant5c3fd69790ebd0f403b8724daf53703452fda1cd3dee195168fc5b277ad45ec4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
