# Block Source Element — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b82c269852a6cea1da548731ec0d6373330bac62` · SHA-256 `97648548bffc1463ef72813a5ae4c96cb2e872ec8c91e411d726d58ec4a16563`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Element.Reason
import Mathematics.Oracle.Naming.Name

/-! # Certified source elements and semantic receipts -/

namespace Mathematics.Element

open Mathematics

structure UnitSemanticReceipt where
  publicNamesDigest : Digest
  declarationKindsDigest : Digest
  statementDigest : Digest
  implementationDigest : Digest
  generatedFamilyDigest : Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  safetyDigest : Digest
  deriving DecidableEq, Repr

structure SourceElement where
  id : SourceElementId
  commands : Array SourceCommandId
  emittedDeclarations : Array ExtractorDeclarationId
  contextCapsule : ContextCapsule
  imports : Array String
  mustLinkReasons : Array CollapseReasonKind
  barriers : Array RefactorBarrier
  baselineReceipt : UnitSemanticReceipt
  name? : Option Mathematics.Oracle.Naming.ElementName := none
  probeValidated : Bool
  deriving DecidableEq, Repr

def SourceElement.Valid (element : SourceElement) : Prop :=
  element.id.Valid ∧ element.commands.size > 0 ∧ element.probeValidated = true ∧
    element.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true

end Mathematics.Element
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57afe7384dbd93a8e0786e038d16c270a0ce0a0fbf17a8dd0562c3f01341cf0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Block/Variant97648548bffc1463ef72813a5ae4c96cb2e872ec8c91e411d726d58ec4a16563.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
