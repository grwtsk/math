# Lakefile Edition5 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce7e820e8adafec9eaec8f62124565977c90891b` · SHA-256 `1afcfb25019d37ed94bf16f719ce8dffa6b0037d8f2ac0f8b8b5ae074baa4c65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package geometry_formal where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"

@[default_target]
lean_lib Formal where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal]

lean_lib FormalKernel where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Kernel]

lean_lib FormalBands where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Band]

lean_lib FormalRoot where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Root]

lean_lib FormalChecked where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Checked]

lean_lib FormalSurface where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Surface]

lean_lib FormalConceptual where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Conceptual]

lean_lib FormalBoundaryMatriciant where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[`Formal.Checked.BoundaryMatriciant]

lean_lib FormalProgramBoundaries where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  roots := #[
    `Formal.Blueprint,
    `Formal.Conceptual,
    `Formal.Archive,
    `Formal.Patches.Mathlib,
    `Formal.External.PrimeNumberTheoremAnd,
    `Formal.External.LeanCert
  ]

lean_exe formal_manifest_check where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/247e4edffc65f6704ce22aedd0e2bf216370c2d9c12459f5b55125e113f85e3a/src"
  root := `Formal.ManifestCheck
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b40008c5c4534ac0e76de578e74876714cd6d847ee79f3f6402c146d2973e9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant1afcfb25019d37ed94bf16f719ce8dffa6b0037d8f2ac0f8b8b5ae074baa4c65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
