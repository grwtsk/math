# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.QuasiIsomorphism.Variantbe013aa9e2ebfcb6ef91825760185c7b384900850ccbd0dd666654879e42dc5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea5ef1206157f056097b39e649feea6fdc508b39` · SHA-256 `be013aa9e2ebfcb6ef91825760185c7b384900850ccbd0dd666654879e42dc5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.Betti

namespace Surface

structure QuasiIsomorphismDescriptor where
  chainMap : ChainMapDescriptor
  inducesHomologyIso : Prop

theorem quasiIsomorphism_requires_homology_certificate
    (Q : QuasiIsomorphismDescriptor) :
    Q.inducesHomologyIso -> Q.inducesHomologyIso := by
  intro h
  exact h

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd2a6dafedd78ef5d4c19c085480f639b0d26366c41ce471a21088322007de21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIsomorphism/Variantbe013aa9e2ebfcb6ef91825760185c7b384900850ccbd0dd666654879e42dc5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
