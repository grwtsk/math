# Event Cohomology Event Defects — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a5dab511b525daab297679724e409debe77b7f6` · SHA-256 `182b68b44a61459ddf73fa185dcdb90cfaa34da7a401cb11832a901941eb3928`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Trajectory.Residual
import Mathematics.Oracle.Naming.TwistedRotationCohomology

/-! # Event-cycle and twisted-cohomology diagnostics -/

namespace Mathematics.Trajectory

structure EventDefects where
  cycleDefect : ℝ
  twistedClassDefect : ℝ
  cycleDefectNonnegative : 0 ≤ cycleDefect
  twistedClassDefectNonnegative : 0 ≤ twistedClassDefect

def EventDefects.zero : EventDefects where
  cycleDefect := 0
  twistedClassDefect := 0
  cycleDefectNonnegative := le_rfl
  twistedClassDefectNonnegative := le_rfl

end Mathematics.Trajectory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=144f7717ee431e167e63d7b91faa4460736c14a124ffcd32fc6c58e007be36bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EventCohomology/Variant182b68b44a61459ddf73fa185dcdb90cfaa34da7a401cb11832a901941eb3928.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
