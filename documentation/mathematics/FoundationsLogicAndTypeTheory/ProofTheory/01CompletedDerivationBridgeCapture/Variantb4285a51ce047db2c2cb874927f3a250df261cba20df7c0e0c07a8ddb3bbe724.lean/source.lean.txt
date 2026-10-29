import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle5BridgeCapture

open FCRS.Transport

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate}
variable {IntensionalEdge : Type uIntensionalEdge}
variable {MaterializedEdge : Type uMaterializedEdge}
variable {derivationRef : ArtifactRef .transportDerivation}
variable {profile : IntervalProfile Input Witness}
variable {certified : CertifiedIntervalTheorem profile}
variable {input : Input}
variable {methodKind : SelectionMethodKind}
variable {method : SelectionMethod methodKind Input Witness}
variable {interpretation : BinaryInterpretation Input Witness Coordinate}
variable {constraint : BinaryConstraint Coordinate}
variable {interpretationBridge : InterpretationBridge profile interpretation constraint}
variable {specification : SieveSpecification Coordinate}
variable {procedure : SieveProcedure specification}
variable {soundness : SieveSoundness procedure}
variable {completeness : Option (SieveCompleteness procedure)}
variable {evidenceTheory : SieveEvidenceTheoryVersion (some soundness) completeness}
variable {constraintSieveBridge : ConstraintSieveBridge constraint specification}
variable {intensionalGraph : CoordinateGraph .Intensional Coordinate IntensionalEdge}
variable {intensionalSemantics : IntensionalGraphSemantics specification intensionalGraph}
variable {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
variable {realizationContract : RealizationContract soundness materializedGraph}
variable {consequence : GraphConsequence materializedGraph}

local notation "CompletedNativeDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-!
The public predecessor value already contains the target proof.  Although the
new bridge type does not mention a completed derivation, a caller can define a
bridge that closes over that value and then copy all pre-proof fields into the
new bridge-indexed record.
-/
def circularBridge (derivation : CompletedNativeDerivation) :
    FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence) where
  bridgeArtifact := projectionVersion "cycle-5-circular-bridge"
  law := fun _sourceProof => derivation.graphConsequenceProof.proof

def circularEvidence (derivation : CompletedNativeDerivation) :
    @FullNativePreservationEvidence
      Input Witness Coordinate IntensionalEdge MaterializedEdge
      derivationRef profile certified input methodKind method interpretation
      constraint interpretationBridge specification procedure soundness
      completeness evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence
      (circularBridge derivation) where
  theoremApplication := derivation.theoremApplication
  existenceEvidence := derivation.existenceEvidence
  selectionEvent := derivation.selectionEvent
  selectedWitness := derivation.selectedWitness
  materializableSelection := derivation.materializableSelection
  arithmeticWitness := derivation.arithmeticWitness
  interpretationEvent := derivation.interpretationEvent
  constraintEvidence := derivation.constraintEvidence
  constraintSieveEvidence := derivation.constraintSieveEvidence
  sieveEvidenceTheory := derivation.sieveEvidenceTheory
  sieveEvidenceTheoryExact := derivation.sieveEvidenceTheoryExact
  constraintSieveBridgeArtifact := constraintSieveBridge.version
  constraintSieveBridgeArtifactExact := rfl
  procedureAcceptanceEvidence := derivation.procedureAcceptanceEvidence
  sieveResult := derivation.sieveResult
  sieveEvaluation := derivation.sieveEvaluation
  sieveResultExact := derivation.sieveResultExact
  sieveWitness := derivation.sieveWitness
  intensionalOccurrence := derivation.intensionalOccurrence
  intensionalSemanticsArtifact := intensionalSemantics.evidenceArtifact
  intensionalSemanticsArtifactExact := rfl
  realizationRecord := derivation.realizationRecord
  theoremDerivedEdge := derivation.theoremDerivedEdge
  graphConsequenceProofArtifact := derivation.graphConsequenceProof.proofArtifact
  bridgeDistinctFromTargetProof := by
    intro equality
    cases equality
  validationExecution := derivation.validationExecution
  validationResult := derivation.validationResult
  acceptanceDecision := derivation.acceptanceDecision
  operationalCommitment := derivation.operationalCommitment

#check circularBridge
#check circularEvidence

end FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle5BridgeCapture
