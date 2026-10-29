# Descriptor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d03dc23735b2e6152c20834ebdeb83afaf978e14` · SHA-256 `44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Semantically accountable descriptors

Every retained label has exactly one disposition because the disposition is a
single typed field.  Candidate, opaque, and unresolved labels are therefore
visible states rather than omissions.
-/

namespace Mathematics.Concept

abbrev DescriptorId := StableId

inductive DescriptorKind
  | symbol
  | identifier
  | name
  | label
  | phrase
  | modifier
  | instruction
  deriving DecidableEq, Repr, Inhabited

/-- The exhaustive disposition required for every descriptor occurrence. -/
inductive DescriptorDisposition
  | knownPoint (pointId : ElementId)
  | projectLocalName (pointId : ElementId)
  | contextualModifier
  | representationIdentifier (representationId : RepresentationId)
  | operationalInstruction
  | authorityClassification
  | boundaryOrProhibition
  | candidatePoint (candidateId : ElementId)
  | opaqueLabel
  | unresolvedObligation (obligationId : StableId)
  deriving DecidableEq, Repr, Inhabited

/-- One exact descriptor occurrence and its accountable meaning status. -/
structure Descriptor where
  descriptorId : DescriptorId
  text : String
  kind : DescriptorKind
  disposition : DescriptorDisposition
  source : SourceAnalysis.AbstractSourceAddress
  normalizedTextDigest : Digest
  interpretationDigest : Digest
  deriving DecidableEq, Repr

/-- Spelling equality alone is merely an observation about text. -/
def Descriptor.SameSpelling (left right : Descriptor) : Prop :=
  left.text = right.text

/-- Descriptor identity is independent of spelling. -/
def Descriptor.SameIdentity (left right : Descriptor) : Prop :=
  left.descriptorId = right.descriptorId

end Mathematics.Concept
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=275fa6172b705afcb7b6b6b456c485bbb83d866f22a1363feb6b2c95db6bc516 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Descriptor/Variant44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
