# Tensor Locus — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c72c72b5f059ebf58f31b909b1f3359bd0f3923f` · SHA-256 `1c57e8f115b5073c02300eb2174e2e994151b487bee733b7cd09e917ace1c739`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.PolarPaddingPole

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure TensorLocus where
  locusId : Nat
  carrier : SomeBinaryLogicMatrix
  polarPole? : Option PolarSplitPaddingPole
  localWeight : Int
  paddingDimension : Nat
  sphericalDimension : Nat
  claimBoundary : List String

theorem tensorLocus_is_matrix_backed
    (L : TensorLocus) :
    Nonempty
      (BinaryLogicMatrix L.carrier.rows L.carrier.cols) :=
  ⟨L.carrier.matrix⟩

structure TensorAnchoringFiber where
  fiberId : Nat
  anchor : SomeBinaryLogicMatrix
  sourceLocus : TensorLocus
  targetLocus : TensorLocus
  polarPole? : Option PolarSplitPaddingPole
  determinantDescriptor : String
  factorRole : String
  fiberBoundary : List String

theorem tensorAnchor_is_BinaryLogicMatrix
    (F : TensorAnchoringFiber) :
    Nonempty
      (BinaryLogicMatrix F.anchor.rows F.anchor.cols) :=
  ⟨F.anchor.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=176667c00309d36d24f82789c5d9926e45929c6c361a256ee5edbccf7831149a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorLocus/Variant1c57e8f115b5073c02300eb2174e2e994151b487bee733b7cd09e917ace1c739.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
