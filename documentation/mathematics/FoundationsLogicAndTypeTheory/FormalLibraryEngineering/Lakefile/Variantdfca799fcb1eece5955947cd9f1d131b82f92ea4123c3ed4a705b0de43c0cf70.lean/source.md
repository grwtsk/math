# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantdfca799fcb1eece5955947cd9f1d131b82f92ea4123c3ed4a705b0de43c0cf70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16102cf11e852292d0b1303a11d89e9d025644dc` · SHA-256 `dfca799fcb1eece5955947cd9f1d131b82f92ea4123c3ed4a705b0de43c0cf70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «cord-single-entry» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c0ec7c2505f92490eca644efd77434885e47cabe78ddf343dcf9d8e4ae6c20b7/src"
  version := v!"1.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib CordTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c0ec7c2505f92490eca644efd77434885e47cabe78ddf343dcf9d8e4ae6c20b7/src"

lean_exe cordTheoryCheck where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c0ec7c2505f92490eca644efd77434885e47cabe78ddf343dcf9d8e4ae6c20b7/src"
  root := `Main
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84929217edae27acfa833daf34ab69f89f53d4065062ebd5fe7929c52b4637be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantdfca799fcb1eece5955947cd9f1d131b82f92ea4123c3ed4a705b0de43c0cf70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
