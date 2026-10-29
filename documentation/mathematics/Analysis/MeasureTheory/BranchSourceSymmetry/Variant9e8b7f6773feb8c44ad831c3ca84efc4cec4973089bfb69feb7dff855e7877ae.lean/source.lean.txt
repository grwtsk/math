import FormalResearch.RiemannHypothesis.Conversation.BranchPrimePowerCutoff
import Mathlib.MeasureTheory.Group.Integral

/-!
# Source-preserving transformations leave the literal finite readout unchanged

Batch 26, `exact-profile-descent.md`, section 5, revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. Translation, reflection and
global sign preserve the defining real autocorrelation integral. Therefore
each preserves every term in the literal closed prime-power inventory.
The native normalized source is identified with the existing closed moment.
The generic correlation-preservation implication also retains its exact
hypothesis; no Fourier phase or marked-pair comparison is assumed proved.

Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchSourceSymmetry

open MeasureTheory Filter
open SourcePairing BranchScaleCutoff BranchPrimePowerCutoff
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimatePrimeSmoothDefect

/-- The defining real autocorrelation of a profile, with the source's lag convention. -/
def autocorrelation (q : ℝ → ℝ) (t : ℝ) : ℝ := ∫ x, q x * q (x - t)

/-- The original finite readout applied to an arbitrary profile and the unchanged weights. -/
def sourceReadout (A : ℝ) (q : ℝ → ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * autocorrelation q (Real.log n)

/-- At the actual normalized source this integral is the existing source correlation. -/
theorem autocorrelation_native (A t : ℝ) :
    autocorrelation (normalizedTest explicitSecondDerivative A) t =
      sourceCorrelation explicitSecondDerivative A t := rfl

/-- The profile readout agrees exactly with the original full closed prime-power moment. -/
theorem sourceReadout_native (A : ℝ) :
    sourceReadout A (normalizedTest explicitSecondDerivative A) = closedPrimeMoment A := by
  rw [closedPrimeMoment_eq_partialMoment]
  rfl

/-- Translation of both profile factors preserves their genuine Lebesgue integral. -/
theorem autocorrelation_translate (q : ℝ → ℝ) (s t : ℝ) :
    autocorrelation (fun x ↦ q (x - s)) t = autocorrelation q t := by
  unfold autocorrelation
  calc
    (∫ x : ℝ, q (x - s) * q (x - t - s)) =
        ∫ x : ℝ, q (x - s) * q (x - s - t) := by
      apply integral_congr_ae
      exact Eventually.of_forall (fun x ↦
        congrArg (fun z : ℝ ↦ q (x - s) * q z) (by ring))
    _ = _ := integral_sub_right_eq_self (μ := volume) (fun x ↦ q x * q (x - t)) s

/-- Every real autocorrelation is even, by translating and interchanging the two factors. -/
theorem autocorrelation_even (q : ℝ → ℝ) : Function.Even (autocorrelation q) := by
  intro t
  unfold autocorrelation
  have h := integral_sub_right_eq_self (μ := volume)
    (fun x : ℝ ↦ q x * q (x - -t)) t
  simpa only [sub_neg_eq_add, sub_add_cancel, mul_comm] using h.symm

/-- Reflection preserves the actual correlation integral at every real lag. -/
theorem autocorrelation_reflect (q : ℝ → ℝ) (t : ℝ) :
    autocorrelation (fun x ↦ q (-x)) t = autocorrelation q t := by
  calc
    autocorrelation (fun x ↦ q (-x)) t = autocorrelation q (-t) := by
      unfold autocorrelation
      have h := integral_neg_eq_self (fun x : ℝ ↦ q x * q (x - -t)) volume
      calc
        (∫ x : ℝ, q (-x) * q (-(x - t))) =
            ∫ x : ℝ, q (-x) * q (-x - -t) := by
          apply integral_congr_ae
          exact Eventually.of_forall (fun x ↦
            congrArg (fun z : ℝ ↦ q (-x) * q z) (by ring))
        _ = _ := h
    _ = _ := autocorrelation_even q t

/-- A global sign cancels between the two factors of the actual correlation. -/
theorem autocorrelation_neg (q : ℝ → ℝ) (t : ℝ) :
    autocorrelation (fun x ↦ -q x) t = autocorrelation q t := by
  simp only [autocorrelation, neg_mul_neg]

/-- Preserving all correlation lags preserves the complete finite readout term by term. -/
theorem sourceReadout_eq_of_correlation_eq (A : ℝ) {q r : ℝ → ℝ}
    (h : ∀ t, autocorrelation q t = autocorrelation r t) :
    sourceReadout A q = sourceReadout A r := by
  unfold sourceReadout
  apply Finset.sum_congr rfl
  intro n _hn
  rw [h]

/-- Translation preserves every term of the literal closed floor sum. -/
theorem sourceReadout_translate (A : ℝ) (q : ℝ → ℝ) (s : ℝ) :
    sourceReadout A (fun x ↦ q (x - s)) = sourceReadout A q :=
  sourceReadout_eq_of_correlation_eq A (autocorrelation_translate q s)

/-- Reflection preserves every term of the literal closed floor sum. -/
theorem sourceReadout_reflect (A : ℝ) (q : ℝ → ℝ) :
    sourceReadout A (fun x ↦ q (-x)) = sourceReadout A q :=
  sourceReadout_eq_of_correlation_eq A (autocorrelation_reflect q)

/-- Global sign preserves every term of the literal closed floor sum. -/
theorem sourceReadout_neg (A : ℝ) (q : ℝ → ℝ) :
    sourceReadout A (fun x ↦ -q x) = sourceReadout A q :=
  sourceReadout_eq_of_correlation_eq A (autocorrelation_neg q)

/-- A translated actual native source retains exactly its original scalar. -/
theorem translated_native_readout (A s : ℝ) :
    sourceReadout A (fun x ↦ normalizedTest explicitSecondDerivative A (x - s)) =
      closedPrimeMoment A := by
  rw [sourceReadout_translate, sourceReadout_native]

/-- A reflected actual native source retains exactly its original scalar. -/
theorem reflected_native_readout (A : ℝ) :
    sourceReadout A (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) =
      closedPrimeMoment A := by
  rw [sourceReadout_reflect, sourceReadout_native]

/-- The globally negated actual native source retains exactly its original scalar. -/
theorem negated_native_readout (A : ℝ) :
    sourceReadout A (fun x ↦ -normalizedTest explicitSecondDerivative A x) =
      closedPrimeMoment A := by
  rw [sourceReadout_neg, sourceReadout_native]

/-- Exact correlation preservation rules out strict scalar descent without any norm estimate. -/
theorem no_strict_descent_of_correlation_eq (A : ℝ) {q r : ℝ → ℝ}
    (h : ∀ t, autocorrelation q t = autocorrelation r t) :
    ¬ sourceReadout A q < sourceReadout A r := by
  rw [sourceReadout_eq_of_correlation_eq A h]
  exact lt_irrefl _

end FormalResearch.RiemannHypothesis.BranchSourceSymmetry
