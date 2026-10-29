# Codec Binary Logic Matrix Codec — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c4502da6f8c46dd5e2e2fc5914fa57d00910e3f` · SHA-256 `3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

class BinaryLogicMatrixCodec (α : Type) where
  rows : α -> Nat
  cols : α -> Nat
  encode : (x : α) -> BinaryLogicMatrix (rows x) (cols x)
  decode? : {rows cols : Nat} -> BinaryLogicMatrix rows cols -> Option α
  roundTrip : ∀ x : α, decode? (encode x) = some x

namespace BinaryLogicMatrixCodec

def encodeSigma {α : Type} [C : BinaryLogicMatrixCodec α] (x : α) :
    Sigma fun rows => Sigma fun cols => BinaryLogicMatrix rows cols :=
  ⟨C.rows x, ⟨C.cols x, C.encode x⟩⟩

theorem roundTrip_checked {α : Type} [C : BinaryLogicMatrixCodec α] (x : α) :
    C.decode? (C.encode x) = some x :=
  C.roundTrip x

end BinaryLogicMatrixCodec

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c692165e7908381c0f70622f7163a7bfdf007bcaba59f3663c4431928cc9a61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Codec/Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
