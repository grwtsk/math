# Complete source: GRWTSK.Logic.Counterexamples.Checks.Negative.WrongCommutativity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02072762bc5aee7fd5609e25a197faa1ea034edb` · SHA-256 `5950f4f9fb688f31e1a4b5760ecd53efa575c46ad2c5c4bdfd719e28792c9765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : Commute hostileUpper hostileLower := by
  norm_num [Commute, SemiconjBy, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef171545ca38134a69247f2576e80a4d2b875d8096a917530fe2ba35065305c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Negative/WrongCommutativity__SourceOccurrence794b113bbd5de21a30366c21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
