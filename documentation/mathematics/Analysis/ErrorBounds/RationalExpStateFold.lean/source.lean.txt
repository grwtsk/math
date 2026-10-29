/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.BigOperators.IndexedStateFold
import GRWTSK.Analysis.ErrorBounds.RationalPowerValue

set_option autoImplicit false

/-!
# Exact state folds for the existing rounded inverse-power construction

The Taylor polynomial, rounded stages and outward nonlinear error are the SAME
rational expressions as the maintained reference. Values AND radii are equal,
not merely alternative enclosures. No log, trace, tail or result oracle enters.
The constructor preserves every rounding location and every square residual.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ErrorBounds.RationalExpStateFold

open GRWTSK.Algebra.BigOperators.IndexedStateFold
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude)

/-- Current power, its factorial denominator, and the complete partial sum. -/
abbrev TaylorState := Coordinates × ℕ × Coordinates

def taylorStep (u : Coordinates) (j : ℕ) (state : TaylorState) : TaylorState :=
  (mul state.1 u, (j+1)*state.2.1,
    add state.2.2 (divNat state.1 state.2.1))

def taylorSpec (u : Coordinates) (j : ℕ) : TaylorState :=
  (power u j, j.factorial, RationalComplexEnclosure.taylor u j)

theorem taylorStep_spec (u : Coordinates) (j : ℕ) :
    taylorStep u j (taylorSpec u j) = taylorSpec u (j+1) := by
  simp only [taylorStep, taylorSpec, power, RationalComplexEnclosure.taylor,
    Nat.factorial_succ]

def taylor (u : Coordinates) (terms : ℕ) : Coordinates :=
  (run (taylorStep u) 0 terms (one, 1, zero)).2.2

/-- The seed is still the exact M-term polynomial, with no intermediate rounding. -/
theorem taylor_eq (u : Coordinates) (terms : ℕ) :
    taylor u terms = RationalComplexEnclosure.taylor u terms := by
  have h := run_spec (taylorStep u) (taylorSpec u) (taylorStep_spec u) 0 terms
  simpa [taylor, taylorSpec, power, RationalComplexEnclosure.taylor] using
    congrArg (fun state : TaylorState => state.2.2) h

/-- Current midpoint and COMPLETE outward error travel in one immutable state. -/
def squareStep (bits : ℕ) (_j : ℕ) (state : Ball) : Ball :=
  let raw := mul state.mid state.mid
  let next := rounded bits raw
  ⟨next, up bits (2*state.rad + state.rad^2 + magnitude (sub next raw))⟩

def initial (bits : ℕ) (w : Coordinates) (s terms : ℕ) : Ball :=
  let seed := taylor (divNat w (2^s)) terms
  let mid := rounded bits seed
  ⟨mid, up bits (RationalExpTrace.seedTail (magnitude w) s terms +
    magnitude (sub seed mid))⟩

def squareSpec (bits : ℕ) (w : Coordinates) (s terms j : ℕ) : Ball :=
  ⟨RationalRoundedExp.stage bits w s terms j,
    outwardPropagation bits
      (RationalExpTrace.seedTail (magnitude w) s terms +
        magnitude (sub (RationalExpTrace.seedValue w s terms)
          (RationalRoundedExp.stage bits w s terms 0)))
      (RationalRoundedExp.squareRadius bits w s terms) j⟩

theorem initial_eq (bits : ℕ) (w : Coordinates) (s terms : ℕ) :
    initial bits w s terms = squareSpec bits w s terms 0 := by
  simp only [initial, taylor_eq, squareSpec, RationalRoundedExp.stage,
    outwardPropagation, RationalExpTrace.seedValue]

theorem squareStep_spec (bits : ℕ) (w : Coordinates) (s terms j : ℕ) :
    squareStep bits j (squareSpec bits w s terms j) =
      squareSpec bits w s terms (j+1) := by
  simp only [squareStep, squareSpec, outwardPropagation,
    RationalRoundedExp.squareRadius, RationalRoundedExp.stage]

def exponential (bits : ℕ) (w : Coordinates) (s terms : ℕ) : Ball :=
  run (squareStep bits) 0 s (initial bits w s terms)

/-- Defaulted trace radii must agree only at actual consumed positions. -/
theorem outward_congr (bits : ℕ) (e : ℚ) {r q : ℕ → ℚ} (n : ℕ)
    (h : ∀ j, j < n → r j = q j) :
    outwardPropagation bits e r n = outwardPropagation bits e q n := by
  revert h
  induction n with
  | zero => intro _; rfl
  | succ n ih =>
      intro h
      have hp := ih (fun j hj => h j (by omega))
      simp only [outwardPropagation, hp, h n (by omega)]

/-- EXACT old midpoint and EXACT old outward radius, including zero squarings. -/
theorem exponential_eq (bits : ℕ) (w : Coordinates) (s terms : ℕ) :
    exponential bits w s terms = RationalRoundedExp.enclosure bits w s terms := by
  have hs := run_spec (squareStep bits) (squareSpec bits w s terms)
    (squareStep_spec bits w s terms) 0 s
  rw [exponential, initial_eq, hs]
  simp only [Nat.zero_add]
  unfold squareSpec RationalRoundedExp.enclosure
  congr 1
  change outwardPropagation bits
        (RationalExpTrace.seedTail (magnitude w) s terms +
          magnitude (sub (RationalExpTrace.seedValue w s terms)
            (RationalRoundedExp.stage bits w s terms 0)))
        (RationalRoundedExp.squareRadius bits w s terms) s = _
  apply outward_congr
  intro j hj
  exact (RationalRoundedExp.trace_radius bits w s terms j hj).symm

/-- The rounded log is computed by its old owner and reused in both channels. -/
def withLog (s : Coordinates) (ell : Ball) (d : RationalPowerValue.Resolution) : Ball :=
  let w := mul (sub zero s) ell.mid
  let z := exponential d.bits w d.squarings d.expTerms
  ⟨z.mid, up d.bits (z.rad + magnitude s * ell.rad)⟩

def powerValue (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution) : Ball :=
  withLog s (RationalPowerValue.logBall t d) d

/-- No domain change: equality is arithmetic, semantic validity remains upstream. -/
theorem powerValue_eq (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution) :
    powerValue s t d = RationalPowerValue.valueBall s t d := by
  simp only [powerValue, withLog, exponential_eq, RationalPowerValue.valueBall,
    RationalAtanhPower.output, RationalPowerValue.trace, RationalRoundedExp.enclosure,
    RationalPowerValue.exponent, RationalAtanhPower.exponent, RationalPowerValue.logBall,
    RationalRoundedExp.trace_value _ _ _ _ _ le_rfl]

/-- Original target and OLD complete allowance; no alternate semantic error theorem. -/
theorem powerValue_sound {s : Coordinates} {t : ℚ} {d : RationalPowerValue.Resolution}
    (h : RationalPowerValue.check s t d = true) :
    Holds (powerValue s t d) ((t : ℂ) ^ (-toComplex s)) := by
  rw [powerValue_eq]
  exact RationalPowerValue.valueBall_sound h

end GRWTSK.Analysis.ErrorBounds.RationalExpStateFold
