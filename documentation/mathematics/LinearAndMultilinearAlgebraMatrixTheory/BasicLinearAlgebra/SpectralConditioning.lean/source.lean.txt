import Mathlib.Algebra.Module.LinearMap.End
import Mathlib.Topology.MetricSpace.Pseudo.Defs

/-!
# Spectral conditioning and Jordan-sensitive observation

Small operator defects control spectral data only through an explicit
conditioning modulus.  Nilpotent information is visible only through an
observable certified to distinguish it.
-/

namespace Mathematics.AbelReynolds

open scoped NNReal

universe u v w

/--
A theorem-bearing modulus transporting operator distance to spectral-data
distance.  The modulus is data, not a conclusion inferred from a small defect.
-/
structure SpectralConditioningModulus
    (Operator : Type u) (SpectralData : Type v)
    [PseudoMetricSpace Operator] [PseudoMetricSpace SpectralData] where
  spectrum : Operator → SpectralData
  modulus : ℝ≥0 → ℝ≥0
  modulus_zero : modulus 0 = 0
  controls :
    ∀ left right,
      nndist (spectrum left) (spectrum right) ≤
        modulus (nndist left right)

namespace SpectralConditioningModulus

variable {Operator : Type u} {SpectralData : Type v}
  [PseudoMetricSpace Operator] [PseudoMetricSpace SpectralData]

/-- An exact operator identity has zero certified spectral displacement. -/
theorem exact_spectral_distance_zero
    (conditioning :
      SpectralConditioningModulus Operator SpectralData)
    {left right : Operator}
    (equal : left = right) :
    nndist (conditioning.spectrum left)
      (conditioning.spectrum right) = 0 := by
  subst right
  simp

end SpectralConditioningModulus

/-- A certified uniform annihilation order for a nilpotent linear direction. -/
structure JordanOrderCertificate
    (R : Type u) (Carrier : Type v)
    [Semiring R] [AddCommMonoid Carrier] [Module R Carrier]
    (nilpotent : Module.End R Carrier) where
  order : Nat
  order_pos : 0 < order
  annihilates : nilpotent ^ order = 0

/--
An observable is Jordan-sensitive when every nonzero nilpotent direction is
detected at some positive derivative or weighted-trace order.
-/
structure JordanSensitiveObservable
    (Direction : Type u) (Observation : Type v) where
  isNilpotent : Direction → Prop
  isZero : Direction → Prop
  observe : Nat → Direction → Observation
  detects :
    ∀ direction,
      isNilpotent direction →
      ¬ isZero direction →
        ∃ order, 0 < order ∧
          observe order direction ≠ observe 0 direction

end Mathematics.AbelReynolds
