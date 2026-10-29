import Mathematics.SemanticTokenization.Authority
import Mathematics.SemanticTokenization.Span

/-!
# Evidence records and scopes
-/

namespace Mathematics.SemanticTokenization

inductive EvidenceSourceKind
  | sourceText
  | lexicalResource
  | corpus
  | parser
  | human
  | model
  | proofKernel
  | externalResource
deriving DecidableEq, Repr

inductive EvidenceLocation (text : TextCarrier)
  | sourceSpan (span : Span text)
  | sourceSpans (spans : Finset (Span text))
  | externalResource (locator : String)
deriving Repr

inductive ContextField
  | text
  | sentence
  | discourse
  | task
  | domain
  | speaker
  | time
  | register
deriving DecidableEq, Ord, Repr

structure EvidenceScope where
  contexts : Finset ContextId
  fields : Finset ContextField
  intendedUses : Finset AssertionUse
deriving Repr

structure EvidenceRef (text : TextCarrier) where
  id : EvidenceId
  sourceKind : EvidenceSourceKind
  location : EvidenceLocation text
  scope : EvidenceScope
  snapshot : SnapshotId
  evidenceDigest : Digest
  accepted : Bool
deriving Repr

structure EvidenceRegistry (text : TextCarrier) where
  entries : Array (EvidenceRef text)
  idsUnique :
    PairwiseUnique (entries.map EvidenceRef.id)

def EvidenceRegistry.HasId
    {text : TextCarrier}
    (registry : EvidenceRegistry text)
    (id : EvidenceId) : Prop :=
  ∃ evidence : Fin registry.entries.size,
    (registry.entries[evidence]).id = id

end Mathematics.SemanticTokenization
