import FCRS.Transport.Witness

universe uInput uWitness uCoordinate

namespace FCRS.Transport

/-- Versioned denotation relation for one coordinate system and arithmetic sort. -/
structure CoordinateSystemVersion
    (Arithmetic : Type uInput) (Coordinate : Type uCoordinate) where
  version : ArtifactRef .coordinateSystem
  denotes : Coordinate → Arithmetic → Prop

/-- A coordinate denotes, but is not identified with, an arithmetic object. -/
structure CoordinateDenotation
    {Arithmetic : Type uInput} {Coordinate : Type uCoordinate}
    (system : CoordinateSystemVersion Arithmetic Coordinate)
    (coordinate : Coordinate) (arithmetic : Arithmetic) where
  evidenceArtifact : ArtifactRef .coordinateDenotation
  sound : system.denotes coordinate arithmetic

/-- Separate source-input and target-witness coordinate maps. -/
structure BinaryInterpretation
    (Input : Type uInput) (Witness : Type uWitness)
    (Coordinate : Type uCoordinate) where
  version : ArtifactRef .binaryInterpretation
  sourceSystem : CoordinateSystemVersion Input Coordinate
  targetSystem : CoordinateSystemVersion Witness Coordinate
  source : Input → Coordinate
  target : Witness → Coordinate

/-- A versioned predicate on one source and one target coordinate. -/
structure BinaryConstraint (Coordinate : Type uCoordinate) where
  version : ArtifactRef .coordinateConstraint
  holds : Coordinate → Coordinate → Prop

/-- One-way arithmetic-pair to coordinate-constraint preservation evidence. -/
structure InterpretationBridge
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    (profile : IntervalProfile Input Witness)
    (interpretation : BinaryInterpretation Input Witness Coordinate)
    (constraint : BinaryConstraint Coordinate) where
  version : ArtifactRef .interpretationBridge
  preservationProof : ArtifactRef .theoremProof
  sourceDenotationSound :
    ∀ input,
      interpretation.sourceSystem.denotes
        (interpretation.source input) input
  targetDenotationSound :
    ∀ witness,
      interpretation.targetSystem.denotes
        (interpretation.target witness) witness
  sound :
    ∀ input witness,
      profile.admissible input witness →
        constraint.holds
          (interpretation.source input)
          (interpretation.target witness)

/-- Explicit converse capability; it is not a field of the forward bridge. -/
structure InterpretationReflection
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    (profile : IntervalProfile Input Witness)
    (interpretation : BinaryInterpretation Input Witness Coordinate)
    (constraint : BinaryConstraint Coordinate) where
  version : ArtifactRef .interpretationReflection
  reflects :
    ∀ input witness,
      constraint.holds
          (interpretation.source input)
          (interpretation.target witness) →
        profile.admissible input witness

/-- A separately identified constraint-satisfaction evidence object. -/
structure ConstraintEvidence
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {profile : IntervalProfile Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    (bridge : InterpretationBridge profile interpretation constraint)
    (input : Input) (witness : Witness) where
  evidenceArtifact : ArtifactRef .constraintEvidence
  satisfied :
    constraint.holds
      (interpretation.source input)
      (interpretation.target witness)

/-- Interpretation activity and its two exact denotation records. -/
structure InterpretationEvent
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {profile : IntervalProfile Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    (bridge : InterpretationBridge profile interpretation constraint)
    (input : Input) (witness : Witness) where
  eventArtifact : ArtifactRef .interpretationEvent
  sourceDenotation : CoordinateDenotation
    interpretation.sourceSystem (interpretation.source input) input
  targetDenotation : CoordinateDenotation
    interpretation.targetSystem (interpretation.target witness) witness

end FCRS.Transport
