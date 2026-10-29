# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Variant5e920d5da9be7f3b05cc62c51df5e851249b3a4b6602b0cd2bcddd00df9eddea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86a0351848a901bf937f8a459e8085206bdac35e` · SHA-256 `5e920d5da9be7f3b05cc62c51df5e851249b3a4b6602b0cd2bcddd00df9eddea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Trajectory.Carrier

/-! # Channel-separated trajectory residuals -/

namespace Mathematics.Trajectory

structure Residual where
  localResidual : ℝ
  coverageResidual : ℝ
  sparseSynthesisResidual : ℝ
  basisSpanResidual : ℝ
  eventCycleResidual : ℝ
  twistedCohomologyResidual : ℝ

def Residual.total (residual : Residual) : ℝ :=
  residual.localResidual +
  residual.coverageResidual +
  residual.sparseSynthesisResidual +
  residual.basisSpanResidual +
  residual.eventCycleResidual +
  residual.twistedCohomologyResidual

def Residual.Nonnegative (residual : Residual) : Prop :=
  0 ≤ residual.localResidual ∧
  0 ≤ residual.coverageResidual ∧
  0 ≤ residual.sparseSynthesisResidual ∧
  0 ≤ residual.basisSpanResidual ∧
  0 ≤ residual.eventCycleResidual ∧
  0 ≤ residual.twistedCohomologyResidual

end Mathematics.Trajectory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9dab67f1c3f0388524ffdd8e58565bc322f5231ee26ec90ee7c036a278f9408 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant5e920d5da9be7f3b05cc62c51df5e851249b3a4b6602b0cd2bcddd00df9eddea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
