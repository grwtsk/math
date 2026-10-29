import Surface.Core.Bezier.Rational
import Mathlib.Tactic

/-!
# Recursive rational de Casteljau subdivision probe

This is a fallback for proving rational Bézier subdivision without first
identifying the recursive evaluator with the closed Bernstein formula.
Positive weighted control points are lifted to homogeneous coordinates
`(weight • point, weight)`.  Ordinary real de Casteljau evaluation is then
performed in the product module, and the result is dehomogenized.

The left and right subdivision identities are exact in every degree.  This
file is scratch-only and introduces no canonical declarations.
-/

namespace Surface.BZ1.RecursiveRationalSubdivisionProbe

noncomputable section

abbrev UnitInterval := Surface.Core.Bezier.UnitInterval

variable {M : Type*} [AddCommGroup M] [Module ℝ M]

/-- Infinite control-row presentation.  Degree `n` uses only entries through
index `n`. -/
abbrev ControlRow (M : Type*) := ℕ → M

/-- One affine de Casteljau reduction step. -/
def step (t : ℝ) (p : ControlRow M) : ControlRow M :=
  fun i => (1 - t) • p i + t • p (i + 1)

/-- Recursive de Casteljau evaluation. -/
def deCasteljau : (n : ℕ) → ControlRow M → ℝ → M
  | 0, p, _ => p 0
  | n + 1, p, t => deCasteljau n (step t p) t

/-- Pointwise affine combination of two rows. -/
def rowCombo (a : ℝ) (p q : ControlRow M) : ControlRow M :=
  fun i => (1 - a) • p i + a • q i

lemma step_rowCombo (t a : ℝ) (p q : ControlRow M) :
    step t (rowCombo a p q) = rowCombo a (step t p) (step t q) := by
  funext i
  simp only [step, rowCombo]
  module

lemma deCasteljau_rowCombo (n : ℕ) (t a : ℝ)
    (p q : ControlRow M) :
    deCasteljau n (rowCombo a p q) t =
      (1 - a) • deCasteljau n p t + a • deCasteljau n q t := by
  induction n generalizing p q with
  | zero => rfl
  | succ n ih =>
      rw [deCasteljau, step_rowCombo, ih]
      rfl

lemma step_eq_rowCombo_self_step (t u : ℝ) (p : ControlRow M) :
    step (t * u) p = rowCombo t p (step u p) := by
  funext i
  simp only [step, rowCombo]
  module

/-- Left homogeneous subdivision row. -/
def splitLeftRow (p : ControlRow M) (u : ℝ) : ControlRow M :=
  fun i => deCasteljau i p u

lemma step_splitLeftRow (t u : ℝ) (p : ControlRow M) :
    step t (splitLeftRow p u) = splitLeftRow (step (t * u) p) u := by
  funext i
  simp only [step, splitLeftRow]
  rw [show deCasteljau (i + 1) p u =
      deCasteljau i (step u p) u by rfl]
  rw [← deCasteljau_rowCombo]
  rw [← step_eq_rowCombo_self_step]

lemma deCasteljau_splitLeftRow_mul (n : ℕ) (p : ControlRow M)
    (u t : ℝ) :
    deCasteljau n (splitLeftRow p u) t = deCasteljau n p (t * u) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [deCasteljau, step_splitLeftRow, ih]
      rfl

/-- Exact left subdivision identity. -/
theorem deCasteljau_splitLeftRow (n : ℕ) (p : ControlRow M)
    (u t : ℝ) :
    deCasteljau n (splitLeftRow p u) t = deCasteljau n p (u * t) := by
  simpa only [mul_comm] using deCasteljau_splitLeftRow_mul n p u t

/-- Degree-`n` evaluation depends only on the first `n + 1` row entries. -/
lemma deCasteljau_congr_prefix (n : ℕ) (p q : ControlRow M) (t : ℝ)
    (h : ∀ i, i ≤ n → p i = q i) :
    deCasteljau n p t = deCasteljau n q t := by
  induction n generalizing p q with
  | zero => exact h 0 (by omega)
  | succ n ih =>
      rw [deCasteljau, deCasteljau]
      apply ih
      intro i hi
      simp only [step]
      rw [h i (by omega), h (i + 1) (by omega)]

