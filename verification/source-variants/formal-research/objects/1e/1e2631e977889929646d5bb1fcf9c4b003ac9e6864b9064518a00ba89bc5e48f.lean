import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Algebra.Order.Star.Real

/-! Optional arbitrary-prefix refinement of the existing #245 generic guard.
The completed PR269 mathematical slice and its acceptance gates are unchanged.
grwtsk contributors: originating research direction; OpenAI Codex: construction.
No actual-Xi failure or source-specific representation theorem is asserted. -/
set_option autoImplicit false
namespace ContinuousResearch.ArbitraryHankelPrefix
open Matrix

/-- Change exactly the first diagonal not seen by the two towers through order d. -/
def changeDiagonal (s : ℕ → ℝ) (d : ℕ) (c : ℝ) (n : ℕ) : ℝ :=
  if n = 2*d+2 then c else s n

theorem other_moments_unchanged (s : ℕ → ℝ) (d : ℕ) (c : ℝ) {n : ℕ}
    (hn : n ≠ 2*d+2) : changeDiagonal s d c n = s n := by
  simp only [changeDiagonal, if_neg hn]

theorem complete_prefix_unchanged (s : ℕ → ℝ) (d : ℕ) (c : ℝ) {n : ℕ}
    (hn : n ≤ 2*d+1) : changeDiagonal s d c n = s n :=
  other_moments_unchanged s d c (by omega)

/-- Preserve any tested shift whose maximum physical moment index precedes 2d+2. -/
theorem tower_unchanged (s : ℕ → ℝ) (d : ℕ) (c : ℝ) {r a : ℕ}
    (hindex : 2*r+a < 2*d+2) :
    Matrix.of (fun i j : Fin (r+1) => changeDiagonal s d c (i.val+j.val+a)) =
      Matrix.of (fun i j : Fin (r+1) => s (i.val+j.val+a)) := by
  funext i j
  exact other_moments_unchanged s d c (by have hi := i.isLt; have hj := j.isLt; omega)

theorem both_towers_unchanged (s : ℕ → ℝ) (d : ℕ) (c : ℝ) {r : ℕ} (hr : r ≤ d) :
    Matrix.of (fun i j : Fin (r+1) => changeDiagonal s d c (i.val+j.val)) =
      Matrix.of (fun i j : Fin (r+1) => s (i.val+j.val)) ∧
    Matrix.of (fun i j : Fin (r+1) => changeDiagonal s d c (i.val+j.val+1)) =
      Matrix.of (fun i j : Fin (r+1) => s (i.val+j.val+1)) := by
  exact ⟨by simpa only [Nat.add_zero] using tower_unchanged s d c (a := 0) (by omega),
    tower_unchanged s d c (a := 1) (by omega)⟩

theorem next_order_last_basis_value (s : ℕ → ℝ) (d : ℕ) (c : ℝ) :
    (Pi.single (Fin.last (d+1)) (1 : ℝ) : Fin (d+2) → ℝ) ⬝ᵥ
      (Matrix.of (fun i j : Fin (d+2) => changeDiagonal s d c (i.val+j.val)) *ᵥ
        (Pi.single (Fin.last (d+1)) 1 : Fin (d+2) → ℝ)) = c := by
  rw [single_dotProduct, mulVec_single_one]
  simp [Matrix.col, changeDiagonal, show d+1+(d+1)=2*d+2 by omega]

theorem next_order_fails (s : ℕ → ℝ) (d : ℕ) {c : ℝ} (hc : c < 0) :
    ¬ Matrix.PosSemidef
      (Matrix.of (fun i j : Fin (d+2) => changeDiagonal s d c (i.val+j.val))) := by
  intro h
  have hn := h.diag_nonneg (i := Fin.last (d+1))
  have he : d+1+(d+1)=2*d+2 := by omega
  simp only [Matrix.of_apply, Fin.val_last, changeDiagonal, he] at hn
  exact (not_le_of_gt hc) hn

/-- Even the next block retains all entries except its final diagonal. -/
theorem next_order_other_entries_unchanged (s : ℕ → ℝ) (d : ℕ) (c : ℝ)
    (i j : Fin (d+2)) (hij : i ≠ Fin.last (d+1) ∨ j ≠ Fin.last (d+1)) :
    changeDiagonal s d c (i.val+j.val) = s (i.val+j.val) := by
  apply other_moments_unchanged
  have hi := i.isLt
  have hj := j.isLt
  rcases hij with hi' | hj'
  · have : i.val ≠ d+1 := by intro h; exact hi' (Fin.ext h)
    omega
  · have : j.val ≠ d+1 := by intro h; exact hj' (Fin.ext h)
    omega

