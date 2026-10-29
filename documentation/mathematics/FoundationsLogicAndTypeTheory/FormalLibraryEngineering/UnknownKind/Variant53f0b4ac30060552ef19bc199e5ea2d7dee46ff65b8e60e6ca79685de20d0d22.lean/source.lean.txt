import Mathematics.SemanticTokenization.Basic

/-!
# Category-specific semantic unknowns
-/

namespace Mathematics.SemanticTokenization

inductive StructuralUnknownKind
  | characterNormalization
  | offsetTransport
  | candidateSpanCoverage
  | baseTokenization
  | tokenCoverage
  | metadataTyping
  | evidenceProvenance
  | evidenceAdjudication
  | snapshot
  | replay
deriving DecidableEq, Repr

inductive BoundaryUnknownKind
  | boundaryMetric
  | boundaryRule
  | boundaryThreshold
  | boundaryStability
  | segmentationUniqueness
deriving DecidableEq, Repr

inductive ContextUnknownKind
  | contextBinding
  | contextSufficiency
  | contextTransport
  | domainTransport
  | registerTransport
  | diachronicTransport
  | speakerTransport
  | taskTransport
deriving DecidableEq, Repr

inductive PhraseUnknownKind
  | phraseBoundary
  | syntacticDependency
  | phraseComposition
  | literalReading
  | contextualReading
  | compositionAdequacy
deriving DecidableEq, Repr

inductive FigurativeUnknownKind
  | figurativeStatus
  | idiomaticity
  | idiomDomain
  | idiomProductivity
  | sourceDomain
  | targetDomain
  | metaphorMapping
  | readingPriority
deriving DecidableEq, Repr

inductive ConceptUnknownKind
  | conceptOntology
  | conceptOntologyCoverage
  | coreMeaning
  | protectedFeatures
  | tolerance
  | conceptEquivalence
  | toleranceTransitivity
deriving DecidableEq, Repr

inductive SynonymUnknownKind
  | substitutability
  | pragmaticPreservation
  | singleWordEquivalent
  | globalSynonymy
  | crossContextStability
deriving DecidableEq, Repr

inductive NetworkUnknownKind
  | edgeType
  | tokenConnectivity
  | relationAlgebra
  | pathSemantics
  | networkClosure
  | conceptMergeSafety
  | approximateEquivalenceQuotient
  | contradictionPropagation
deriving DecidableEq, Repr

inductive ArchitecturalUnknownKind
  | irreducibilityMeaning
  | localFinitude
  | monoParent
  | polyHierarchy
  | deviceTransport
  | deviceNeutrality
  | boundaryInvariant
  | percolationModel
  | stabilityInvariant
deriving DecidableEq, Repr

inductive SemanticTokenUnknownKind
  | structural (kind : StructuralUnknownKind)
  | boundary (kind : BoundaryUnknownKind)
  | context (kind : ContextUnknownKind)
  | phrase (kind : PhraseUnknownKind)
  | figurative (kind : FigurativeUnknownKind)
  | concept (kind : ConceptUnknownKind)
  | synonym (kind : SynonymUnknownKind)
  | network (kind : NetworkUnknownKind)
  | architectural (kind : ArchitecturalUnknownKind)
  | interpretationAdequacy
  | contextTransportCompleteness
  | conceptOntologyCompleteness
  | pragmaticSubstitutionInvariant
  | universalIdiomClassification
deriving DecidableEq, Repr

end Mathematics.SemanticTokenization
