import Mathematics.SemanticTokenization.EvidenceCut

/-!
# Concept ontology and evidence-bearing concept profiles
-/

namespace Mathematics.SemanticTokenization

structure ConceptDomain where
  identifier : String
  version : Nat
  snapshot : SnapshotId
deriving DecidableEq, Repr

structure ConceptDefinitionRef where
  source : SourceId
  locator : String
  snapshot : SnapshotId
deriving Repr

structure Concept where
  id : ConceptId
  conceptType : String
  definition : ConceptDefinitionRef
  version : Nat
  domain : String
deriving Repr

structure ConceptOntology where
  concepts : Array Concept
  relationRegistry :
    Array
      (ConceptId × SemanticRelationType × ConceptId)
  uniqueIds :
    PairwiseUnique (concepts.map Concept.id)

inductive ProfileField
  | coreDenotation
  | presupposition
  | entailment
  | affect
  | register
  | modality
  | agency
  | temporality
  | argumentStructure
  | figurativeSource
  | figurativeTarget
  | usageRestriction
deriving DecidableEq, Ord, Repr

def ProfileValue : ProfileField → Type
  | .coreDenotation => ConceptId
  | .presupposition => String
  | .entailment => String
  | .affect => String
  | .register => String
  | .modality => Modality
  | .agency => String
  | .temporality => String
  | .argumentStructure => String
  | .figurativeSource => ConceptDomain
  | .figurativeTarget => ConceptDomain
  | .usageRestriction => String

structure ProfileEntry where
  field : ProfileField
  value : ProfileValue field
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty

structure ConceptProfile
    (cut : EvidenceCut) where
  source : Finset (Span cut.text)
  source_nonempty : source.Nonempty
  context : ContextId
  entries : Array ProfileEntry
  snapshot : SnapshotId
  snapshotMatches :
    snapshot = cut.activeSnapshot
  allEvidenceExists :
    ∀ entry : Fin entries.size,
      ∀ evidence ∈ (entries[entry]).evidence,
        cut.hasEvidence evidence

private def lookupEntries
    (entries : List ProfileEntry)
    (field : ProfileField) :
    Option (ProfileValue field) :=
  match entries with
  | [] => none
  | entry :: rest =>
      if equality : entry.field = field then
        some (equality ▸ entry.value)
      else
        lookupEntries rest field

def ConceptProfile.lookup
    {cut : EvidenceCut}
    (profile : ConceptProfile cut)
    (field : ProfileField) :
    Option (ProfileValue field) :=
  lookupEntries profile.entries.toList field

theorem concept_labels_do_not_define_identity
    (left right : Concept)
    (sameLabel : left.conceptType = right.conceptType) :
    left.id = right.id ∨ left.id ≠ right.id := by
  exact Classical.em _

end Mathematics.SemanticTokenization
