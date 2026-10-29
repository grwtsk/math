# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variant4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c82ccad5f61b1e37b2c2c32ac2690ae839cea0d4` · SHA-256 `4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Surgery.Obstruction

/-! # Boundary observations are not surgery requests -/

namespace Mathematics.Surgery

structure BoundaryObservation where
  before : Orbit.Status
  after : Orbit.Status
  obstruction : Obstruction
  deriving DecidableEq, Repr

end Mathematics.Surgery
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3679096f214b327d4466ee7d8a7537b69e0dd3b9f2c0de2af84cad5c8e0b2490 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variant4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
