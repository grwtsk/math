import FCRS.Transport.Sieve

universe uCoordinate

namespace FCRS.Transport.Theorems

/-- An accepted evaluation entails its specification only by procedure soundness. -/
theorem tt06_sieveCertificationSound
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {left right : Coordinate}
    {evaluation : SieveEvaluation procedure left right}
    (witness : SieveWitness soundness evaluation) :
    specification.accepts left right := by
  apply soundness.sound left right
  calc
    procedure.evaluate left right = evaluation.result.decision :=
      evaluation.result.resultMatches.symm
    _ = .Accepted := witness.accepted

end FCRS.Transport.Theorems
