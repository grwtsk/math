import URSM.Toy.Wrigley.FrontierReview

namespace URSM.Toy.Wrigley.FrontierReviewVectors

open URSM.Toy.Wrigley.FrontierReview

def rootName : WrigleyStreetRoot → String
  | .addison => "addison"
  | .clark => "clark"
  | .waveland => "waveland"
  | .sheffield => "sheffield"

def rotationCycle : String :=
  let first := WrigleyStreetRoot.addison
  let second := rotate first
  let third := rotate second
  let fourth := rotate third
  let fifth := rotate fourth
  String.intercalate ","
    [rootName first, rootName second, rootName third,
      rootName fourth, rootName fifth]

def firstClosedCandidate : ClosedFamilyAliasCandidate where
  memberId := 41
  root := .addison
  beginsAt := 10
  endsAt := 20
  ordered := by decide
  rank := 3

def secondClosedCandidate : ClosedFamilyAliasCandidate where
  memberId := 42
  root := .addison
  beginsAt := 11
  endsAt := 21
  ordered := by decide
  rank := 3

def closedTieKind : String :=
  match resolveClosedCandidates
      [firstClosedCandidate, secondClosedCandidate] with
  | .ambiguous _ => "ambiguous"
  | .memorial _ => "memorial"
  | .none => "none"

def existingOrbit : AcceptedOrbit where
  orbitId := 7
  acceptanceOrdinal := 3
  assignedPrimeIndex := 7

def appendedOrbit : AcceptedOrbit where
  orbitId := 8
  acceptanceOrdinal := 4
  assignedPrimeIndex := 11

def existingRegistry : AcceptedOrbitRegistry where
  lookup orbitId :=
    if orbitId = existingOrbit.orbitId then
      some existingOrbit
    else
      none
  nextAcceptanceOrdinal := 4
  coherent := by
    intro orbitId entry found
    by_cases same : orbitId = existingOrbit.orbitId
    · subst orbitId
      simp at found
      cases found
      rfl
    · simp [same] at found
  ordinalBelowNext := by
    intro orbitId entry found
    by_cases same : orbitId = existingOrbit.orbitId
    · subst orbitId
      simp at found
      cases found
      decide
    · simp [same] at found

def appendedRegistry : AcceptedOrbitRegistry :=
  appendAcceptedOrbit
    existingRegistry
    appendedOrbit
    (by decide)
    rfl

def preservedPrimeIndex : String :=
  match appendedRegistry.lookup existingOrbit.orbitId with
  | some entry => toString entry.assignedPrimeIndex
  | none => "missing"

def boolString (value : Bool) : String :=
  if value then "true" else "false"

def refinementReceipt : List String :=
  [
    s!"rotationCycle={rotationCycle}",
    s!"rootLabelProduct={rootLabels.prod id}",
    s!"coprime143={boolString
      (decide (Nat.Coprime 143 210))}",
    s!"prime143={boolString (decide (Nat.Prime 143))}",
    s!"closedEndpointContains={boolString
      ((LifeWindow.closed 10 20 (by decide)).containsBool 20)}",
    s!"closedTieKind={closedTieKind}",
    s!"registryPrimeIndex={preservedPrimeIndex}",
    s!"duplicateCascadePowerSum={
      cascadePowerSum 2 [1, 1]}",
    s!"deathSupportsArithmeticCorrection={boolString (decide
      ((ProvenanceNode.deathRecorded,
        ProvenanceNode.analyticalLabelPrimalityCorrection) ∈
          requiredProvenanceEdges))}"
  ]

#eval refinementReceipt.forM IO.println

end URSM.Toy.Wrigley.FrontierReviewVectors
