# Complete source: GRWTSK.Algebra.LinearAlgebra.CocycleProduct.Checks.Negative.IncorrectGaugeEndpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0c2f5222dae3c1004acbbfb06df7d72046ae222` · SHA-256 `190189b37ac3005c25db5bc498245a649e54e615a2aabbc51d25045428587733`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
example : cocycleProduct Nat.succ (cocycleGaugeTransfer Nat.succ (fun _ => (1 : ℚˣ)) B) 2 0 =
    (B 1)⁻¹ * cocycleProduct Nat.succ (fun _ => (1 : ℚˣ)) 2 0 * B 0 := by
  apply Units.ext
  norm_num [cocycleProduct, cocycleGaugeTransfer, B, Function.iterate_succ_apply']
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7762efb98c6ddf39ad628eda96ad079665d30b983e2c67c1a99bc949c85efb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CocycleProduct/Checks/Negative/IncorrectGaugeEndpoint__SourceOccurrence15425720e690dc0b2a6b020a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
