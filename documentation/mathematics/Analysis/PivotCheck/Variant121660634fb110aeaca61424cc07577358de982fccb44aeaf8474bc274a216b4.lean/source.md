# Complete source: GRWTSK.Analysis.PivotCheck.Variant121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e145c53ab9ae5d4bae231a5e51443849d96ff8ff` · SHA-256 `121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.NormDet
#synth Fintype (Fin 2 ↪o Fin 4)
#check StrictMono.range_inj
#check Equiv.Perm.sign_pow_two
#check Equiv.Perm.sign_sq
#check Int.cast_pow
#check Fintype.sum_subtype
#check Finset.sum_subset
#check Finset.sum_bij
#check Finset.sum_le_card_nsmul
#check Finset.exists_le_of_sum_le
#check Finset.exists_le_of_sum_le'
#check Finset.sum_lt_sum_of_nonempty
#check norm_one_le
#check norm_one_le_iff
#check Matrix.l2_opNorm_one
#check EuclideanSpace.norm_sq_eq
#check ContinuousLinearMap.opNorm_le_bound
#check Matrix.det_toEuclideanLin
#check Matrix.toEuclideanLin_det
#check LinearMap.det_toMatrix
#check Matrix.det_toLin
#check LinearMap.IsSymmetric.det_eq_prod_eigenvalues
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=634a08513145c1aaffd6ff16ddc15b4e113582fa935bdf5028664ac740b399c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/PivotCheck/Variant121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
