/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRedundantObservation

/-!
# A necessary new measurement for the actual Bombieri collision

Any added observable that enables recovery of the source's third
arithmetic coordinate must distinguish correctedCoordinates from zero.
This is an exact necessary condition on a particular witness, not
sufficiency for recovering all coefficients or a classical Weil form.
-/
set_option autoImplicit false
noncomputable section

universe u

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairNecessity

open GRWTSK.Logic.InformationLoss
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

/-- A successful added source observation must distinguish the actual
two-moment collision. No injectivity of the added observation globally
is claimed. -/
theorem extra_separates_corrected_of_third_recoverable
    {W : Type u} (extra : Combination 2 → W)
    (hrecover : FactorsThrough
      (augmentedProfile bombieriMomentProfile extra)
      thirdCoordinateReadout) :
    extra correctedCoordinates ≠ extra (0 : Combination 2) := by
  intro hsame
  have hprofile :
      augmentedProfile bombieriMomentProfile extra correctedCoordinates =
        augmentedProfile bombieriMomentProfile extra (0 : Combination 2) :=
    Prod.ext bombieri_corrected_zero_same_profile hsame
  exact thirdCoordinateReadout_separates
    (eq_of_factorsThrough
      (augmentedProfile bombieriMomentProfile extra)
      thirdCoordinateReadout hrecover hprofile)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairNecessity
