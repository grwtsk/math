# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHodgeEquivalenceWithoutBothComplexLawsCounterexample.Variantbea175940d9756aa9964077bac8658e84de046804eaadb47cd036aef87a26c48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84c956e4e5071807b1ae3a78ff1e9d39f421e90c` · SHA-256 `bea175940d9756aa9964077bac8658e84de046804eaadb47cd036aef87a26c48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section
open GRWTSK.LinearAlgebra.FramedFiberPort

def zeroDifferential : TwoTermHodgeData ℚ ℚ ℚ where
  delta := 0
  deltaStar := LinearMap.id

def zeroCodifferential : TwoTermHodgeData ℚ ℚ ℚ where
  delta := LinearMap.id
  deltaStar := 0

def identityHodge : TwoTermHodgeData ℚ ℚ ℚ where
  delta := LinearMap.id
  deltaStar := LinearMap.id

-- The identity frame satisfies the codifferential law for this pair,
-- but omitting its differential law changes harmonicity.
example :
    (LinearMap.id : ℚ →ₗ[ℚ] ℚ).comp zeroDifferential.deltaStar =
      identityHodge.deltaStar.comp LinearMap.id := rfl
example : zeroDifferential.IsHarmonic0 1 ∧ ¬ identityHodge.IsHarmonic0 1 := by
  constructor <;>
    norm_num [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
      zeroDifferential, identityHodge, LinearMap.comp_apply]

-- The identity frame satisfies the differential law for this pair,
-- but omitting its codifferential law also changes harmonicity.
example :
    (LinearMap.id : ℚ →ₗ[ℚ] ℚ).comp zeroCodifferential.delta =
      identityHodge.delta.comp LinearMap.id := rfl
example : zeroCodifferential.IsHarmonic0 1 ∧ ¬ identityHodge.IsHarmonic0 1 := by
  constructor <;>
    norm_num [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
      zeroCodifferential, identityHodge, LinearMap.comp_apply]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f2139aab62073a6e3ada5e9369867a4791e71bc4c0639d4c70e7c5ec91d72a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectHodgeEquivalenceWithoutBothComplexLawsCounterexample/Variantbea175940d9756aa9964077bac8658e84de046804eaadb47cd036aef87a26c48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
