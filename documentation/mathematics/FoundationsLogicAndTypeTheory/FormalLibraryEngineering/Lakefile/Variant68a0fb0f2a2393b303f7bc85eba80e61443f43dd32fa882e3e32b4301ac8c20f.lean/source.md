# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2ba7444d7d5b0dbc5e48d1b494133256a4ecc07` · SHA-256 `68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «fcrs» where
  version := v!"0.4.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
  "905b95818eb32af7874a58b427f50c1711a5e96c"

@[default_target]
lean_lib FCRS
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4841770b52872bbde5decaece6ccddb2fa78cf722749aa5286233edb7bb1d03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
