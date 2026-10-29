import FormalResearch.PositiveAtlas.Grassmannian.FiniteOrder
import FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition

/-!
# Signed finite Cauchy--Binet and bounded-order closure

An all-functions version avoids quotienting permutations of the intermediate
column selection. Noninjective selections contribute zero. Sorting an injective
selection produces the SAME permutation sign in both determinants, so their
product is nonnegative. No individual determinant is replaced by its magnitude.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian.Toeplitz

noncomputable section

/-- Precomposition by a permutation is a bijection of the finite index maps. -/
def precomposeEquiv {k N : ℕ} (σ : Equiv.Perm (Fin k)) :
    (Fin k → Fin N) ≃ (Fin k → Fin N) where
  toFun f := f ∘ σ
  invFun f := f ∘ σ.symm
  left_inv f := by funext i; simp
  right_inv f := by funext i; simp

/-- Multilinearity expands a rectangular product over all intermediate functions. -/
theorem det_rectangular_expansion {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ) (B : Matrix (Fin N) (Fin k) ℝ) :
    Matrix.det (A * B) =
      ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) * ∏ i, B (f i) i := by
  simp only [Matrix.det_apply', Matrix.mul_apply,
    Finset.prod_univ_sum, Fintype.piFinset_univ, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro f _
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro σ _
  simp only [Matrix.submatrix_apply, id_eq, Finset.prod_mul_distrib]
  ring

/-- Cauchy--Binet with all intermediate functions and an explicit factorial. -/
theorem cauchyBinet_all_functions {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ) (B : Matrix (Fin N) (Fin k) ℝ) :
    (k.factorial : ℝ) * Matrix.det (A * B) =
      ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) * Matrix.det (B.submatrix f id) := by
  have hσ (σ : Equiv.Perm (Fin k)) :
      (∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) *
          ((Equiv.Perm.sign σ : ℤ) : ℝ) * ∏ i, B (f (σ i)) i) =
        Matrix.det (A * B) := by
    rw [det_rectangular_expansion]
    apply Fintype.sum_equiv (precomposeEquiv σ)
    intro f
    have hd := Matrix.det_permute' σ (A.submatrix id f)
    have he : (A.submatrix id (f ∘ σ)) = (A.submatrix id f).submatrix id σ := rfl
    change Matrix.det (A.submatrix id f) * _ * _ =
      Matrix.det (A.submatrix id (f ∘ σ)) * _
    rw [he, hd]
    change _ = (((Equiv.Perm.sign σ : ℤ) : ℝ) * (A.submatrix id f).det) *
      ∏ i, B (f (σ i)) i
    ring
  symm
  calc
    (∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) * Matrix.det (B.submatrix f id)) =
      ∑ σ : Equiv.Perm (Fin k), ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) *
          ((Equiv.Perm.sign σ : ℤ) : ℝ) * ∏ i, B (f (σ i)) i := by
      conv_lhs =>
        enter [2, f]
        rw [Matrix.det_apply' (B.submatrix f id)]
      simp only [Matrix.submatrix_apply, id_eq, Finset.mul_sum, ← mul_assoc]
      rw [Finset.sum_comm]
    _ = ∑ _σ : Equiv.Perm (Fin k), Matrix.det (A * B) := by
      apply Finset.sum_congr rfl
      intro σ _
      exact hσ σ
    _ = (k.factorial : ℝ) * Matrix.det (A * B) := by
      simp [Fintype.card_perm]

/-- The product associated with an arbitrary intermediate tuple is nonnegative
when the increasing selections in both factors are nonnegative. -/
theorem intermediate_product_nonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ) (B : Matrix (Fin N) (Fin k) ℝ)
    (hA : ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (A.submatrix id I))
    (hB : ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (B.submatrix I id))
    (f : Fin k → Fin N) :
    0 ≤ Matrix.det (A.submatrix id f) * Matrix.det (B.submatrix f id) := by
  by_cases hf : Function.Injective f
  · obtain ⟨I, e, he⟩ := exists_ordered_selection f hf
    have hfe : f = fun j => I (e j) := funext he
    rw [hfe]
    have hleft : Matrix.det (A.submatrix id (fun j => I (e j))) =
        ((Equiv.Perm.sign e : ℤ) : ℝ) * Matrix.det (A.submatrix id I) :=
      Matrix.det_permute' e (A.submatrix id I)
    have hright : Matrix.det (B.submatrix (fun j => I (e j)) id) =
        ((Equiv.Perm.sign e : ℤ) : ℝ) * Matrix.det (B.submatrix I id) :=
      Matrix.det_permute e (B.submatrix I id)
    rw [hleft, hright]
    have h := mul_nonneg (sq_nonneg (((Equiv.Perm.sign e : ℤ) : ℝ)))
      (mul_nonneg (hA I) (hB I))
    nlinarith only [h]
  · have hz : Matrix.det (A.submatrix id f) = 0 :=
      columnMinor_eq_zero_of_not_injective A f hf
    rw [hz, zero_mul]

