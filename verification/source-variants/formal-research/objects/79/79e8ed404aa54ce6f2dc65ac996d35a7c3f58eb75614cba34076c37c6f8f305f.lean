import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.Gauge

/-!
Gamma measure mirror.

The browser runtime records Gamma-normalized volume/area constants. Full Gamma
normalization proofs require a real-analysis library such as Mathlib. In this
local mirror, the theorem targets are intentionally represented as proof
dependencies rather than completed proofs.
-/

def gammaMeasureProofDependency : String :=
  "Requires Mathlib real Gamma normalization theorem."

def gammaUnitBallVolumeTarget : String :=
  gammaUnitBallVolumeFormula

def gammaUnitSphereAreaTarget : String :=
  gammaUnitSphereAreaFormula

end Think.Kakeya.Gauge
