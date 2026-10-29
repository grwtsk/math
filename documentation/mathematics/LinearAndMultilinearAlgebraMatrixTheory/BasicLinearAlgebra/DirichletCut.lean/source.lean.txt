/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Finite spectral and dimension facts retain Mathlib authorship and licenses. -/
import GRWTSK.Spectral.SturmianFiniteVolume

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Spectral.DirichletCut

open Matrix GRWTSK.Spectral.MatrixCountComparison
open GRWTSK.Spectral.SturmianFiniteVolume

/-- The two symmetric entries of the edge from site c to site c+1.
If either site is outside the volume, the corresponding entry is absent. -/
def joiningEdge (N c : ℕ) : Matrix (Fin N) (Fin N) ℝ := fun i j =>
  (if i.val = c ∧ j.val = c+1 then 1 else 0) +
  (if i.val = c+1 ∧ j.val = c then 1 else 0)

def boundaryFunctional (N c : ℕ) : EuclideanSpace ℝ (Fin N) →ₗ[ℝ] ℝ where
  toFun v := ∑ i, if i.val = c then v i else 0
  map_add' v w := by
    change (∑ i, if i.val = c then v i+w i else 0) =
      (∑ i, if i.val = c then v i else 0) + ∑ i, if i.val = c then w i else 0
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    split_ifs <;> simp
  map_smul' a v := by
    change (∑ i, if i.val = c then a*v i else 0) = a*∑ i, if i.val = c then v i else 0
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    split_ifs <;> simp

def boundaryCoordinates (N c : ℕ) : EuclideanSpace ℝ (Fin N) →ₗ[ℝ] ℝ × ℝ :=
  (boundaryFunctional N c).prod (boundaryFunctional N (c+1))

def boundarySynthesis (N c : ℕ) : (ℝ × ℝ) →ₗ[ℝ] EuclideanSpace ℝ (Fin N) where
  toFun x := WithLp.toLp 2 (fun i =>
    (if i.val = c then x.2 else 0) + (if i.val = c+1 then x.1 else 0))
  map_add' x y := by
    ext i
    change ((if _ then x.2+y.2 else 0) + (if _ then x.1+y.1 else 0)) =
      ((if _ then x.2 else 0) + (if _ then x.1 else 0)) +
      ((if _ then y.2 else 0) + (if _ then y.1 else 0))
    split_ifs <;> ring
  map_smul' a x := by
    ext i
    change ((if _ then a*x.2 else 0) + (if _ then a*x.1 else 0)) =
      a*((if _ then x.2 else 0) + (if _ then x.1 else 0))
    split_ifs <;> ring

theorem joiningEdge_isHermitian (N c : ℕ) : (joiningEdge N c).IsHermitian := by
  ext i j
  simp [joiningEdge, conjTranspose_apply, and_comm, add_comm]

theorem joiningEdge_mulVec (N c : ℕ) (v : Fin N → ℝ) (i : Fin N) :
    (joiningEdge N c).mulVec v i =
      (if i.val = c then ∑ j, if j.val = c+1 then v j else 0 else 0) +
      (if i.val = c+1 then ∑ j, if j.val = c then v j else 0 else 0) := by
  simp only [joiningEdge, Matrix.mulVec, dotProduct, add_mul, Finset.sum_add_distrib]
  by_cases hi : i.val = c <;> by_cases hj : i.val = c+1 <;> simp [hi, hj, ite_mul]

/-- An explicit factorization through both endpoint coordinates pays rank two. -/
theorem joiningEdge_factor (N c : ℕ) :
    (joiningEdge N c).toEuclideanLin =
      (boundarySynthesis N c).comp (boundaryCoordinates N c) := by
  ext v i
  simp [Matrix.toLpLin_apply, joiningEdge_mulVec, boundarySynthesis,
    boundaryCoordinates, boundaryFunctional]

theorem joiningEdge_rank_le_two (N c : ℕ) :
    Module.finrank ℝ (LinearMap.range (joiningEdge N c).toEuclideanLin) ≤ 2 := by
  rw [joiningEdge_factor]
  apply (Submodule.finrank_mono (LinearMap.range_comp_le_range
    (boundaryCoordinates N c) (boundarySynthesis N c))).trans
  simpa using (boundarySynthesis N c).finrank_range_le