/-- Right homogeneous subdivision row. -/
def splitRightRow (n : ℕ) (p : ControlRow M) (u : ℝ) : ControlRow M :=
  fun i => deCasteljau (n - i) (fun j => p (i + j)) u

lemma step_splitRightRow_prefix (n i : ℕ) (hi : i ≤ n)
    (t u : ℝ) (p : ControlRow M) :
    step t (splitRightRow (n + 1) p u) i =
      splitRightRow n (step (u + (1 - u) * t) p) u i := by
  simp only [step, splitRightRow]
  have hsub1 : n + 1 - i = (n - i) + 1 := by omega
  have hsub2 : n + 1 - (i + 1) = n - i := by omega
  rw [hsub1, hsub2]
  rw [show deCasteljau ((n - i) + 1) (fun j => p (i + j)) u =
      deCasteljau (n - i) (step u (fun j => p (i + j))) u by rfl]
  rw [← deCasteljau_rowCombo]
  apply deCasteljau_congr_prefix
  intro j hj
  simp only [rowCombo, step]
  have hidx : i + 1 + j = i + j + 1 := by omega
  rw [hidx]
  module

/-- Exact right subdivision identity. -/
theorem deCasteljau_splitRightRow (n : ℕ) (p : ControlRow M)
    (u t : ℝ) :
    deCasteljau n (splitRightRow n p u) t =
      deCasteljau n p (u + (1 - u) * t) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [deCasteljau]
      calc
        deCasteljau n (step t (splitRightRow (n + 1) p u)) t =
            deCasteljau n
              (splitRightRow n (step (u + (1 - u) * t) p) u) t := by
          apply deCasteljau_congr_prefix
          intro i hi
          exact step_splitRightRow_prefix n i hi t u p
        _ = deCasteljau n (step (u + (1 - u) * t) p)
              (u + (1 - u) * t) :=
          ih (step (u + (1 - u) * t) p)
        _ = deCasteljau (n + 1) p (u + (1 - u) * t) := rfl

/-! ## Positive homogeneous rational segments -/

variable {V : Type*} [AddCommGroup V] [Module ℝ V]

/-- A positive-weight rational segment for the recursive evaluator. -/
structure Segment (V : Type*) [AddCommGroup V] [Module ℝ V]
    (degree : ℕ) where
  control : Fin (degree + 1) → V
  weight : Fin (degree + 1) → ℝ
  weight_pos : ∀ i, 0 < weight i

namespace Segment

variable {degree : ℕ}

/-- One weighted control point in homogeneous coordinates. -/
def homogeneousControl (C : Segment V degree) (i : Fin (degree + 1)) :
    V × ℝ :=
  (C.weight i • C.control i, C.weight i)

/-- Infinite homogeneous row, zero-filled after the observed degree. -/
def homogeneousRow (C : Segment V degree) : ControlRow (V × ℝ) :=
  fun i => if h : i < degree + 1 then C.homogeneousControl ⟨i, h⟩ else 0

lemma homogeneousRow_apply_of_le (C : Segment V degree)
    {i : ℕ} (hi : i ≤ degree) :
    C.homogeneousRow i = C.homogeneousControl ⟨i, by omega⟩ := by
  simp [homogeneousRow, hi]

/-- Dehomogenize a vector/weight pair. -/
def dehomogenize (h : V × ℝ) : V :=
  h.2⁻¹ • h.1

/-- Recursive homogeneous numerator. -/
def numerator (C : Segment V degree) (t : UnitInterval) : V :=
  (deCasteljau degree C.homogeneousRow t.1).1

/-- Recursive homogeneous denominator. -/
def denominator (C : Segment V degree) (t : UnitInterval) : ℝ :=
  (deCasteljau degree C.homogeneousRow t.1).2

/-- Recursive rational de Casteljau evaluation on the unit interval. -/
def eval (C : Segment V degree) (t : UnitInterval) : V :=
  (C.denominator t)⁻¹ • C.numerator t

