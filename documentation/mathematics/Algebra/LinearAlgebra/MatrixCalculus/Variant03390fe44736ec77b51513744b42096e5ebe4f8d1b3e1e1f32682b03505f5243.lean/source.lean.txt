import Calculus

namespace FormalResearch.MutationGame
open scoped BigOperators

/-- An identity matrix with the selected mutation row replaced. -/
def mutationMatrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    Matrix (Fin n) (Fin n) ℤ :=
  Matrix.updateRow 1 i (fun k => if k = i then -1 else A i k)

theorem mutationMatrix_mulVec {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (i : Fin n) (x : Population n) : (mutationMatrix A i).mulVec x = mutate A i x := by
  funext j
  by_cases h : j = i
  · subst j
    simp only [mutationMatrix, Matrix.mulVec, Matrix.updateRow_self, mutate]
    change (∑ k, (if k = i then -1 else A i k) * x k) =
      -x i + ∑ k ∈ Finset.univ.erase i, A i k * x k
    rw [← Finset.sum_erase_add _ _ (Finset.mem_univ i)]
    have hs : (∑ k ∈ Finset.univ.erase i, (if k = i then -1 else A i k) * x k) =
        ∑ k ∈ Finset.univ.erase i, A i k * x k := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [if_neg (Finset.mem_erase.mp hk).1]
    rw [hs]
    simp
    ring
  · simp [mutationMatrix, Matrix.updateRow_apply, h, mutate, Matrix.mulVec,
      dotProduct, Matrix.one_apply]

theorem mutationMatrix_sq {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    mutationMatrix A i * mutationMatrix A i = 1 := by
  apply Matrix.ext_iff_mulVec.mpr
  intro x
  rw [← Matrix.mulVec_mulVec, mutationMatrix_mulVec, mutationMatrix_mulVec,
    mutate_involutive A i, Matrix.one_mulVec]

theorem mutationMatrix_det {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    (mutationMatrix A i).det = -1 := by
  have hs : (fun k => if k = i then -1 else A i k) =
      ∑ k, (if k = i then -1 else A i k) • (1 : Matrix (Fin n) (Fin n) ℤ) k := by
    funext j
    rw [← Matrix.vecMul_eq_sum, Matrix.vecMul_one]
  rw [mutationMatrix, hs, Matrix.det_updateRow_sum]
  simp

/-- Left-to-right words act by reversed matrix multiplication on columns. -/
def wordMatrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) :
    List (Fin n) → Matrix (Fin n) (Fin n) ℤ
  | [] => 1
  | i :: w => wordMatrix A w * mutationMatrix A i

theorem wordMatrix_mulVec {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (w : List (Fin n)) (x : Population n) : (wordMatrix A w).mulVec x = play A w x := by
  induction w generalizing x with
  | nil => simp [wordMatrix]
  | cons i w ih =>
    rw [wordMatrix, ← Matrix.mulVec_mulVec, mutationMatrix_mulVec, ih, play_cons]

theorem wordMatrix_append {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (u v : List (Fin n)) : wordMatrix A (u ++ v) = wordMatrix A v * wordMatrix A u := by
  apply Matrix.ext_iff_mulVec.mpr
  intro x
  rw [wordMatrix_mulVec, play_append, ← Matrix.mulVec_mulVec,
    wordMatrix_mulVec, wordMatrix_mulVec]

theorem wordMatrix_reverse {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (w : List (Fin n)) : wordMatrix A w.reverse * wordMatrix A w = 1 := by
  apply Matrix.ext_iff_mulVec.mpr
  intro x
  rw [← Matrix.mulVec_mulVec, wordMatrix_mulVec, wordMatrix_mulVec, play_reverse,
    Matrix.one_mulVec]

end FormalResearch.MutationGame
