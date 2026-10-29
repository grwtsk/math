# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantaabb5bfab828bd2c2746a9f378087e83d2ea69352cb326a5d313c77fe0ee4021

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87d15b733c77daa7a116798d58526f1c48800ece` · SHA-256 `aabb5bfab828bd2c2746a9f378087e83d2ea69352cb326a5d313c77fe0ee4021`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "fead16e91f8b84c43b5c78e60d90fffc4e93cc5d"

@[default_target]
lean_lib SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"

lean_exe spectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"
  root := `SpectralProof.Main
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb3bcbab788d64a13aa0c2bda5c209ddceabe256fa9623cd56d7bd9c0953d0e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantaabb5bfab828bd2c2746a9f378087e83d2ea69352cb326a5d313c77fe0ee4021.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
