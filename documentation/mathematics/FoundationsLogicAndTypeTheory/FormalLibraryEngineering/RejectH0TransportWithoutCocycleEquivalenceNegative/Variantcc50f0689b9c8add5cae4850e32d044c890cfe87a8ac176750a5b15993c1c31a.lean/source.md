# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectH0TransportWithoutCocycleEquivalenceNegative.Variantcc50f0689b9c8add5cae4850e32d044c890cfe87a8ac176750a5b15993c1c31a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2947e80f373f910cd770ef8df39e05aa271c12de` · SHA-256 `cc50f0689b9c8add5cae4850e32d044c890cfe87a8ac176750a5b15993c1c31a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- Invertibility of the ambient cochain space does not supply a kernel equivalence.
def ambientEquivNotHZero : HZeroModel edgeHodge (ℚ × ℚ) where
  classEquiv := LinearEquiv.refl ℚ (ℚ × ℚ)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc8ca23c4bb36da7b97e59d77953541de72962b9878ac811b56fb73284a0de8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectH0TransportWithoutCocycleEquivalenceNegative/Variantcc50f0689b9c8add5cae4850e32d044c890cfe87a8ac176750a5b15993c1c31a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
