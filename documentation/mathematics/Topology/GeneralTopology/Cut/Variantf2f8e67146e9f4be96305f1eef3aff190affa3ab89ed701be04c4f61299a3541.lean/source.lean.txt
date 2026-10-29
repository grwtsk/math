import Mathematics.RHIsolation.Basic

/-!
# Compact critical-strip cuts

The compact carrier is independent of the ownership convention at its upper
horizontal boundary.  Every global count and every local region must use the
same `owns` predicate.
-/

namespace Mathematics.RHIsolation

inductive HeightConvention
  | openTop
  | closedTop
deriving DecidableEq, Repr

structure CriticalStripCut where
  sigmaLower : ℝ
  sigmaUpper : ℝ
  heightLower : ℝ
  heightUpper : ℝ
  sigmaLower_pos : 0 < sigmaLower
  sigmaUpper_lt_one : sigmaUpper < 1
  sigma_order : sigmaLower < sigmaUpper
  heightLower_pos : 0 < heightLower
  height_order : heightLower < heightUpper
  convention : HeightConvention
  carrier : Set ℂ
  carrier_eq :
    carrier =
      {z |
        sigmaLower ≤ z.re ∧
        z.re ≤ sigmaUpper ∧
        heightLower ≤ z.im ∧
        z.im ≤ heightUpper}
  compact_carrier : IsCompact carrier
  digest : CutDigest

def CriticalStripCut.owns
    (cut : CriticalStripCut)
    (z : ℂ) : Prop :=
  z ∈ cut.carrier ∧
    match cut.convention with
    | .openTop => z.im < cut.heightUpper
    | .closedTop => z.im ≤ cut.heightUpper

def CriticalStripCut.boundaryOwned
    (cut : CriticalStripCut) : Prop :=
  match cut.convention with
  | .openTop =>
      ∀ z, z ∈ cut.carrier →
        z.im = cut.heightUpper →
        ¬ cut.owns z
  | .closedTop =>
      ∀ z, z ∈ cut.carrier →
        z.im = cut.heightUpper →
        cut.owns z

theorem CriticalStripCut.boundaryOwned_sound
    (cut : CriticalStripCut) :
    cut.boundaryOwned := by
  cases h : cut.convention
  · simp only [CriticalStripCut.boundaryOwned, h]
    intro z inCarrier onTop
    simp [CriticalStripCut.owns, h,
      inCarrier, onTop]
  · simp only [CriticalStripCut.boundaryOwned, h]
    intro z inCarrier onTop
    simp [CriticalStripCut.owns, h,
      inCarrier, onTop]

end Mathematics.RHIsolation
