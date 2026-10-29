# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counterexamples.Checks.Negative.WrongProductInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a5c2e2607e61e0d16eb4376fb55888c93166df1` · SHA-256 `4dbc6ad69e13bed5b9558fc3e10289cc0fd97f6a61fa41c692abac7cfb4770e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ = (hostileLower * hostileUpper)⁻¹ := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [hostileSign, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b20e6f305539d1baabc9afa9d74ad3ef9f03c7b8c6f9eb039b5c33a75d9e9fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Negative/WrongProductInverse__SourceOccurrence093984e7508dfdf57e79fa57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
