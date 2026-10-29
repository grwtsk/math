import Mathematics.Taxonomy.Projection

/-! # Complete product-taxonomy registry. -/

namespace Mathematics.Taxonomy

structure Registry where
  rootDomain : DomainId
  domains : DomainRegistry
  facets : FacetRegistry
  taxa : List MathematicalTaxon
  evidence : List TaxonEvidence
  witnessEvidence : List TypedEvidence
  relations : List TaxonomyRelationRecord
  projections : List NavigationProjection

namespace Registry

def UniqueTaxonIds (registry : Registry) : Prop :=
  (registry.taxa.map (·.id)).Nodup

def UniqueConceptTaxa (registry : Registry) : Prop :=
  (registry.taxa.map (·.conceptId)).Nodup

def UniqueEvidenceIds (registry : Registry) : Prop :=
  (registry.evidence.map (·.id)).Nodup

def UniqueWitnessEvidenceIds (registry : Registry) : Prop :=
  (registry.witnessEvidence.map (·.id)).Nodup

def UniqueRelationIds (registry : Registry) : Prop :=
  (registry.relations.map (·.id)).Nodup

def UniqueProjectionIds (registry : Registry) : Prop :=
  (registry.projections.map (·.id)).Nodup

def findTaxon? (registry : Registry) (conceptId : ConceptId) :
    Option MathematicalTaxon :=
  registry.taxa.find? fun taxon => taxon.conceptId = conceptId

def findEvidence? (registry : Registry) (evidenceId : TaxonomyEvidenceId) :
    Option TaxonEvidence :=
  registry.evidence.find? fun evidence => evidence.id = evidenceId

def findWitnessEvidence? (registry : Registry) (evidenceId : StableId) :
    Option TypedEvidence :=
  registry.witnessEvidence.find? fun evidence => evidence.id = evidenceId

/-- Every witness identifier resolves to a current, digest-valid record of the
required evidence kind. -/
def WitnessesResolveAs
    (registry : Registry) (witnesses : Finset StableId)
    (kind : EvidenceKind) : Prop :=
  ∀ witnessId ∈ witnesses,
    ∃ evidence ∈ registry.witnessEvidence,
      evidence.id = witnessId ∧
      evidence.kind = kind ∧
      evidence.id.Valid ∧
      evidence.subject.Valid ∧
      evidence.digest.Valid ∧
      evidence.provenance.Nonempty

end Registry

end Mathematics.Taxonomy
