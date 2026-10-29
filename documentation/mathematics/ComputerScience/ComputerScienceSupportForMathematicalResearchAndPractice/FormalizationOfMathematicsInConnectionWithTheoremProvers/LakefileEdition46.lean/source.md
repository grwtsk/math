# Lakefile Edition46 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d133b836a0e3d80ed341bb935fcfef8fd1aa125` · SHA-256 `b9f3b15b84e96095a5ce63af7ed33375708a167e2923b9b8bc1847e0b68d9633`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «checkdecls» {
  -- add package configuration options here
}

@[default_target]
lean_exe «checkdecls» {
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/cf51f918b89b321b61ba95cd694cf54ad2f0298cdf8515e5218c5687a58994d4/src"
  root := `Main
  supportInterpreter := true
  weakLinkArgs := #["-lLake"]
}
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=295cf0cecb0b8d7476e9f33d8a1227e32e084c9762a42f8dddf1586f04990d77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantb9f3b15b84e96095a5ce63af7ed33375708a167e2923b9b8bc1847e0b68d9633.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
