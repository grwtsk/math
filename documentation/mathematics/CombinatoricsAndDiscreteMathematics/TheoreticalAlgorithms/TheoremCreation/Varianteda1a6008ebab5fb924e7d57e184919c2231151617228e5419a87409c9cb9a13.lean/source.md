# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremCreation.Varianteda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2618519b24a60b9f663367e5f43d375bed3457c9` · SHA-256 `eda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.CurvatureBalance

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure TheoremCreationRequest where
  obligation : TheoremCreationObligation
  sourceWitnesses : List String
  proposedDeclarationName : String
  requiredClaimBoundaries : List String
  claimBoundary : List String

theorem theoremCreationRequest_boundary_visible
    (R : TheoremCreationRequest) :
    R.claimBoundary = R.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4dbc52918fabf1dd749a79ceec2559521c0474219c9edbb9ebba6191577c2f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremCreation/Varianteda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