lemma deCasteljau_snd_pos (n : ℕ) (p : ControlRow (V × ℝ))
    (t : UnitInterval)
    (hp : ∀ i, i ≤ n → 0 < (p i).2) :
    0 < (deCasteljau n p t.1).2 := by
  induction n generalizing p with
  | zero => simpa [deCasteljau] using hp 0 (by omega)
  | succ n ih =>
      rw [deCasteljau]
      apply ih (step t.1 p)
      intro i hi
      have h₀ := hp i (by omega)
      have h₁ := hp (i + 1) (by omega)
      change 0 < (1 - t.1) * (p i).2 + t.1 * (p (i + 1)).2
      by_cases ht : t.1 = 0
      · simpa [ht] using h₀
      · exact add_pos_of_nonneg_of_pos
          (mul_nonneg (sub_nonneg.mpr t.2.2) h₀.le)
          (mul_pos (lt_of_le_of_ne t.2.1 (Ne.symm ht)) h₁)

lemma homogeneousEval_weight_pos (C : Segment V degree)
    (t : UnitInterval) :
    0 < (deCasteljau degree C.homogeneousRow t.1).2 := by
  apply deCasteljau_snd_pos degree C.homogeneousRow t
  intro i hi
  rw [C.homogeneousRow_apply_of_le hi]
  exact C.weight_pos ⟨i, by omega⟩

theorem denominator_pos (C : Segment V degree) (t : UnitInterval) :
    0 < C.denominator t :=
  C.homogeneousEval_weight_pos t

/-- Package positive homogeneous controls as an ordinary rational segment. -/
def ofHomogeneous
    (h : Fin (degree + 1) → V × ℝ)
    (hpos : ∀ i, 0 < (h i).2) : Segment V degree where
  control i := (h i).2⁻¹ • (h i).1
  weight i := (h i).2
  weight_pos := hpos

