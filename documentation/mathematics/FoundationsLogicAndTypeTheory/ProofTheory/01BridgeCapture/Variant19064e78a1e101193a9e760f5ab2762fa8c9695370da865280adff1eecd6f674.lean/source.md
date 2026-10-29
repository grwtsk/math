# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.01BridgeCapture.Variant19064e78a1e101193a9e760f5ab2762fa8c9695370da865280adff1eecd6f674

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc497297bdc9659acf6636b1e12aad022c816d89` · SHA-256 `19064e78a1e101193a9e760f5ab2762fa8c9695370da865280adff1eecd6f674`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle4BridgeCapture

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

local notation "NativeDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-!
The bridge record's *type* no longer mentions the completed derivation, but a
bridge value can still close over that derivation and project the target proof.
The post-binding inequality constrains only artifact identities.
-/
def circularEvidence (derivation : NativeDerivation) :
    FullNativePreservationEvidence derivation where
  bridge := {
    bridgeArtifact := projectionVersion "cycle-4-circular-bridge"
    law := fun _sourceProof => derivation.graphConsequenceProof.proof
  }
  bridgeDistinctFromTargetProof := by
    intro equality
    cases equality

#check circularEvidence

end FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle4BridgeCapture
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=401a17c3a0c202bd2ef00e2a72b0f4377a53cfa0a88db9c23516d336bc389acc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/01BridgeCapture/Variant19064e78a1e101193a9e760f5ab2762fa8c9695370da865280adff1eecd6f674.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
