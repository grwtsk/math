# Representation Source Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c09b3b101f4ffb32e7ea400123621cb49e73897` · SHA-256 `6ecfbf35c1245b6fe64458e6b22a4d61f43b3c9b44767e53f6bc305efcfda70e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Codec

namespace Surface.Legacy

structure BinaryLogicMatrixRepresentation (α : Type) where
  encode : α -> Sigma fun rows => Sigma fun cols => BinaryLogicMatrix rows cols
  claimBoundary : String
  representationOnly : Prop

namespace BinaryLogicMatrixRepresentation

theorem boundary_visible {α : Type} (R : BinaryLogicMatrixRepresentation α) :
    R.representationOnly -> R.representationOnly := by
  intro h
  exact h

theorem has_claim_boundary {α : Type} (R : BinaryLogicMatrixRepresentation α) :
    R.claimBoundary = R.claimBoundary := by
  rfl

end BinaryLogicMatrixRepresentation

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26bae9c3c552a17f8d7e5342c90ac0c208bc9613cd2a3852fc3af51249e33358 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Representation/Variant6ecfbf35c1245b6fe64458e6b22a4d61f43b3c9b44767e53f6bc305efcfda70e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
