# Complete source: GRWTSK.Algebra.LinearAlgebra.94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205aExterior.Variant94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64104ff9eaace8c503d24c272c759a0874c356f3` · SHA-256 `94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.ExteriorPower.Basis
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Set.powersetCard
#check @Set.powersetCard.ofFinEmbEquiv
#check @exteriorPower.ιMulti
#check @exteriorPower.ιMultiDual
#check @exteriorPower.ιMultiDual_apply_ιMulti
#check @Module.Basis.exteriorPower
#check @exteriorPower.basis_repr_apply
#check @exteriorPower.finrank_eq
#check @exteriorPower.ιMulti_family_linearIndependent_field
#check @exteriorPower.map_injective_field
#check @exteriorPower.map_apply_ιMulti
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c016e64b6daced9616adf3b7f3c4326f0d0f27d0145072f3e54e1240e52ea5b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205aExterior/Variant94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
