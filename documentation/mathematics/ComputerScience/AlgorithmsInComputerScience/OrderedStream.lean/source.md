# Ordered Stream — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8af56b7f22f87e6f313b52695f056418ad7da415` · SHA-256 `cdce30bdbc9adcc4de1a5ec0a2883703a907e7f118fd153bc4fbfe2aa29d14e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.HomologyComplexitySorter

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure BinaryLogicMatrixStream where
  streamId : String
  frames : List Frame
  rootHash : String
  terminalHash : String
  claimBoundary : List String
  allFramesAreMatrices :
    ∀ F, F ∈ frames →
      Nonempty
        (BinaryLogicMatrix F.payload.rows F.payload.cols)
  allBoundariesVisible :
    ∀ F, F ∈ frames → F.claimBoundary = F.claimBoundary

structure OrderedBinaryLogicMatrixStream where
  stream : BinaryLogicMatrixStream
  loci : List TensorLocus
  complexity : List HomologyComplexityIndex
  preorder : HomologyComplexityPreorder
  sortedLeastToMost : Prop
  everyFrameHasLocus :
    ∀ F, F ∈ stream.frames →
      ∃ L, L ∈ loci ∧
        Nonempty
          (BinaryLogicMatrix L.carrier.rows L.carrier.cols)
  everyLocusHasComplexity :
    ∀ L, L ∈ loci →
      ∃ C, C ∈ complexity ∧ C.locus = L
  claimBoundary : List String

theorem orderedStream_boundary_visible
    (S : OrderedBinaryLogicMatrixStream) :
    S.claimBoundary = S.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf7f4008c2df3205580f4a5c49a14234005ce75e997a65dabfcee790c6c37d48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedStream/Variantcdce30bdbc9adcc4de1a5ec0a2883703a907e7f118fd153bc4fbfe2aa29d14e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
