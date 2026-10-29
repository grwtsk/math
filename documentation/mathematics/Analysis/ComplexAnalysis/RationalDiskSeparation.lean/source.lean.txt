/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalComplexQuotient

set_option autoImplicit false

/-!
# Exact rational disk geometry for finite zero isolation

Squared center distances certify strict separation of CLOSED balls. Vertical
containment uses <= and therefore admits a point exactly at the height cutoff.
This guard proves geometry only, not that any disk contains a zero.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalDiskSeparation

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic

/-- Rational input only. No roots, multiplicities or completeness are inspected. -/
def Admissible (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ) : Prop :=
  (∀ i, 0 ≤ radius i ∧ |(center i).im| + radius i ≤ T) ∧
  ∀ i j, i ≠ j → (radius i + radius j) ^ 2 < QComplex.normSq (QComplex.sub (center i) (center j))

instance (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ) :
    Decidable (Admissible T center radius) := by
  unfold Admissible
  infer_instance

def verify (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ) : Bool :=
  decide (Admissible T center radius)

theorem verify_iff (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ) :
    verify T center radius = true ↔ Admissible T center radius := by
  simp [verify]

/-- No square root is computed; its order consequence is derived semantically. -/
theorem center_gap (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ)
    (hg : Admissible T center radius) (i j : Fin k) (hne : i ≠ j) :
    (radius i : ℝ) + (radius j : ℝ) < ‖QComplex.embed (center i) - QComplex.embed (center j)‖ := by
  have hs : ((radius i : ℝ) + (radius j : ℝ)) ^ 2 <
      (QComplex.normSq (QComplex.sub (center i) (center j)) : ℝ) := by
    exact_mod_cast hg.2 i j hne
  rw [QComplex.cast_normSq, QComplex.embed_sub] at hs
  have hi : (0 : ℝ) ≤ radius i := by exact_mod_cast (hg.1 i).1
  have hj : (0 : ℝ) ≤ radius j := by exact_mod_cast (hg.1 j).1
  have hn := norm_nonneg (QComplex.embed (center i) - QComplex.embed (center j))
  nlinarith

/-- Every point of a declared closed ball lies within the CLOSED height head. -/
theorem abs_im_le_cutoff (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ)
    (hg : Admissible T center radius) (i : Fin k) (z : ℂ)
    (hz : ‖z - QComplex.embed (center i)‖ ≤ (radius i : ℝ)) : |z.im| ≤ (T : ℝ) := by
  have hi := (Complex.abs_im_le_norm (z - QComplex.embed (center i))).trans hz
  have hc : |(QComplex.embed (center i)).im| + (radius i : ℝ) ≤ (T : ℝ) := by
    exact_mod_cast (hg.1 i).2
  have ht : |z.im| ≤ |z.im - (QComplex.embed (center i)).im| +
      |(QComplex.embed (center i)).im| := by
    simpa only [sub_add_cancel] using
      abs_add_le (z.im - (QComplex.embed (center i)).im) (QComplex.embed (center i)).im
  simp only [Complex.sub_im] at hi
  linarith

/-- Touching disks do not satisfy the strict guard. Full complex distance is used. -/
theorem not_in_two_balls (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ)
    (hg : Admissible T center radius) (i j : Fin k) (hne : i ≠ j) (z : ℂ)
    (hi : ‖z - QComplex.embed (center i)‖ ≤ (radius i : ℝ))
    (hj : ‖z - QComplex.embed (center j)‖ ≤ (radius j : ℝ)) : False := by
  have hgap := center_gap T center radius hg i j hne
  have htri : ‖QComplex.embed (center i) - QComplex.embed (center j)‖ ≤
      (radius i : ℝ) + (radius j : ℝ) := by
    calc
      _ ≤ ‖QComplex.embed (center i) - z‖ + ‖z - QComplex.embed (center j)‖ :=
        by
          have he : QComplex.embed (center i) - QComplex.embed (center j) =
              (QComplex.embed (center i) - z) + (z - QComplex.embed (center j)) := by ring
          rw [he]
          exact norm_add_le _ _
      _ ≤ _ := add_le_add (by simpa only [norm_sub_rev] using hi) hj
  exact (not_le_of_gt hgap) htri

/-- Any selected witnesses in these disks are distinct, irrespective of how selected. -/
theorem witnesses_injective (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ)
    (hg : Admissible T center radius) (z : Fin k → ℂ)
    (hz : ∀ i, ‖z i - QComplex.embed (center i)‖ ≤ (radius i : ℝ)) :
    Function.Injective z := by
  intro i j he
  by_contra hne
  exact not_in_two_balls T center radius hg i j hne (z i) (hz i) (by rw [he]; exact hz j)

end GRWTSK.Analysis.Complex.RationalDiskSeparation
