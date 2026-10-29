import GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds

/-!
Research direction: grwtsk contributors.
Implementation prepared with ChatGPT assistance. Ordinary mathematical lemmas
and Mathlib retain their authorship. Kernel compilation has not been run for
this additive source. No arithmetic growth hypothesis is asserted.
-/

noncomputable section
namespace GRWTSK.Analysis.HankelGram
open scoped BigOperators

/-- Literal coefficient rows, not freely chosen replacement vectors. -/
def row (c : ℕ → ℂ) (n : ℕ) (i : Fin n) : EuclideanSpace ℂ (Fin n) :=
  WithLp.toLp 2 (fun j => c (i.val+j.val+1))

/-- Reuse the existing weighted Gram theorem on the actual Hankel rows.
The entire row inequality is still a premise, not an arithmetic theorem. -/
theorem synthesis_bound (c : ℕ → ℂ) (n : ℕ) (a : Fin n → ℂ)
    (w : Fin n → ℝ) {B : ℝ} (hw : ∀ i, 0 < w i)
    (hrow : ∀ i, ∑ j, ‖inner ℂ (row c n i) (row c n j)‖ * w j ≤ B*w i) :
    ‖∑ i, a i • row c n i‖^2 ≤ B * ∑ i, ‖a i‖^2 := by
  exact EulerP04RH.WeightedGram.synthesis_of_weighted_gram_rows
    Finset.univ (row c n) a w (fun i _ => hw i) (fun i _ => hrow i)

end GRWTSK.Analysis.HankelGram
#print axioms GRWTSK.Analysis.HankelGram.synthesis_bound
