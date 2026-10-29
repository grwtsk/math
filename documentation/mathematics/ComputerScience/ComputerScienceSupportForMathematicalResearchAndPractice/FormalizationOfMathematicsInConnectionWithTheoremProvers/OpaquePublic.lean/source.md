# Opaque Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `227c9572e0e20bc53dcbaf5b0383c4f5fe449bb1` · SHA-256 `097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
meta import all Lake.Util.OpaqueType
import Lake.Util.OpaqueType

namespace Lake

/-- Opaque reference to a `Workspace` used for forward declaration. -/
public nonempty_type OpaqueWorkspace

/-- Opaque reference to a `TargetConfig` used for forward declaration. -/
public nonempty_type OpaqueTargetConfig (pkgName name : Lean.Name)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c740ec9e75a1b80ef65fcde90b8c105bb2439ca5d94537e0537d09bb773706a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opaque/Variant097af0cc2ed312539927aa1b7c84943e26e8c80556f4c09846b238291b3cad7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
