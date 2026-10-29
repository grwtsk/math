# Rank — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d99766de0c14d8d8075987dba88645e8768f876` · SHA-256 `da4ca3e4a1b90cf6fc3f235d166088aa40fb7a6ce664c2faa8ca1c390c40527f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Rank
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Matrix.row
#check @Matrix.vecMulLinear
#check @Matrix.range_vecMulLinear
#check @Matrix.rank
#check @Matrix.rank_eq_finrank_span_row
#check @Matrix.rank_transpose
#check @LinearIndependent.rank_matrix
#check @linearIndependent_iff_card_eq_finrank_span
#check @Matrix.rank_of_det_ne_zero
#check @Matrix.rank_submatrix_le
#check @Matrix.rank_mul_eq_right_of_det_ne_zero
#check @Submodule.finrank_quotient_add_finrank
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32ba39c38819c46f56cfca6d189c7a25229f37716669d4bb44b0464df07d6354 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Da4ca3e4a1b90cf6fc3f235d166088aa40fb7a6ce664c2faa8ca1c390c40527fRank/Variantda4ca3e4a1b90cf6fc3f235d166088aa40fb7a6ce664c2faa8ca1c390c40527f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
