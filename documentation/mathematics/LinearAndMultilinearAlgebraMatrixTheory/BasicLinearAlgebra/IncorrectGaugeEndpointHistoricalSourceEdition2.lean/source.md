# Complete source: GRWTSK.LinearAlgebra.CocycleProduct.Checks.Negative.IncorrectGaugeEndpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69aff10ca23b32dcb80adfc6ff226de4d34b7697` · SHA-256 `68dba50ddb5c9edeb16f48151ffcf2d310ab789eef61de820298953383aca62d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
example : cocycleProduct Nat.succ (cocycleGaugeTransfer Nat.succ (fun _ => (1 : ℚˣ)) B) 2 0 =
    (B 1)⁻¹ * cocycleProduct Nat.succ (fun _ => (1 : ℚˣ)) 2 0 * B 0 := by
  apply Units.ext
  norm_num [cocycleProduct, cocycleGaugeTransfer, B, Function.iterate_succ_apply']
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d0ec6e4b7f8673be05b8f9c1029fa820cad4cf2d9a2915a6aa9479bfc018692 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CocycleProduct/Checks/Negative/IncorrectGaugeEndpoint__SourceOccurrence23a9174ff5787208165d8061.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
