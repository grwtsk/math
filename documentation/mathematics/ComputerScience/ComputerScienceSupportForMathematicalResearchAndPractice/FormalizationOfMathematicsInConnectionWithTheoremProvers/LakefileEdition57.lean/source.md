# Lakefile Edition57 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53c4036234ca5a51f980c97c081bbb3fbf341654` · SHA-256 `f4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «cord-single-entry» where
  version := v!"1.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib CordTheory

lean_exe cordTheoryCheck where
  root := `Main
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f301c51469cc83b584e0beb88275d589f571a8e7fac7cc93ccb5d4d8ffd34e6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantf4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
