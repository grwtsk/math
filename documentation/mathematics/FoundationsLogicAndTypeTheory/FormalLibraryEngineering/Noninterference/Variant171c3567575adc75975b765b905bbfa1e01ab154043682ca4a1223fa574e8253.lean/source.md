# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfb8365fb2060956a8ca8a9a20a23f977b9cd578` · SHA-256 `171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Core.Receipt
import Mathematics.GraphAccess.Exploration.Recaman

/-!
# Access/authority and presentation noninterference
-/

namespace Mathematics.GraphAccess

theorem access_receipt_cannot_commit_state
    (receipt : GraphAccessReceipt) :
    receipt.authoritativeEffect = false :=
  receipt.authoritativeEffect_exact

structure AccessPresentationChange
    (before after : GraphAccessReceipt) where
  requestIdentity :
    after.requestRef = before.requestRef
  graphCutIdentity :
    after.graphCutRef = before.graphCutRef
  dispositionIdentity :
    after.disposition = before.disposition
  exactnessIdentity :
    after.exactness = before.exactness
  certificateIdentity :
    after.certificateRef = before.certificateRef
  obstructionIdentity :
    after.obstructionRef = before.obstructionRef

theorem presentation_change_preserves_access_certificate
    {before after : GraphAccessReceipt}
    (change : AccessPresentationChange before after) :
    after.certificateRef = before.certificateRef :=
  change.certificateIdentity

structure TraversalAuthorityBoundary where
  traversalMode : TraversalMode
  commitAuthority : Bool := false
  commitAuthority_exact : commitAuthority = false
deriving Repr

theorem traversal_mode_does_not_grant_commit_authority
    (boundary : TraversalAuthorityBoundary) :
    boundary.commitAuthority = false :=
  boundary.commitAuthority_exact

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b44cb9f2dbb6ec9095a5567b60f9c49cbbcd1098853f10f9f07395542a42f5ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
