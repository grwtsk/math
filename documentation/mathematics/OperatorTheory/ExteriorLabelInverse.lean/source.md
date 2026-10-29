# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.ExteriorLabelInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83bfba32f739e9ea041358b068b811ea43af161e` · SHA-256 `7f80b14ffd1f21031da11b369342d228f1e8b93a5311e348400d7dba386fc71a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.FreeIDS

-- The right inverse cut is false at exterior label zero: N0(-3)=0 but -2>-3.
example : freeEnergy 0 ≤ (-3:ℝ) := by
  norm_num [freeEnergy]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcd98c5ddc254c49cd4f0f2190624ae224077e27d20539678fcf0ced8722ba93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/ExteriorLabelInverse__SourceOccurrence2ddd2037185cdb1a14d94ad3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
