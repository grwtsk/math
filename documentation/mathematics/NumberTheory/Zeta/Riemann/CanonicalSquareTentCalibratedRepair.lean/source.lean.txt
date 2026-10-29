/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED; no public root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairSufficiency

/-!
# Explicit nonzero-gain third-coefficient observation

A nonzero complex calibration of the stage-four coefficient is an actual
family of additional measurements satisfying the FULL moment-fiber
recovery condition. This is a precise finite-source positive supplier,
not a new analytic spectral observation or a Weil transport.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCalibratedRepair

open GRWTSK.Logic.InformationLoss
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairSufficiency

/-- The actual third arithmetic coefficient measured with complex gain. -/
def calibratedThirdCoordinate (gain : ℂ) (u : Combination 2) : ℂ :=
  gain * thirdCoordinateReadout u

/-- A nonzero calibration has exactly the same fibers as the raw third
coefficient. This fact uses no moment equations. -/
theorem calibratedThirdCoordinate_eq_iff
    (gain : ℂ) (hg : gain ≠ 0) (u v : Combination 2) :
    calibratedThirdCoordinate gain u = calibratedThirdCoordinate gain v ↔
      thirdCoordinateReadout u = thirdCoordinateReadout v := by
  constructor
  · intro h
    apply mul_left_cancel₀ hg
    exact h
  · intro h
    exact congrArg (fun z : ℂ => gain * z) h

/-- Calibration with nonzero gain repairs the two-row moment profile
on the full source coefficient carrier, not merely a witness pair. -/
theorem calibrated_augmented_injective
    (gain : ℂ) (hg : gain ≠ 0) :
    Function.Injective
      (augmentedProfile bombieriMomentProfile
        (calibratedThirdCoordinate gain)) := by
  apply augmented_injective_of_third_fiber_detection
  intro u v _ h
  exact (calibratedThirdCoordinate_eq_iff gain hg u v).mp h

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCalibratedRepair
