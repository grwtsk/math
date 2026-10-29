# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant2196f8ae3e9465d5b43455dc4ff8c0fe23f0f10c508399b243da638978ae70da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6388c531e820d07b4473f26276d8ea8c86f7288` · SHA-256 `2196f8ae3e9465d5b43455dc4ff8c0fe23f0f10c508399b243da638978ae70da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package geometry_formal where
  srcDir := "."

@[default_target]
lean_lib Formal where
  roots := #[`Formal]

lean_lib FormalKernel where
  roots := #[`Formal.Kernel]

lean_lib FormalBands where
  roots := #[`Formal.Band]

lean_lib FormalRoot where
  roots := #[`Formal.Root]

lean_lib FormalChecked where
  roots := #[`Formal.Checked]

lean_lib FormalSurface where
  roots := #[`Formal.Surface]

lean_lib FormalConceptual where
  roots := #[`Formal.Conceptual]

lean_lib FormalBoundaryMatriciant where
  roots := #[`Formal.Checked.BoundaryMatriciant]

lean_lib FormalProgramBoundaries where
  roots := #[
    `Formal.Blueprint,
    `Formal.Conceptual,
    `Formal.Archive,
    `Formal.Patches.Mathlib,
    `Formal.External.PrimeNumberTheoremAnd,
    `Formal.External.LeanCert
  ]

lean_exe formal_manifest_check where
  root := `Formal.ManifestCheck
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f9c4f2f6ca92b01e2dbab4221781ce0fbdf5ac5df50338ad49b7d363be9127f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant2196f8ae3e9465d5b43455dc4ff8c0fe23f0f10c508399b243da638978ae70da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
