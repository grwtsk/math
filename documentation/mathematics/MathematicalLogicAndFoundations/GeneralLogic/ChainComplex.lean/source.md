# Chain Complex — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bae3cd6de715e59e1155da3736ccd4ef7d5eb97` · SHA-256 `a6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.Coverage

namespace Surface

structure ChainComplex where
  objectName : String
  boundarySquaredZero : Prop

theorem chainComplex_requires_boundary_squared_zero
    (C : ChainComplex) :
    C.boundarySquaredZero -> C.boundarySquaredZero := by
  intro h
  exact h

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2afc51cd2061f5fb212acf26e17f25dcfd548406d74b4f6757669841371dec8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplex/Varianta6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
