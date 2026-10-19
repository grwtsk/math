import Mathematics.Resolution.Context
import Mathematics.Resolution.Origin

/-!
# Reversible identity-preserving projection

Finite-field origin can be noninjective.  Reversibility is instead supplied by
an identity and source sidecar retained with every projected record.
-/

namespace Mathematics.Resolution

universe u v w

structure ReversibleProjection
    (Source : Type u)
    (View : Type v)
    (Sidecar : Type w) where
  project : Source → View × Sidecar
  rehydrate : View → Sidecar → Source
  roundTrip :
    ∀ source,
      rehydrate (project source).1 (project source).2 = source

theorem ReversibleProjection.rehydrate_project
    (projection : ReversibleProjection Source View Sidecar)
    (source : Source) :
    projection.rehydrate
      (projection.project source).1
      (projection.project source).2 = source :=
  projection.roundTrip source

structure ObligationProjection (Coordinate : Type u) where
  identity : ObligationIdentity
  encodedCoordinate : Coordinate
  originCoordinate : Coordinate
  sourceReference : String
  sourceDigest : String
  redacted : Bool
  deriving DecidableEq, Repr

end Mathematics.Resolution
