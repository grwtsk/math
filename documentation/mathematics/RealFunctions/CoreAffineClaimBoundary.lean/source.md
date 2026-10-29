# Core Affine Claim Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1b502855b9488641636e198e0816c5e63695afa` · SHA-256 `077d890a99bf83e17d7679a861b9638b0a251d13d14f2c6477bdb72e7113beb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Gamma
import Surface.Legacy.BinaryLogicMatrix.Comparison

namespace Surface
namespace Legacy
namespace AffineTopos

structure AffineClaimBoundary where
  label : String

inductive CoverageModality
| theoremChecked
| fixtureValidated
| runtimeValidated
| visualizationOnly
| boundaryOnly
deriving DecidableEq, Repr

structure Context where
  gamma : Gamma
  foundation : LogicalFoundation
  claimBoundary : AffineClaimBoundary
  foundationVisible : foundation = gamma.logicalFoundation → True

structure Object where
  name : String
  context : Context
  trusted : Bool
  proofStatus : ClaimStatus
  claimBoundary : AffineClaimBoundary

structure Morphism (source target : Object) where
  name : String
  modality : CoverageModality
  claimBoundary : AffineClaimBoundary
  checked : Prop

structure ComparisonObject where
  left : Object
  right : Object
  metricName : String
  claimBoundary : AffineClaimBoundary
  checked : Prop

structure ComparisonTopologyDescriptor where
  comparisons : List ComparisonObject
  generatedByRelaxation : Bool
  claimBoundary : AffineClaimBoundary

theorem affineTopos_claimBoundary_visible
    (O : Object) :
    O.claimBoundary = O.claimBoundary := by
  rfl

theorem affineTopos_comparison_boundary_visible
    (C : ComparisonObject) :
    C.claimBoundary = C.claimBoundary := by
  rfl

end AffineTopos
end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a123737837de8e2c1521da37e0f3ecbf7ff1549ecaa9ec6c008b62e550dfc93a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Core/Variant077d890a99bf83e17d7679a861b9638b0a251d13d14f2c6477bdb72e7113beb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
