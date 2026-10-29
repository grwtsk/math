/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightRatioSandwichControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Every dyadic stage has the explicit positive Bertrand floor. -/
theorem concrete_dyadic_bertrandFloor_positive
    (j : ℕ) :
    0 < pinnedPrimeWeightBertrandFloor (dyadicScale j) :=
  pinnedPrimeWeightBertrandFloor_pos (dyadicScale_pos j)

/-- The actual dyadic amplitude dominates the explicit floor. -/
theorem concrete_dyadic_bertrandFloor_le_amplitude
    (j : ℕ) :
    pinnedPrimeWeightBertrandFloor (dyadicScale j) ≤
      pinnedPrimeWeightedAmplitude (dyadicScale j) :=
  pinnedPrimeWeightedAmplitude_ge_bertrandFloor
    (dyadicScale_pos j)

/-- A dyadic current-octave theta envelope yields the pinned feature-mass
ceiling. -/
theorem concrete_dyadic_amplitude_ceiling
    (j : ℕ) {B : ℝ} (hB : 0 ≤ B)
    (henvelope :
      ∀ u ∈
          Set.Icc (dyadicScale j : ℝ)
            (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B) :
    pinnedPrimeWeightedAmplitude (dyadicScale j) ≤
      primeCoefficientL1Budget * B :=
  pinnedPrimeWeightedAmplitude_le_of_octaveEnvelope
    (dyadicScale_pos j) hB henvelope

/-- The complete ratio sandwich specialized to one dyadic source stage. -/
theorem concrete_dyadic_requiredCapacity_sandwich
    (j : ℕ) {B : ℝ} (hB : 0 < B)
    (henvelope :
      ∀ u ∈
          Set.Icc (dyadicScale j : ℝ)
            (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B)
    (v E : ℝ) :
    pinnedPrimeWeightEnvelopeMinorant
        (dyadicScale j) B v E ≤
      pinnedPrimeWeightRequiredCapacity
        (dyadicScale j) v E ∧
    pinnedPrimeWeightRequiredCapacity
        (dyadicScale j) v E ≤
      pinnedPrimeWeightBertrandMajorant
        (dyadicScale j) v E :=
  pinnedPrimeWeight_requiredCapacity_sandwich
    (dyadicScale_pos j) hB henvelope v E

/-- The dyadic Bertrand benchmark retains the exact cubic scale factor. -/
theorem concrete_dyadic_bertrandMajorant_eq_cubic
    (j : ℕ) (v E : ℝ) :
    pinnedPrimeWeightBertrandMajorant
        (dyadicScale j) v E =
      4 * (dyadicScale j : ℝ)^3 *
          pinnedPrimeWeightRemainingTarget v E /
        (Real.log 2)^2 :=
  pinnedPrimeWeightBertrandMajorant_eq_cubic
    (dyadicScale_pos j) v E

/-- The quantitative facts still missing after the two-sided sandwich. -/
def requiredRatioSandwichObligations : List String :=
  ["a cross-scale theorem bounding the next-octave positive remaining target by the current-octave pinned amplitude square",
   "one scale-uniform required-capacity bound at threshold 7/8",
   "one scale-uniform required-capacity bound at threshold 3/4",
   "an arithmetic coefficient source law if the analytic optimizer is to be interpreted explicitly",
   "complete endpoint, prime-power, normalization, and residual accounting"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["Bertrand amplitude floor -> uniform ratio bound",
   "strictly positive amplitude -> scale-uniform positive lower constant",
   "cubic Bertrand majorant -> threshold descent",
   "current-octave envelope ceiling -> cross-scale theta majorization",
   "ratio sandwich -> explicit-formula coefficient source law",
   "clause arity -> ratio estimate",
   "MAX-3SAT hardness -> prime or theta estimate",
   "conditional ratio endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightRatioSandwichControls
