# Complete source: GRWTSK.Algebra.Polynomial.ConjugateQuartic.Checks.Negative.ZeroHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e65581616b76176d51851bf72f1485699a07501a` · SHA-256 `39a4f2bb318eb668c425cb26757170e31a09609fc43b09f95c656c5035a4efe0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.Polynomial.ConjugateQuartic
open GRWTSK.Polynomial.ConjugateQuartic
-- The witness cannot become nonnegative off the axis, even at height zero.
example : 0 ≤ witnessTrace 1 0 := by
  simpa [witnessTrace_eq] using (show (0 : ℝ) ≤ 0 from le_rfl)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5ce519c1bc8e576097840c3b2570e6fe40b5fef1b6b445dd6ec497d3e931059 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Polynomial/ConjugateQuartic/Checks/Negative/ZeroHeight.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