/-- Ordered-minor nonnegativity through R is closed under actual matrix products. -/
theorem nonnegativeThrough_mul {R N : ℕ} (A B : Matrix (Fin N) (Fin N) ℝ)
    (hA : NonnegativeThrough R A) (hB : NonnegativeThrough R B) :
    NonnegativeThrough R (A * B) := by
  intro k hk r c
  let L : Matrix (Fin k) (Fin N) ℝ := A.submatrix r id
  let U : Matrix (Fin N) (Fin k) ℝ := B.submatrix id c
  have hm : (fun i j => (A * B) (r i) (c j)) = L * U := by
    ext i j
    simp [L, U, Matrix.mul_apply]
  rw [hm]
  have hs : 0 ≤ ∑ f : Fin k → Fin N,
      Matrix.det (L.submatrix id f) * Matrix.det (U.submatrix f id) := by
    apply Finset.sum_nonneg
    intro f _
    apply intermediate_product_nonnegative L U
    · intro I
      exact hA k hk r I
    · intro I
      exact hB k hk I c
  rw [← cauchyBinet_all_functions] at hs
  exact (mul_nonneg_iff_of_pos_left (by positivity : 0 < (k.factorial : ℝ))).mp hs

/-- Ordinary power-series coefficient convolution; this is NOT Dirichlet convolution. -/
def convolution (a b : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ l : Fin (n + 1), a l.val * b (n - l.val)

/-- Upper-triangular support makes coefficient convolution a finite matrix product. -/
theorem block_convolution (a b : ℕ → ℝ) (N : ℕ) :
    block (convolution a b) N = block a N * block b N := by
  ext i j
  rw [Matrix.mul_apply]
  by_cases hij : i.val ≤ j.val
  · have ht : (∑ l : Fin N, block a N i l * block b N l j) =
        ∑ l ∈ (Finset.univ.filter (fun l : Fin N => i.val ≤ l.val ∧ l.val ≤ j.val)),
          block a N i l * block b N l j := by
      symm
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro l _ hl
      have hn : ¬ (i.val ≤ l.val ∧ l.val ≤ j.val) := by simpa using hl
      by_cases h1 : i.val ≤ l.val <;> by_cases h2 : l.val ≤ j.val <;>
        simp_all [block, entry]
    rw [ht]
    simp only [block, entry, if_pos hij, convolution]
    symm
    apply Finset.sum_bij (fun l hl =>
      (⟨l.val - i.val, by
        have hh := (Finset.mem_filter.mp hl).2
        omega⟩ : Fin (j.val - i.val + 1)))
    · intro l hl
      exact Finset.mem_univ _
    · intro l hl m hm he
      have hli := (Finset.mem_filter.mp hl).2.1
      have hmi := (Finset.mem_filter.mp hm).2.1
      apply Fin.ext
      have hv := congrArg Fin.val he
      dsimp at hv
      omega
    · intro t _
      let l : Fin N := ⟨i.val + t.val, by have ht := t.isLt; have hj := j.isLt; omega⟩
      refine ⟨l, ?_, ?_⟩
      · simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        dsimp [l]
        have ht := t.isLt
        omega
      · apply Fin.ext
        dsimp [l]
        omega
    · intro l hl
      have hh := (Finset.mem_filter.mp hl).2
      simp only [if_pos hh.1, if_pos hh.2]
      congr 1
      congr 1
      omega
  · change (if i.val ≤ j.val then convolution a b (j.val - i.val) else 0) = _
    rw [if_neg hij]
    symm
    apply Finset.sum_eq_zero
    intro l _
    by_cases h1 : i.val ≤ l.val
    · have h2 : ¬ l.val ≤ j.val := fun h2 => hij (h1.trans h2)
      simp only [block, entry, if_neg h2, mul_zero]
    · simp only [block, entry, if_neg h1, zero_mul]

/-- Bounded-order PF is closed under finite coefficient convolution. -/
theorem PFOrder.convolution {R : ℕ} {a b : ℕ → ℝ}
    (ha : PFOrder R a) (hb : PFOrder R b) : PFOrder R (convolution a b) := by
  apply (pfOrder_iff_blocks R _).mpr
  intro N
  rw [block_convolution]
  exact nonnegativeThrough_mul _ _ ((pfOrder_iff_blocks R a).mp ha N)
    ((pfOrder_iff_blocks R b).mp hb N)

end

end FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
