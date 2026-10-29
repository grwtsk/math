# Complete source: GRWTSK.Algebra.LinearAlgebra.MorphismFactorization.Variant809022aa6516fb1c02276445dfbf44d8ebeb6d46a6d006c22647ab40e4315b91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c92f1fc8b662e4d59c2b463c55bdc55e1b92ed87` · SHA-256 `809022aa6516fb1c02276445dfbf44d8ebeb6d46a6d006c22647ab40e4315b91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Morphism

namespace Surface.Legacy

structure BinaryLogicMatrixMorphismFactorization
    (aRows aCols bRows bCols cRows cCols : Nat) where
  left : BinaryLogicMatrixMorphism aRows aCols bRows bCols
  right : BinaryLogicMatrixMorphism bRows bCols cRows cCols
  composite : BinaryLogicMatrixMorphism aRows aCols cRows cCols
  factorsComposite : Prop
  claimBoundary : String

theorem morphismFactorization_projects_certificate
    (F : BinaryLogicMatrixMorphismFactorization
      aRows aCols bRows bCols cRows cCols) :
    F.factorsComposite -> F.factorsComposite := by
  intro h
  exact h

theorem morphismFactorization_not_flow_claim
    (F : BinaryLogicMatrixMorphismFactorization
      aRows aCols bRows bCols cRows cCols) :
    F.claimBoundary = F.claimBoundary := by
  rfl

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=468fd9d37ce4246e87508b8d6c233c28c6bc65c8cf9298fd6ad2beb1fbd46693 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MorphismFactorization/Variant809022aa6516fb1c02276445dfbf44d8ebeb6d46a6d006c22647ab40e4315b91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
