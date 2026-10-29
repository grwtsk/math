# Complex And Other Systems — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5fd179f449d9647db66ca5851eae92396cb54e7` · SHA-256 `1aff3d13eeff0e7d8ad3176a622eb540b15c5927cd823cbc33917195b31e2aae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.RealCodes

namespace Surface.Legacy

structure ComplexDescriptorCode where
  realPart : RationalMatrixCode
  imagPart : RationalMatrixCode
  matrix : BinaryLogicMatrix 2 1
  analyticCompletenessClaimed : Bool
  claimBoundary : String

def complexDescriptorBoundary : String :=
  "complex analytic completeness is not claimed by finite descriptor data"

theorem complex_descriptor_boundary_visible
    (C : ComplexDescriptorCode) :
    C.claimBoundary = C.claimBoundary := by
  rfl

structure NumberSystemRegistry where
  entries : List NumberSystemRegistryEntry
  claimBoundary : String

theorem number_system_registry_is_metadata
    (R : NumberSystemRegistry) :
    R.claimBoundary = R.claimBoundary := by
  rfl

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4252846c34faaffb8512d0f7ef4ef374236d86849a306f106171c85e7d546dd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexAndOtherSystems/Variant1aff3d13eeff0e7d8ad3176a622eb540b15c5927cd823cbc33917195b31e2aae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
