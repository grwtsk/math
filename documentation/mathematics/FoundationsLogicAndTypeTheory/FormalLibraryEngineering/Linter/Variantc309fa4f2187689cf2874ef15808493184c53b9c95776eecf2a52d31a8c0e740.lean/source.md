# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linter.Variantc309fa4f2187689cf2874ef15808493184c53b9c95776eecf2a52d31a8c0e740

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1f0e187dc95e675d0fe9d3660c628b8bf65b946` · SHA-256 `c309fa4f2187689cf2874ef15808493184c53b9c95776eecf2a52d31a8c0e740`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
This is the `Linter`s file: it imports files defining linters.
Most syntax linters, in particular the ones enabled by default, are imported in `Mathlib.Init`;
this file contains all linters not imported in that file.

This file is ignored by `shake`:
* it is in `ignoreAll`, meaning that all its imports are considered necessary;
* it is in `ignoreImport`, meaning that where it is imported, it is considered necessary.
-/

import Mathlib.Tactic.Linter.DeprecatedModule
import Mathlib.Tactic.Linter.HaveLetLinter
import Mathlib.Tactic.Linter.MinImports
import Mathlib.Tactic.Linter.PPRoundtrip
import Mathlib.Tactic.Linter.UpstreamableDecl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=934530f0af9544811d329ee4421ff95088614f6da93f8a7326dd4a2c3dca60c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linter/Variantc309fa4f2187689cf2874ef15808493184c53b9c95776eecf2a52d31a8c0e740.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
