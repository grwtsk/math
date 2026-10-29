import DAF.Terrain.AbsoluteRegion
import DAF.Terrain.BinaryCharge
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# Deterministic half-up threshold equivalence

The unique convention is `false` strictly below one half and `true` at or
above one half.  Exact ties therefore map to `true`.  Threshold equivalence is
equality after this pointwise observation; it is unrelated to real-valued
equality and is kept outside every certified linear evolution stage.
-/

universe u

namespace DAF.Terrain

/-- Deterministic half-up rounding with an exact tie mapped to `true`. -/
noncomputable def roundHalfUp (x : Real) : Bool :=
  decide ((1 : Real) / 2 ≤ x)

@[simp]
theorem roundHalfUp_eq_true_iff (x : Real) :
    roundHalfUp x = true ↔ (1 : Real) / 2 ≤ x := by
  simp [roundHalfUp]

@[simp]
theorem roundHalfUp_eq_false_iff (x : Real) :
    roundHalfUp x = false ↔ x < (1 : Real) / 2 := by
  simp [roundHalfUp, not_le]

@[simp]
theorem roundHalfUp_half : roundHalfUp ((1 : Real) / 2) = true := by
  simp [roundHalfUp]

/-- Pointwise thresholding of a finite or infinite real-valued signal. -/
noncomputable def thresholdState (u : V → Real) : V → Bool :=
  fun v => roundHalfUp (u v)

/-- Signals are observationally equivalent when their thresholded states agree. -/
def ThresholdEquivalent (u v : V → Real) : Prop :=
  thresholdState u = thresholdState v

theorem thresholdEquivalent_refl (u : V → Real) :
    ThresholdEquivalent u u :=
  rfl

theorem thresholdEquivalent_symm {u v : V → Real}
    (h : ThresholdEquivalent u v) : ThresholdEquivalent v u :=
  h.symm

theorem thresholdEquivalent_trans {u v w : V → Real}
    (huv : ThresholdEquivalent u v) (hvw : ThresholdEquivalent v w) :
    ThresholdEquivalent u w :=
  huv.trans hvw

/-- The equivalence relation induced by deterministic threshold observation. -/
def thresholdSetoid (V : Type u) : Setoid (V → Real) where
  r := ThresholdEquivalent
  iseqv := ⟨thresholdEquivalent_refl,
    thresholdEquivalent_symm, thresholdEquivalent_trans⟩

/-- Thresholding commutes definitionally with restriction to exact coordinates. -/
theorem thresholdState_restrictSignal
    {State : Type u} {G : KnownMaximalState State}
    (R : AbsoluteRegion G) (u : G.Coord → Real) :
    thresholdState (restrictSignal R u) =
      restrictSignal R (thresholdState u) :=
  rfl

@[simp]
theorem roundHalfUp_boolToReal (b : Bool) :
    roundHalfUp (boolToReal b) = b := by
  cases b <;> norm_num [roundHalfUp, boolToReal]

/-- Boolean embedding followed by thresholding is exactly the identity. -/
@[simp]
theorem thresholdState_boolToReal (b : V → Bool) :
    thresholdState (fun v => boolToReal (b v)) = b := by
  funext v
  exact roundHalfUp_boolToReal (b v)

/-- Thresholding is idempotent after the declared Boolean embedding. -/
@[simp]
theorem thresholdState_idempotent (u : V → Real) :
    thresholdState (fun v => boolToReal (thresholdState u v)) =
      thresholdState u :=
  thresholdState_boolToReal (thresholdState u)

/-- A uniform positive distance from the half threshold. -/
def HasThresholdMargin (u : V → Real) (margin : Real) : Prop :=
  0 < margin ∧ ∀ v, margin ≤ |u v - (1 : Real) / 2|

/-- A perturbation smaller than a certified scalar margin preserves rounding. -/
theorem roundHalfUp_eq_of_margin
    {x y margin : Real}
    (_hmargin : 0 < margin)
    (hseparated : margin ≤ |x - (1 : Real) / 2|)
    (hclose : |y - x| < margin) :
    roundHalfUp y = roundHalfUp x := by
  by_cases hx : (1 : Real) / 2 ≤ x
  · have habsx : |x - (1 : Real) / 2| = x - (1 : Real) / 2 :=
      abs_of_nonneg (sub_nonneg.mpr hx)
    have hbelow : -|y - x| ≤ y - x := neg_abs_le (y - x)
    have hy : (1 : Real) / 2 ≤ y := by
      rw [habsx] at hseparated
      linarith
    unfold roundHalfUp
    calc
      decide ((1 : Real) / 2 ≤ y) = true := decide_eq_true hy
      _ = decide ((1 : Real) / 2 ≤ x) := (decide_eq_true hx).symm
  · have hxlt : x < (1 : Real) / 2 := lt_of_not_ge hx
    have habsx : |x - (1 : Real) / 2| = (1 : Real) / 2 - x := by
      rw [abs_of_nonpos (by linarith)]
      linarith
    have habove : y - x ≤ |y - x| := le_abs_self (y - x)
    have hy : y < (1 : Real) / 2 := by
      rw [habsx] at hseparated
      linarith
    have hynot : ¬ (1 : Real) / 2 ≤ y := not_le.mpr hy
    unfold roundHalfUp
    calc
      decide ((1 : Real) / 2 ≤ y) = false := decide_eq_false hynot
      _ = decide ((1 : Real) / 2 ≤ x) := (decide_eq_false hx).symm

/-- Pointwise perturbations below a positive uniform margin preserve the state. -/
theorem thresholdState_eq_of_margin
    {u v : V → Real} {margin : Real}
    (hmargin : HasThresholdMargin u margin)
    (hclose : ∀ x, |v x - u x| < margin) :
    thresholdState v = thresholdState u := by
  funext x
  exact roundHalfUp_eq_of_margin hmargin.1 (hmargin.2 x) (hclose x)

end DAF.Terrain
