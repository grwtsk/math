import Mathlib.Analysis.Matrix.Order
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic
/-! Exact positive-Gram obstruction for #244. Direction grwtsk contributors;
scratch formalization OpenAI Codex. Generic finite guard, no xi positivity. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CyclicPhase
open Matrix
open scoped Matrix MatrixOrder

def gramPlus : Matrix (Fin 3) (Fin 3) ℝ :=
  !![1,1/4,1/4;1/4,1,1/4;1/4,1/4,1]
def gramMinus : Matrix (Fin 3) (Fin 3) ℝ :=
  !![1,1/4,-1/4;1/4,1,1/4;-1/4,1/4,1]
def pairwiseProfile (G : Matrix (Fin 3) (Fin 3) ℝ) : Fin 3 → Fin 3 → ℝ :=
  fun i j => (G i j)^2
def tripleCycle (G : Matrix (Fin 3) (Fin 3) ℝ) : ℝ := G 0 1*G 1 2*G 2 0

theorem gramPlus_hermitian : gramPlus.IsHermitian := by
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [gramPlus, Matrix.conjTranspose]
theorem gramMinus_hermitian : gramMinus.IsHermitian := by
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [gramMinus, Matrix.conjTranspose]

theorem gramPlus_energy (x : Fin 3 → ℝ) :
    star x ⬝ᵥ (gramPlus*ᵥx) =
      3/4*(x 0^2+x 1^2+x 2^2)+1/4*(x 0+x 1+x 2)^2 := by
  simp [gramPlus, dotProduct, Matrix.mulVec, Fin.sum_univ_succ]
  ring

theorem gramMinus_energy (x : Fin 3 → ℝ) :
    star x ⬝ᵥ (gramMinus*ᵥx) =
      1/2*(x 0^2+x 1^2+x 2^2)+
      1/4*((x 0+x 1)^2+(x 1+x 2)^2+(x 2-x 0)^2) := by
  simp [gramMinus, dotProduct, Matrix.mulVec, Fin.sum_univ_succ]
  ring

private theorem sum_sq_pos {x : Fin 3 → ℝ} (hx : x≠0) :
    0<x 0^2+x 1^2+x 2^2 := by
  have hs : 0≤x 0^2+x 1^2+x 2^2 := by positivity
  by_contra hn
  have he : x 0^2+x 1^2+x 2^2=0 := by linarith
  have h0 : x 0=0 := by nlinarith [sq_nonneg (x 1),sq_nonneg (x 2)]
  have h1 : x 1=0 := by nlinarith [sq_nonneg (x 0),sq_nonneg (x 2)]
  have h2 : x 2=0 := by nlinarith [sq_nonneg (x 0),sq_nonneg (x 1)]
  apply hx
  ext i
  fin_cases i <;> simp [h0,h1,h2]

theorem gramPlus_posDef : gramPlus.PosDef := by
  apply Matrix.PosDef.of_dotProduct_mulVec_pos gramPlus_hermitian
  intro x hx
  rw [gramPlus_energy]
  nlinarith [sum_sq_pos hx,sq_nonneg (x 0+x 1+x 2)]
theorem gramMinus_posDef : gramMinus.PosDef := by
  apply Matrix.PosDef.of_dotProduct_mulVec_pos gramMinus_hermitian
  intro x hx
  rw [gramMinus_energy]
  nlinarith [sum_sq_pos hx,sq_nonneg (x 0+x 1),sq_nonneg (x 1+x 2),sq_nonneg (x 2-x 0)]

theorem positive_gram_factor {G : Matrix (Fin 3) (Fin 3) ℝ} (hG : G.PosDef) :
    ∃ B : Matrix (Fin 3) (Fin 3) ℝ, G=B.transpose*B := by
  obtain ⟨B,hB⟩ := CStarAlgebra.nonneg_iff_eq_star_mul_self.mp hG.posSemidef.nonneg
  refine ⟨B,?_⟩
  simpa only [Matrix.star_eq_conjTranspose, Matrix.conjTranspose_eq_transpose_of_trivial] using hB

theorem gramPlus_realizable : ∃ B : Matrix (Fin 3) (Fin 3) ℝ, gramPlus=B.transpose*B :=
  positive_gram_factor gramPlus_posDef
theorem gramMinus_realizable : ∃ B : Matrix (Fin 3) (Fin 3) ℝ, gramMinus=B.transpose*B :=
  positive_gram_factor gramMinus_posDef

theorem diagonals_equal : ∀ i, gramPlus i i=gramMinus i i := by
  intro i
  fin_cases i <;> norm_num [gramPlus,gramMinus]
theorem pairwise_equal : pairwiseProfile gramPlus=pairwiseProfile gramMinus := by
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [pairwiseProfile,gramPlus,gramMinus]
theorem triple_plus : tripleCycle gramPlus=(1/64 : ℝ) := by
  norm_num [tripleCycle,gramPlus]
theorem triple_minus : tripleCycle gramMinus=-(1/64 : ℝ) := by
  norm_num [tripleCycle,gramMinus]
theorem triple_distinct : tripleCycle gramPlus≠tripleCycle gramMinus := by
  rw [triple_plus,triple_minus]
  norm_num

theorem det_plus : gramPlus.det=(27/32 : ℝ) := by
  norm_num [gramPlus,Matrix.det_fin_three]
theorem det_minus : gramMinus.det=(25/32 : ℝ) := by
  norm_num [gramMinus,Matrix.det_fin_three]
theorem det_distinct : gramPlus.det≠gramMinus.det := by
  rw [det_plus,det_minus]
  norm_num

theorem no_pairwise_triple_decoder :
    ¬∃ f : (Fin 3→Fin 3→ℝ)→ℝ, ∀ G : Matrix (Fin 3) (Fin 3) ℝ,
      G.PosDef → f (pairwiseProfile G)=tripleCycle G := by
  rintro ⟨f,hf⟩
  have hp := hf gramPlus gramPlus_posDef
  have hm := hf gramMinus gramMinus_posDef
  rw [pairwise_equal] at hp
  exact triple_distinct (hp.symm.trans hm)

theorem no_pairwise_determinant_decoder :
    ¬∃ f : (Fin 3→Fin 3→ℝ)→ℝ, ∀ G : Matrix (Fin 3) (Fin 3) ℝ,
      G.PosDef → f (pairwiseProfile G)=G.det := by
  rintro ⟨f,hf⟩
  have hp := hf gramPlus gramPlus_posDef
  have hm := hf gramMinus gramMinus_posDef
  rw [pairwise_equal] at hp
  exact det_distinct (hp.symm.trans hm)

#print axioms gramPlus
#print axioms gramMinus
#print axioms pairwiseProfile
#print axioms tripleCycle
#print axioms gramPlus_hermitian
#print axioms gramMinus_hermitian
#print axioms gramPlus_energy
#print axioms gramMinus_energy
#print axioms gramPlus_posDef
#print axioms gramMinus_posDef
#print axioms positive_gram_factor
#print axioms gramPlus_realizable
#print axioms gramMinus_realizable
#print axioms diagonals_equal
#print axioms pairwise_equal
#print axioms triple_plus
#print axioms triple_minus
#print axioms triple_distinct
#print axioms det_plus
#print axioms det_minus
#print axioms det_distinct
#print axioms no_pairwise_triple_decoder
#print axioms no_pairwise_determinant_decoder
end ContinuousResearch.CyclicPhase
