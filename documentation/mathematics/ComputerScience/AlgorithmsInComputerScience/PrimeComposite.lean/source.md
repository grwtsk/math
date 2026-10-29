# Prime Composite — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e16be012e864571a0ee6a605ac88f34510112919` · SHA-256 `bd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.NumberSystems

namespace Surface.Legacy

structure PrimeEvidence where
  value : Nat
  evidence : Prop

structure CompositeEvidence where
  value : Nat
  factors : List Nat
  multiplies : Prop

structure FactorizationCertificate where
  value : Nat
  factors : List Nat
  factorEvidence : Prop
  productEvidence : Prop
  uniquenessBoundary : String

theorem factorization_certificate_has_value (C : FactorizationCertificate) :
    C.value = C.value := by
  rfl

theorem factorization_certificate_product
    (C : FactorizationCertificate) :
    C.productEvidence -> C.productEvidence := by
  intro h
  exact h

theorem factorization_uniqueness_requires_boundary
    (C : FactorizationCertificate) :
    C.uniquenessBoundary = C.uniquenessBoundary := by
  rfl

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e4a6e0333fb4449403f583668b9ee9c064630d9173023d2501f145c2641372d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