@[simp]
lemma ofHomogeneous_homogeneousControl
    (h : Fin (degree + 1) → V × ℝ)
    (hpos : ∀ i, 0 < (h i).2)
    (i : Fin (degree + 1)) :
    (ofHomogeneous h hpos).homogeneousControl i = h i := by
  apply Prod.ext
  · simp [ofHomogeneous, homogeneousControl, (hpos i).ne']
  · rfl

/-- Positive left diagonal of the homogeneous de Casteljau triangle. -/
def leftHomogeneous (C : Segment V degree) (u : UnitInterval) :
    Fin (degree + 1) → V × ℝ :=
  fun i => splitLeftRow C.homogeneousRow u.1 i.1

lemma leftHomogeneous_weight_pos (C : Segment V degree)
    (u : UnitInterval) (i : Fin (degree + 1)) :
    0 < (C.leftHomogeneous u i).2 := by
  unfold leftHomogeneous splitLeftRow
  apply deCasteljau_snd_pos i.1 C.homogeneousRow u
  intro j hj
  have hjdeg : j ≤ degree := by omega
  rw [C.homogeneousRow_apply_of_le hjdeg]
  exact C.weight_pos ⟨j, by omega⟩

/-- Positive right diagonal of the homogeneous de Casteljau triangle. -/
def rightHomogeneous (C : Segment V degree) (u : UnitInterval) :
    Fin (degree + 1) → V × ℝ :=
  fun i => splitRightRow degree C.homogeneousRow u.1 i.1

lemma rightHomogeneous_weight_pos (C : Segment V degree)
    (u : UnitInterval) (i : Fin (degree + 1)) :
    0 < (C.rightHomogeneous u i).2 := by
  unfold rightHomogeneous splitRightRow
  apply deCasteljau_snd_pos (degree - i.1)
      (fun j => C.homogeneousRow (i.1 + j)) u
  intro j hj
  have hij : i.1 + j ≤ degree := by omega
  rw [C.homogeneousRow_apply_of_le hij]
  exact C.weight_pos ⟨i.1 + j, by omega⟩

def splitLeftSegment (C : Segment V degree) (u : UnitInterval) :
    Segment V degree :=
  ofHomogeneous (C.leftHomogeneous u) (C.leftHomogeneous_weight_pos u)

def splitRightSegment (C : Segment V degree) (u : UnitInterval) :
    Segment V degree :=
  ofHomogeneous (C.rightHomogeneous u) (C.rightHomogeneous_weight_pos u)

/-- Subdivide into the exact left and right rational segments. -/
def splitAt (C : Segment V degree) (u : UnitInterval) :
    Segment V degree × Segment V degree :=
  (C.splitLeftSegment u, C.splitRightSegment u)

lemma splitLeftSegment_row_eq (C : Segment V degree)
    (u : UnitInterval) {i : ℕ} (hi : i ≤ degree) :
    (C.splitLeftSegment u).homogeneousRow i =
      splitLeftRow C.homogeneousRow u.1 i := by
  rw [(C.splitLeftSegment u).homogeneousRow_apply_of_le hi]
  change
    (ofHomogeneous (C.leftHomogeneous u)
      (C.leftHomogeneous_weight_pos u)).homogeneousControl
        ⟨i, by omega⟩ = _
  rw [ofHomogeneous_homogeneousControl]
  rfl

lemma splitRightSegment_row_eq (C : Segment V degree)
    (u : UnitInterval) {i : ℕ} (hi : i ≤ degree) :
    (C.splitRightSegment u).homogeneousRow i =
      splitRightRow degree C.homogeneousRow u.1 i := by
  rw [(C.splitRightSegment u).homogeneousRow_apply_of_le hi]
  change
    (ofHomogeneous (C.rightHomogeneous u)
      (C.rightHomogeneous_weight_pos u)).homogeneousControl
        ⟨i, by omega⟩ = _
  rw [ofHomogeneous_homogeneousControl]
  rfl

/-- Reparameterize `[0,1]` onto `[0,u]`. -/
def leftParameter (u t : UnitInterval) : UnitInterval :=
  ⟨u.1 * t.1,
    mul_nonneg u.2.1 t.2.1,
    mul_le_one₀ u.2.2 t.2.1 t.2.2⟩

/-- Reparameterize `[0,1]` onto `[u,1]`. -/
def rightParameter (u t : UnitInterval) : UnitInterval :=
  ⟨u.1 + (1 - u.1) * t.1, by
    constructor <;> nlinarith [u.2.1, u.2.2, t.2.1, t.2.2]⟩

/-- Exact recursive rational left-subdivision identity. -/
theorem eval_split_left (C : Segment V degree) (u t : UnitInterval) :
    (C.splitAt u).1.eval t = C.eval (leftParameter u t) := by
  have hhom :
    deCasteljau degree (C.splitLeftSegment u).homogeneousRow t.1 =
        deCasteljau degree (splitLeftRow C.homogeneousRow u.1) t.1 := by
      apply deCasteljau_congr_prefix
      intro i hi
      exact C.splitLeftSegment_row_eq u hi
  have hsplit :
      deCasteljau degree (C.splitLeftSegment u).homogeneousRow t.1 =
        deCasteljau degree C.homogeneousRow (u.1 * t.1) :=
    hhom.trans (deCasteljau_splitLeftRow degree C.homogeneousRow u.1 t.1)
  unfold splitAt eval numerator denominator
  rw [hsplit]
  rfl

/-- Exact recursive rational right-subdivision identity. -/
theorem eval_split_right (C : Segment V degree) (u t : UnitInterval) :
    (C.splitAt u).2.eval t = C.eval (rightParameter u t) := by
  have hhom :
    deCasteljau degree (C.splitRightSegment u).homogeneousRow t.1 =
        deCasteljau degree
          (splitRightRow degree C.homogeneousRow u.1) t.1 := by
      apply deCasteljau_congr_prefix
      intro i hi
      exact C.splitRightSegment_row_eq u hi
  have hsplit :
      deCasteljau degree (C.splitRightSegment u).homogeneousRow t.1 =
        deCasteljau degree C.homogeneousRow
          (u.1 + (1 - u.1) * t.1) :=
    hhom.trans (deCasteljau_splitRightRow degree C.homogeneousRow u.1 t.1)
  unfold splitAt eval numerator denominator
  rw [hsplit]
  rfl

end Segment

end

end Surface.BZ1.RecursiveRationalSubdivisionProbe

#print axioms Surface.BZ1.RecursiveRationalSubdivisionProbe.Segment.eval_split_left
#print axioms Surface.BZ1.RecursiveRationalSubdivisionProbe.Segment.eval_split_right
