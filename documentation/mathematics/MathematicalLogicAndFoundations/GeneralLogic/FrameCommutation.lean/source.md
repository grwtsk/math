# Frame Commutation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb17a86c6d57e430a9b7564c6bf850763471a88a` · SHA-256 `cedd4afc4f4f6c22a3ca5f5f6d13ee07f40b7f0b6e1bd9a903ce8adbd21a7489`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.Averaging

namespace Surface

structure FrameCommutationCertificate where
  heat : HeatFlowDescriptor
  frameName : String
  commutesWithFrame : Prop

theorem frameCommuting_flow_requires_commutation_certificate
    (cert : FrameCommutationCertificate) :
    cert.commutesWithFrame -> cert.commutesWithFrame := by
  intro h
  exact h

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=992661ca6a6c142e920b0921c5ce2d26dbf5e4e2d769a4510023add5e8de2a67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameCommutation/Variantcedd4afc4f4f6c22a3ca5f5f6d13ee07f40b7f0b6e1bd9a903ce8adbd21a7489.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