/-- Remove exactly the joining edge from the literal finite Sturmian matrix. -/
def cutHamiltonian (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (c : ℕ) :
    Matrix (Fin N) (Fin N) ℝ := hamiltonian N α V ξ origin - joiningEdge N c

theorem cutHamiltonian_isHermitian (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (c : ℕ) :
    (cutHamiltonian N α V ξ origin c).IsHermitian :=
  (hamiltonian_isHermitian N α V ξ origin).sub (joiningEdge_isHermitian N c)

def cutCount (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (c : ℕ) (E : ℝ) : ℕ :=
  eigenvalueCount (cutHamiltonian_isHermitian N α V ξ origin c) E

theorem cut_count_error (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (c : ℕ) (E : ℝ) :
    |(cutCount N α V ξ origin c E : ℝ) - (sturmianCount N α V ξ origin E : ℝ)| ≤ 2 := by
  have h := eigenvalueCount_difference_bounds_of_kernel
    (hamiltonian_isHermitian N α V ξ origin)
    (cutHamiltonian_isHermitian N α V ξ origin c) (boundaryCoordinates N c)
    (by
      intro v hv
      have he : (joiningEdge N c).toEuclideanLin v = 0 := by
        rw [joiningEdge_factor, LinearMap.comp_apply, hv, map_zero]
      change (hamiltonian N α V ξ origin).toEuclideanLin v =
        (hamiltonian N α V ξ origin - joiningEdge N c).toEuclideanLin v
      simp only [Matrix.toEuclideanLin, map_sub, LinearMap.sub_apply]
      change _ = _ - (joiningEdge N c).toEuclideanLin v
      rw [he, sub_zero]) E
  simpa [cutCount, sturmianCount] using h

/-- Reindexing the actual cut gives the two consecutive restrictions, with
the second origin shifted by the full first volume. -/
theorem cutHamiltonian_reindex (N M : ℕ) (hN : 0 < N)
    (α V ξ : ℝ) (origin : ℤ) :
    Matrix.reindex (finSumFinEquiv : Fin N ⊕ Fin M ≃ Fin (N+M)).symm
      (finSumFinEquiv : Fin N ⊕ Fin M ≃ Fin (N+M)).symm
      (cutHamiltonian (N+M) α V ξ origin (N-1)) =
    Matrix.fromBlocks (hamiltonian N α V ξ origin) 0 0
      (hamiltonian M α V ξ (origin+(N:ℤ))) := by
  ext i j
  rcases i with i | i <;> rcases j with j | j
  all_goals
    simp only [Matrix.reindex_apply, Matrix.submatrix_apply, Equiv.symm_symm,
      finSumFinEquiv_apply_left, finSumFinEquiv_apply_right,
      Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂,
      Matrix.fromBlocks_apply₂₁, Matrix.fromBlocks_apply₂₂,
      cutHamiltonian, hamiltonian, Matrix.sub_apply, Matrix.add_apply,
      Matrix.diagonal_apply, freeDirichlet, joiningEdge,
      Fin.val_castAdd, Fin.val_natAdd, Matrix.zero_apply]
  · have hi := i.isLt
    have hj := j.isLt
    have hc : N-1+1 = N := by omega
    have hn : ¬j.val = N-1+1 := by omega
    have hn' : ¬i.val = N-1+1 := by omega
    simp [hn, hn', Fin.castAdd_inj]
  · have hi := i.isLt
    have hj := j.isLt
    have hne : Fin.castAdd M i ≠ Fin.natAdd N j := by
      intro h
      have := congrArg Fin.val h
      simp only [Fin.val_castAdd, Fin.val_natAdd] at this
      omega
    simp only [if_neg hne]
    split_ifs <;> simp_all
    all_goals omega
  · have hi := i.isLt
    have hj := j.isLt
    have hne : Fin.natAdd N i ≠ Fin.castAdd M j := by
      intro h
      have := congrArg Fin.val h
      simp only [Fin.val_castAdd, Fin.val_natAdd] at this
      omega
    simp only [if_neg hne]
    split_ifs <;> simp_all
    all_goals omega
  · have hi := i.isLt
    have hj := j.isLt
    have hn : ¬N+j.val = N-1 := by omega
    have hn' : ¬N+i.val = N-1 := by omega
    simp [hn, hn', Fin.natAdd_inj, Nat.cast_add, add_assoc]

theorem cut_charpoly (N M : ℕ) (hN : 0 < N) (α V ξ : ℝ) (origin : ℤ) :
    (cutHamiltonian (N+M) α V ξ origin (N-1)).charpoly =
      (hamiltonian N α V ξ origin).charpoly *
      (hamiltonian M α V ξ (origin+(N:ℤ))).charpoly := by
  rw [← Matrix.charpoly_reindex
    (finSumFinEquiv : Fin N ⊕ Fin M ≃ Fin (N+M)).symm,
    cutHamiltonian_reindex N M hN, Matrix.charpoly_fromBlocks_zero₁₂]

theorem cutCount_eq_sum (N M : ℕ) (hN : 0 < N)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    cutCount (N+M) α V ξ origin (N-1) E =
      sturmianCount N α V ξ origin E +
      sturmianCount M α V ξ (origin+(N:ℤ)) E :=
  eigenvalueCount_add_of_charpoly_mul (hamiltonian_isHermitian N α V ξ origin)
    (hamiltonian_isHermitian M α V ξ (origin+(N:ℤ)))
    (cutHamiltonian_isHermitian (N+M) α V ξ origin (N-1))
    (cut_charpoly N M hN α V ξ origin) E

/-- Almost additivity for the actual inclusive counts of consecutive volumes. -/
theorem adjacent_count_error (N M : ℕ) (hN : 0 < N)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |(sturmianCount N α V ξ origin E : ℝ) +
      (sturmianCount M α V ξ (origin+(N:ℤ)) E : ℝ) -
      (sturmianCount (N+M) α V ξ origin E : ℝ)| ≤ 2 := by
  have h := cut_count_error (N+M) α V ξ origin (N-1) E
  rw [cutCount_eq_sum N M hN, Nat.cast_add] at h
  exact h

theorem adjacent_normalized_count_error (N M : ℕ) (hN : 0 < N)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |((sturmianCount N α V ξ origin E : ℝ) +
        (sturmianCount M α V ξ (origin+(N:ℤ)) E : ℝ)) / (N+M:ℕ) -
      sturmianNormalizedCount (N+M) α V ξ origin E| ≤ 2/(N+M:ℕ) := by
  rw [sturmianNormalizedCount, ← sub_div, abs_div]
  have hd : (0:ℝ) ≤ (N+M:ℕ) := Nat.cast_nonneg (N+M)
  rw [abs_of_nonneg hd]
  exact div_le_div_of_nonneg_right (adjacent_count_error N M hN α V ξ origin E)
    (Nat.cast_nonneg (N+M))

end GRWTSK.Spectral.DirichletCut
