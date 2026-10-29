# Certificate Logic Knowledge Authority Certificate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89c658fb03ca928cde9aac53f147c0bca8c74de9` · SHA-256 `114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Category.Bridge

namespace Think.Logic

structure LogicKnowledgeAuthorityCertificate where
  bridge : CategoricalBridgeEquivalence
  kernelStatus : Bool
  semanticPreservationReceiptHash : String
  roundTripReceiptHash : String
  visualAuthority : Bool
  claimBearing : Bool

def LogicKnowledgeAuthorityCertificate.accepted
  (cert : LogicKnowledgeAuthorityCertificate) : Prop :=
  cert.kernelStatus = true ∧ cert.claimBearing = true ∧ cert.visualAuthority = false

theorem LogicKnowledgeAuthorityCertificate.sound_object_bijection
  (cert : LogicKnowledgeAuthorityCertificate) :
  Bijective cert.bridge.toKnowledge.obj :=
by
  exact CategoricalBridgeEquivalence.object_bijective cert.bridge

theorem LogicKnowledgeAuthorityCertificate.no_visual_authority_if_accepted
  (cert : LogicKnowledgeAuthorityCertificate) :
  cert.accepted → cert.visualAuthority = false :=
by
  intro h
  exact h.right.right

theorem LogicKnowledgeAuthorityCertificate.kernel_checked_if_accepted
  (cert : LogicKnowledgeAuthorityCertificate) :
  cert.accepted → cert.kernelStatus = true :=
by
  intro h
  exact h.left

end Think.Logic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81e273bc86070a2e97aa7104de2268a9817f8ad77397952108808c9aabfd3f9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certificate/Variant114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
