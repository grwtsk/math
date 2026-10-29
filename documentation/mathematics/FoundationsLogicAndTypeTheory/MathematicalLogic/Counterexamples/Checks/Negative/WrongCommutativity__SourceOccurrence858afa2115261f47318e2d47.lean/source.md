# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counterexamples.Checks.Negative.WrongCommutativity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d4e211e753815bef7f64d359dd6608bc4248204` · SHA-256 `64baaaa4a0c0ca94ebd683b99675a530cd0c3a8477204b34c121948aa2634015`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : Commute hostileUpper hostileLower := by
  norm_num [Commute, SemiconjBy, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=325d9018ccf29790b1fe26903d46f4c5bd62a1cddf65a3644583e08607cf45de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Negative/WrongCommutativity__SourceOccurrence858afa2115261f47318e2d47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
