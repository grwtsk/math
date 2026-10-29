# Rank Order Compatibility — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db53ff2a1fc8420d71dd8957b226344be4ec5adc` · SHA-256 `4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.BSD.FixedPointRecursion

/-!
# Folder.GrandChallenge.BSD.RankOrderCompatibility

Radiation role: research-boundary
BinaryMatrix spine: This module records BSD rank/order compatibility contracts.
Ontology: bsd_fixed_point_recursion
Pivot role: arithmetic
Zero typology: rank-order
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace BSD

structure RankOrderData where
  curve : EllipticCurveObject
  algebraicRankLabel : String
  analyticOrderLabel : String
  regulatorOrPeriodLabel : String

structure RankOrderCompatibility where
  data : RankOrderData
  compatible : Prop
  compatible_certified : compatible
  mismatchObstruction : Prop
  mismatchObstruction_certified : mismatchObstruction
  sourceLabel : String

theorem bsd_rank_order_compatible_if_supplied
    (R : RankOrderCompatibility) :
    R.compatible :=
  R.compatible_certified

theorem bsd_mismatch_obstruction_if_supplied
    (R : RankOrderCompatibility) :
    R.mismatchObstruction :=
  R.mismatchObstruction_certified

end BSD
end GrandChallenge
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=307977d9611df37fec64ddc6730ba4a8362ccb821a6fae78f725ad3d0d2cf43f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
