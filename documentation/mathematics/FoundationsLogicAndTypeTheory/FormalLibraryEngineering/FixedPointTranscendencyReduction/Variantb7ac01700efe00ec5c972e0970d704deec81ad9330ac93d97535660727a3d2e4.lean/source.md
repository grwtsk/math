# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointTranscendencyReduction.Variantb7ac01700efe00ec5c972e0970d704deec81ad9330ac93d97535660727a3d2e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35225f1c8ce5014ebdf037985c13d412ccaab2c0` · SHA-256 `b7ac01700efe00ec5c972e0970d704deec81ad9330ac93d97535660727a3d2e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.RH.CanonicalPathReduction

/-!
# Folder.GrandChallenge.RH.FixedPointTranscendencyReduction

Radiation role: research-boundary
BinaryMatrix spine: This module records RH fixed-point-transcendency reduction contracts.
Ontology: rh_canonical_path_reduction
Pivot role: fixed-point
Zero typology: off-critical
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace RH

theorem rh_fixed_point_transcendency_if_supplied
    (R : RHCanonicalPathReduction) :
    R.fixedPointTranscendencySupplied :=
  R.fixedPointTranscendencySupplied_certified

theorem rh_offcritical_obstruction_if_supplied
    (R : RHCanonicalPathReduction) :
    R.offCriticalObstructionSupplied :=
  R.offCriticalObstructionSupplied_certified

end RH
end GrandChallenge
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c601e581ae6a1f406bbd3cc3d15ad7b6ff7b7ce2519f7b0eb72f3f31e3e1bc56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTranscendencyReduction/Variantb7ac01700efe00ec5c972e0970d704deec81ad9330ac93d97535660727a3d2e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
