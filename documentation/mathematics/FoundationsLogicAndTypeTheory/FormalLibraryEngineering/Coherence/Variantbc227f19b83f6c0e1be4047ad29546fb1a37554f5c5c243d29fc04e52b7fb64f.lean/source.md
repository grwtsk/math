# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coherence.Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc37639585f94e93a19367da290de86efa4afd47` · SHA-256 `bc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP0.HorizonEmbedding.Definition

/-!
# Horizon-embedding coherence primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonEmbeddingCoherence
    (Low Mid High : FinitePrimeHorizon)
    (ι₁ : HorizonEmbedding Low Mid)
    (ι₂ : HorizonEmbedding Mid High)
    (ι₃ : HorizonEmbedding Low High) :
    Prop where
  mapCut_comp :
    ∀ S,
      ι₃.mapCut S =
      ι₂.mapCut (ι₁.mapCut S)
  persistent_id_comp :
    ∀ S,
      ι₃.persistent_cut_id S =
      ι₂.persistent_cut_id
        (ι₁.mapCut S)

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0bf52efc6746e24da945068b66991faafc4aa35595aef3f4ee8801ed4eb9545 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coherence/Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
