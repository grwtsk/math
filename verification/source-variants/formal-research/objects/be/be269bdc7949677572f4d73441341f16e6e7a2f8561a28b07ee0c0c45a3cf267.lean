import Mathlib.Data.Real.Basic

/-!
# Conditional pointed spectral contracts

The runtime accepts an external distance provider. These declarations model
that dependency explicitly and do not construct a Dirac operator or assert a
general Connes distance theorem.
-/

namespace BitMatrix.Runtime.Spectral

/-- A supplied nonnegative distance-like provider. -/
structure DistanceProvider (Point : Type) where
  distance : Point → Point → ℝ
  nonnegative : ∀ left right, 0 ≤ distance left right

/-- Pointed data packages a finite point family with an explicit provider. -/
structure PointedData (Point : Type) where
  points : List Point
  spectralDistance : DistanceProvider Point

/-- Equality with an independently supplied metric is a separate obligation. -/
def RecoversMetric {Point : Type}
    (spectral geodesic : DistanceProvider Point) : Prop :=
  ∀ left right, spectral.distance left right = geodesic.distance left right

/-- Conditional evidence for metric recovery; no provider is manufactured. -/
structure MetricRecoveryCapability (Point : Type) where
  spectral : DistanceProvider Point
  geodesic : DistanceProvider Point
  recovers : RecoversMetric spectral geodesic

end BitMatrix.Runtime.Spectral
