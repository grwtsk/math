# Candidate Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc252132c41367e86208b2c6d5a313ef8c2f9aa7` · SHA-256 `203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.Profile
import Mathematics.Taxonomy.Core

/-!
# Candidate parents and exact lexicographic selection data

All numeric ranks are integral. Learned coordinates and floating-point scores
are deliberately absent.
-/

namespace Mathematics.Projection

open Mathematics

structure ParentSelectionKey where
  explicitParentRank : Int
  relationPriority : Int
  principalDomainAgreement : Int
  ontologicalCompatibility : Int
  authorityRank : Int
  specificityRank : Int
  provenanceRank : Int
  finalStableId : StableId
  deriving DecidableEq

inductive ParentKind
  | semantic
  | backbone
  | diagnostic
  deriving DecidableEq, Inhabited

structure ParentCandidate where
  childId : ConceptId
  parentId : StableId
  parentKind : ParentKind
  relationId : Option RelationId
  relationType : Option RelationKindId
  selectionKey : ParentSelectionKey
  authorityName : String
  provenance : Finset StableId
  deriving DecidableEq

structure ParentExplanation where
  conceptId : ConceptId
  chosen : ParentCandidate
  rejected : List ParentCandidate
  deriving DecidableEq

end Mathematics.Projection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=863c882095a70ddd3ac3a954945ceb5ca29bc4dd1bcff36b06d50d83358d9536 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Candidate/Variant203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
