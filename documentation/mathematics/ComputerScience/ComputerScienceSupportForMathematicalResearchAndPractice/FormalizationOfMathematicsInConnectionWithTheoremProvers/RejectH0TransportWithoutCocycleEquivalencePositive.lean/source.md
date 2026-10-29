# Reject H0 Transport Without Cocycle Equivalence Positive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d056044ae1f8d55f000917f78b000ba7d2ab9fa` · SHA-256 `cf97609b4538c879f30c8979771510bf6726c3244dab18429e244ba014022ba7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : Cocycle0 edgeHodge ≃ₗ[ℚ] Cocycle0 edgeHodge :=
  (HodgeEquiv.refl edgeHodge).cocycleEquiv
example : HZeroModel edgeHodge ℚ :=
  (HodgeEquiv.refl edgeHodge).transportHZeroModel EdgeFixture.edgeHZeroModel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed8ea13082f2402926bd7d07624234c1bdc4c214ba9741c9e2becf53c4df9669 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectH0TransportWithoutCocycleEquivalencePositive/Variantcf97609b4538c879f30c8979771510bf6726c3244dab18429e244ba014022ba7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