/-- Positivity of the input prefix is an explicit hypothesis, retained exactly. -/
theorem psd_prefix_has_failing_extension (s : ℕ → ℝ) (d : ℕ)
    (hs : ∀ r ≤ d,
      Matrix.PosSemidef (Matrix.of (fun i j : Fin (r+1) => s (i.val+j.val))) ∧
      Matrix.PosSemidef (Matrix.of (fun i j : Fin (r+1) => s (i.val+j.val+1)))) :
    ∃ t : ℕ → ℝ, (∀ n ≤ 2*d+1, t n = s n) ∧
      (∀ r ≤ d,
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r+1) => t (i.val+j.val))) ∧
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r+1) => t (i.val+j.val+1)))) ∧
      ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin (d+2) => t (i.val+j.val))) := by
  refine ⟨changeDiagonal s d (-1), fun _ hn => complete_prefix_unchanged s d (-1) hn,
    ?_, next_order_fails s d (by norm_num)⟩
  intro r hr
  rw [(both_towers_unchanged s d (-1) hr).1, (both_towers_unchanged s d (-1) hr).2]
  exact hs r hr

/-- Strict positive definiteness is preserved when actually supplied for the input prefix. -/
theorem pd_prefix_has_failing_extension (s : ℕ → ℝ) (d : ℕ)
    (hs : ∀ r ≤ d,
      Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => s (i.val+j.val))) ∧
      Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => s (i.val+j.val+1)))) :
    ∃ t : ℕ → ℝ, (∀ n ≤ 2*d+1, t n = s n) ∧
      (∀ r ≤ d,
        Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => t (i.val+j.val))) ∧
        Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => t (i.val+j.val+1)))) ∧
      ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin (d+2) => t (i.val+j.val))) := by
  refine ⟨changeDiagonal s d (-1), fun _ hn => complete_prefix_unchanged s d (-1) hn,
    ?_, next_order_fails s d (by norm_num)⟩
  intro r hr
  rw [(both_towers_unchanged s d (-1) hr).1, (both_towers_unchanged s d (-1) hr).2]
  exact hs r hr

/-- Lower orders are literal principal submatrices, with the same shift a. -/
theorem smaller_order_posDef (s : ℕ → ℝ) {d r : ℕ} (hr : r ≤ d) (a : ℕ)
    (hs : Matrix.PosDef (Matrix.of (fun i j : Fin (d+1) => s (i.val+j.val+a)))) :
    Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => s (i.val+j.val+a))) := by
  let hrd : r+1 ≤ d+1 := Nat.add_le_add_right hr 1
  exact hs.submatrix (Fin.castLE_injective hrd)

/-- It suffices to supply the two actually tested largest strict blocks. -/
theorem largest_pd_blocks_have_failing_extension (s : ℕ → ℝ) (d : ℕ)
    (hs0 : Matrix.PosDef (Matrix.of (fun i j : Fin (d+1) => s (i.val+j.val))))
    (hs1 : Matrix.PosDef (Matrix.of (fun i j : Fin (d+1) => s (i.val+j.val+1)))) :
    ∃ t : ℕ → ℝ, (∀ n ≤ 2*d+1, t n = s n) ∧
      (∀ r ≤ d,
        Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => t (i.val+j.val))) ∧
        Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => t (i.val+j.val+1)))) ∧
      ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin (d+2) => t (i.val+j.val))) := by
  apply pd_prefix_has_failing_extension s d
  intro r hr
  exact ⟨by simpa only [Nat.add_zero] using smaller_order_posDef s hr 0 hs0,
    smaller_order_posDef s hr 1 hs1⟩

#check other_moments_unchanged
#check complete_prefix_unchanged
#check tower_unchanged
#check both_towers_unchanged
#check next_order_last_basis_value
#check next_order_fails
#check next_order_other_entries_unchanged
#check psd_prefix_has_failing_extension
#check pd_prefix_has_failing_extension
#check smaller_order_posDef
#check largest_pd_blocks_have_failing_extension
#check changeDiagonal
#print axioms other_moments_unchanged
#print axioms complete_prefix_unchanged
#print axioms tower_unchanged
#print axioms both_towers_unchanged
#print axioms next_order_last_basis_value
#print axioms next_order_fails
#print axioms next_order_other_entries_unchanged
#print axioms psd_prefix_has_failing_extension
#print axioms pd_prefix_has_failing_extension
#print axioms smaller_order_posDef
#print axioms largest_pd_blocks_have_failing_extension
#print axioms changeDiagonal

end ContinuousResearch.ArbitraryHankelPrefix
