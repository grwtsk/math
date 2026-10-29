# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpectralCarrier.Variant11e63d4a3beb88bc673366ad086c82f1e4ac03a8ccf8e11bea80e0fe8c9256fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47197168a924051b10fceb35e03940e1f09a402b` · SHA-256 `11e63d4a3beb88bc673366ad086c82f1e4ac03a8ccf8e11bea80e0fe8c9256fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.PascalTree.SimilarReduction
import Surface.Legacy.BinaryLogicMatrix.Spectral
import Surface.Legacy.BinaryLogicMatrix.Symmetry

namespace Surface
namespace Legacy
namespace PascalTree

structure ConnesSpectralCarrier where
  distinctFactors : List BinaryLogicMatrixTensorFactor
  spectralPolicy? : Option SpectralPolicy
  graphLaplacianSize : Nat
  symmetryCarrier? : Option String
  fiberTensor? : Option BinaryMatrixFiberTensor
  factorIdentityPreserved : Prop
  claimBoundary : AffineTopos.AffineClaimBoundary

theorem distinctFactors_carried_by_connesSpectralCarrier
    (C : ConnesSpectralCarrier) :
    C.factorIdentityPreserved → C.factorIdentityPreserved := by
  intro h
  exact h

theorem connesSpectralCarrier_boundary_visible
    (C : ConnesSpectralCarrier) :
    C.claimBoundary = C.claimBoundary := by
  rfl

end PascalTree
end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=674a42f7158d9e35c6cb3f90a399585d1d08fd7b65078303ad98faf9a1ec24df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralCarrier/Variant11e63d4a3beb88bc673366ad086c82f1e4ac03a8ccf8e11bea80e0fe8c9256fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
