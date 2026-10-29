# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantd77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e28ea0a5dcfeab5c4e8c32778d462a0876fce561` · SHA-256 `d77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «checkdecls» {
  -- add package configuration options here
}

@[default_target]
lean_exe «checkdecls» {
  root := `Main
  supportInterpreter := true
  weakLinkArgs := #["-lLake"]
}
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76fd9fd1c257c35566ffe8da2e544b8262ae572e93b2911d3dca1817847e9862 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantd77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
