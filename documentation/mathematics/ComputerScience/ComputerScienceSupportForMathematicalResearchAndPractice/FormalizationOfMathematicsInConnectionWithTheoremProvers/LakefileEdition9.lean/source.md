# Lakefile Edition9 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72f1ed01a411847826f259c595e52b1c9c0651e3` · SHA-256 `2c9ade65229a24aea15a6bbfad1d84e4a89224e99f4f597e1527c372ed6ff643`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"

lean_exe spectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"
  root := `SpectralProof.Main
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8aa44619ba0a537c622429448ab36d3595dbc7d550095185079079298c28c97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant2c9ade65229a24aea15a6bbfad1d84e4a89224e99f4f597e1527c372ed6ff643.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
