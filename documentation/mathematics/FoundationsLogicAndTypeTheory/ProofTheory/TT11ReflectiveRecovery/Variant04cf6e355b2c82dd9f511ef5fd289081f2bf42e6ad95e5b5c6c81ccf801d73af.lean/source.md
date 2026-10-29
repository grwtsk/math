# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.TT11ReflectiveRecovery.Variant04cf6e355b2c82dd9f511ef5fd289081f2bf42e6ad95e5b5c6c81ccf801d73af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54bf44d022e6654e6cdd6c8b56e902805a594813` · SHA-256 `04cf6e355b2c82dd9f511ef5fd289081f2bf42e6ad95e5b5c6c81ccf801d73af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Derivation

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

namespace FCRS.Transport.Theorems

/-!
This converse begins with the exact materialized occurrence and theorem-derived
declaration retained by a complete `TransportDerivation`.  It additionally
requires an accepted validation of the exact graph version and three independent
reflection capabilities.  A detached declaration cannot license recovery.
-/

theorem tt11_reflectiveRecovery
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {methodKind : SelectionMethodKind}
    {method : SelectionMethod methodKind Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    {interpretationBridge : InterpretationBridge
      profile interpretation constraint}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {completeness : Option (SieveCompleteness procedure)}
    {evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) completeness}
    {constraintSieveBridge : ConstraintSieveBridge constraint specification}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    {intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {realizationContract : RealizationContract soundness materializedGraph}
    {consequence : GraphConsequence materializedGraph}
    {derivationRef : ArtifactRef .transportDerivation}
    (derivation : TransportDerivation
      derivationRef profile certified input method interpretation constraint
      interpretationBridge specification procedure soundness completeness
      evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence)
    (provenance : ReflectiveRecoveryProvenance derivation)
    (validationExecution : ValidationExecution materializedGraph.version)
    (validationResult : ValidationResult validationExecution)
    (_validationDecision : AcceptanceDecision validationResult)
    (realizationReflects : RealizationReflection
      specification materializedGraph)
    (sieveReflects : SieveReflection constraint specification)
    (coordinateReflects : InterpretationReflection
      profile interpretation constraint) :
    profile.admissible input derivation.selectedWitness.value :=
  coordinateReflects.reflects input derivation.selectedWitness.value
    (sieveReflects.reflects
      (interpretation.source input)
      (interpretation.target derivation.selectedWitness.value)
      (realizationReflects.reflects provenance.occurrence))

end FCRS.Transport.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a064314b6a6fc8256f26cda74e51b267d7156a78f2224c84a566edca1f2a59e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/TT11ReflectiveRecovery/Variant04cf6e355b2c82dd9f511ef5fd289081f2bf42e6ad95e5b5c6c81ccf801d73af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
