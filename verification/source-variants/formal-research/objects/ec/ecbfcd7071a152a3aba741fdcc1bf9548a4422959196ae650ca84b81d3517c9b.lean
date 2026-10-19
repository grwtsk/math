import FCRS.ControlledPlane.Observation

universe u

namespace FCRS.ControlledPlane

/-- Every closed coordinate occurs at some declared refinement stage. -/
def ClosedCoordinateComplete
    (Coord Stage : Type u)
    (observedAt : Coord → Stage → Prop) : Prop :=
  ∀ c, ∃ s, observedAt c s

/-- Once introduced, a coordinate persists at every declared refinement. -/
def PersistentCoverage
    (Coord Stage : Type u)
    (refines : Stage → Stage → Prop)
    (observedAt : Coord → Stage → Prop) : Prop :=
  ∀ c {next prev},
    refines next prev →
    observedAt c prev →
    observedAt c next

/--
A uniform-carrier compatible system.  It supplies restriction maps but makes
no claim that a categorical inverse limit has been constructed.
-/
structure RefinementSystem
    (Stage Coord Entity Control Point : Type u) where
  refines : Stage → Stage → Prop
  observedAt : Coord → Stage → Prop
  restrictEntity : Stage → Stage → Entity → Entity
  restrictControl : Stage → Stage → Control → Control
  observationAt : Stage → ControlledObservation Entity Control Point

/--
A coherent refinement relation with functorial entity/control restrictions and
commuting observations.  These laws are supplied as evidence; the raw
`RefinementSystem` does not obtain them definitionally.
-/
structure RefinementCoherent
    {Stage Coord Entity Control Point : Type u}
    (R : RefinementSystem Stage Coord Entity Control Point) : Prop where
  refinesRefl :
    ∀ s, R.refines s s
  refinesTrans :
    ∀ {next middle prev},
      R.refines next middle →
      R.refines middle prev →
      R.refines next prev
  restrictEntityId :
    ∀ s x, R.restrictEntity s s x = x
  restrictControlId :
    ∀ s c, R.restrictControl s s c = c
  restrictEntityComp :
    ∀ {next middle prev},
      R.refines next middle →
      R.refines middle prev →
      ∀ x,
        R.restrictEntity middle prev
            (R.restrictEntity next middle x) =
          R.restrictEntity next prev x
  restrictControlComp :
    ∀ {next middle prev},
      R.refines next middle →
      R.refines middle prev →
      ∀ c,
        R.restrictControl middle prev
            (R.restrictControl next middle c) =
          R.restrictControl next prev c
  projectCommutes :
    ∀ {next prev}, R.refines next prev → ∀ x,
      (R.observationAt prev).project
          (R.restrictEntity next prev x) =
        (R.observationAt next).project x
  controlCommutes :
    ∀ {next prev}, R.refines next prev → ∀ x,
      (R.observationAt prev).control
          (R.restrictEntity next prev x) =
        R.restrictControl next prev
          ((R.observationAt next).control x)

/--
An abstract coherent controlled presentation.  It carries the refinement laws
and an explicit cross-stage cone equation, but no universal property and no
construction of a categorical projective limit.
-/
structure CoherentControlledPresentation
    {Stage Coord Entity Control Point : Type u}
    (R : RefinementSystem Stage Coord Entity Control Point)
    (O : ControlledObservation Entity Control Point) where
  refinementCoherent : RefinementCoherent R
  decoder : LosslessDecoder O
  stageProjection : Stage → Entity → Entity
  stageProjectionCommutes :
    ∀ {next prev}, R.refines next prev → ∀ x,
      R.restrictEntity next prev (stageProjection next x) =
        stageProjection prev x
  observationCompatible :
    ∀ s x,
      combinedObservation (R.observationAt s) (stageProjection s x) =
        combinedObservation O x

end FCRS.ControlledPlane
