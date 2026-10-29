# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant6dff17bff0ca986c62eb8fe43bb03e8bb487dd9c22dc433d453a6cc7e0f15ebd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `152942b2a50c5c16f7c2e0c56a4baf8ec6e7b536` · SHA-256 `6dff17bff0ca986c62eb8fe43bb03e8bb487dd9c22dc433d453a6cc7e0f15ebd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package SpectralProof where
  srcDir := "."

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "fead16e91f8b84c43b5c78e60d90fffc4e93cc5d"

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1253879bad756c26f81a30ad4ce9f060962a126e83492b539afa81e337728e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant6dff17bff0ca986c62eb8fe43bb03e8bb487dd9c22dc433d453a6cc7e0f15ebd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
