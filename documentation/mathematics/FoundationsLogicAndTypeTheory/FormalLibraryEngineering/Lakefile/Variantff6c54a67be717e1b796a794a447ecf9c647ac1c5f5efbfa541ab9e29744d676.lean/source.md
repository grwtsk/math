# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantff6c54a67be717e1b796a794a447ecf9c647ac1c5f5efbfa541ab9e29744d676

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0105ac0586bf7f409653e469edc38bdcd6cc92fd` · SHA-256 `ff6c54a67be717e1b796a794a447ecf9c647ac1c5f5efbfa541ab9e29744d676`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

set_option autoImplicit false

package «finite-witness-residue» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

@[default_target]
lean_lib Think where
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9091b107c0ac601cbd5feee93bfebfd5725473359e62370dd1258fcd49e14b83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantff6c54a67be717e1b796a794a447ecf9c647ac1c5f5efbfa541ab9e29744d676.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
