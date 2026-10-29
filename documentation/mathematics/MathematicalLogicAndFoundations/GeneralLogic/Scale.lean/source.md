# Scale — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afb602844ea901bd60a3e30b2c1c468ecf53e4c9` · SHA-256 `b24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic

/-!
# Kakeya scale windows

A scale window records the transverse and axial scales of a tube as positive
real geometry.  It replaces integer labels by the quantities those labels are
intended to approximate.
-/

namespace Mathematics.Geometry.Kakeya

/-- Positive transverse and axial scales with the transverse scale no larger. -/
structure ScaleWindow where
  fine : ℝ
  coarse : ℝ
  finePositive : 0 < fine
  fine_le_coarse : fine ≤ coarse

theorem ScaleWindow.coarsePositive (scale : ScaleWindow) :
    0 < scale.coarse :=
  lt_of_lt_of_le scale.finePositive scale.fine_le_coarse

theorem ScaleWindow.fineNonnegative (scale : ScaleWindow) :
    0 ≤ scale.fine :=
  scale.finePositive.le

theorem ScaleWindow.coarseNonnegative (scale : ScaleWindow) :
    0 ≤ scale.coarse :=
  scale.coarsePositive.le

end Mathematics.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01e4d2cfe81fbb0ea65caa1d3e30ff93af5af841c24e9adc930210229a8a5eb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Scale/Variantb24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
