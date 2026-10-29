import Mathematics.SemanticTokenization.RelationAlgebra

/-! # Exhaustive conservative unknown vocabulary -/

namespace Mathematics.SemanticTokenization

inductive SemanticTokenUnknownKind
  -- structural
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
  -- boundary
  | boundaryMetric
  | boundaryRule
  | boundaryThreshold
  | boundaryStability
  | segmentationUniqueness
  -- context
  | contextBinding
  | contextSufficiency
  | contextTransport
  | domainTransport
  | registerTransport
  | taskTransport
  -- phrase
  | phraseBoundary
  | syntacticDependency
  | phraseComposition
  | literalReading
  | contextualReading
  | compositionAdequacy
  -- idiom and metaphor
  | figurativeStatus
  | idiomaticity
  | idiomDomain
  | idiomProductivity
  | sourceDomain
  | targetDomain
  | metaphorMapping
  | readingPriority
  -- concept
  | conceptOntology
  | conceptOntologyCoverage
  | coreMeaning
  | protectedFeatures
  | tolerance
  | conceptEquivalence
  | toleranceTransitivity
  -- synonym
  | substitutability
  | pragmaticPreservation
  | singleWordEquivalent
  | globalSynonymy
  | crossContextStability
  -- network
  | edgeType
  | tokenConnectivity
  | relationAlgebra
  | pathSemantics
  | networkClosure
  | conceptMergeSafety
  | contradictionPropagation
  -- architectural language
  | irreducibilityMeaning
  | localFinitude
  | monoParent
  | polyHierarchy
  | deviceTransport
  | deviceNeutrality
  | boundaryInvariant
  | percolationModel
  | stabilityInvariant
  -- terminal semantic frontiers
  | interpretationAdequacy
  | contextTransportCompleteness
  | conceptOntologyCompleteness
  | pragmaticSubstitutionInvariant
  | universalIdiomClassification
  deriving DecidableEq, Repr

end Mathematics.SemanticTokenization
