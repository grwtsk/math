# Complete source: GRWTSK.Algebra.LinearAlgebra.7a60cc3a1ebafa7acf38d50583563a37d389aa6bf448080fb976b0f5169afebfDeterminant.Variant7a60cc3a1ebafa7acf38d50583563a37d389aa6bf448080fb976b0f5169afebf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b840ef88e839980ecdebb735aa6a131aba7e923d` · SHA-256 `7a60cc3a1ebafa7acf38d50583563a37d389aa6bf448080fb976b0f5169afebf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

set_option pp.universes true
set_option pp.fullNames true

#check @Matrix.det
#check @Matrix.det_apply'
#check @Matrix.det_mul
#check @Matrix.det_permute
#check @Matrix.det_permute'
#check @Matrix.det_submatrix_equiv_self
#check @Matrix.det_reindex
#check @Matrix.det_transpose
#check @Matrix.det_fin_one
#check @Matrix.det_fin_two
#print axioms Matrix.det_mul
#print axioms Matrix.det_permute
#print axioms Matrix.det_permute'
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0b1e1d2ce52c64d53f179bbc5ebb0efbe3395ca4d6306c5e2993027fdd6922d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/7a60cc3a1ebafa7acf38d50583563a37d389aa6bf448080fb976b0f5169afebfDeterminant/Variant7a60cc3a1ebafa7acf38d50583563a37d389aa6bf448080fb976b0f5169afebf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
