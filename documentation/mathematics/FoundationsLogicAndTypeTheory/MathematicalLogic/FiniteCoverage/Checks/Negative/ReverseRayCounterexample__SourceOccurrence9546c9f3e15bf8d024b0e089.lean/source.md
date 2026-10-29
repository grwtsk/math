# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage.Checks.Negative.ReverseRayCounterexample

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbf2edd958891dc4cb396e1c1d309a3f660019b6` · SHA-256 `9b9f7c1694f29fcbedfbb6c33867c432285481e2912b5adb241e229651ee364a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example (a b : ℝ) (hab : a ≤ b) : ∃ P : ℝ → Prop, (∀ x ∈ Set.Icc a b, P x) ∧ (∀ x ∈ Set.Ici a, P x) :=
  finite_range_does_not_imply_ray a b hab
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c36d83c24f663c0e8719a275658383372ac270ccc4d7493934c14bea9c8858f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage/Checks/Negative/ReverseRayCounterexample__SourceOccurrence9546c9f3e15bf8d024b0e089.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
