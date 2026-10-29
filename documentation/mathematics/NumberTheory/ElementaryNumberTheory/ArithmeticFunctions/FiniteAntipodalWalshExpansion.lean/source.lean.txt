import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite product expansion for antipodal Walsh characters

A separate, arithmetic-independent proof draft. The result is purely
finite commutative-ring algebra and does not establish Chowla.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.FiniteAntipodalWalshExpansion

open scoped BigOperators

/-- Expand a finite product of (1-f(h)) into all subset characters,
including the empty subset. -/
theorem product_one_sub_eq_powerset_sum
    {R : Type*} [CommRing R] (H : Finset ℕ) (f : ℕ → R) :
    (∏ h ∈ H, (1 - f h)) =
      ∑ S ∈ H.powerset, (-1 : R) ^ S.card * ∏ h ∈ S, f h := by
  classical
  induction H using Finset.induction_on with
  | empty =>
      simp
  | @insert h H hh ih =>
      rw [Finset.prod_insert hh, ih, Finset.powerset_insert]
      rw [Finset.sum_disjUnion]
      have hmap :
          (∑ S ∈ H.powerset.image (Finset.insert h),
            (-1 : R) ^ S.card * ∏ j ∈ S, f j) =
          ∑ S ∈ H.powerset,
            (-1 : R) ^ (S.card + 1) * (f h * ∏ j ∈ S, f j) := by
        rw [Finset.sum_image]
        · apply Finset.sum_congr rfl
          intro S hS
          have hnot : h ∉ S := by
            have hsub := Finset.mem_powerset.mp hS
            exact fun hs => hh (hsub hs)
          simp [Finset.card_insert_of_not_mem hnot,
            Finset.prod_insert hnot, mul_assoc, mul_comm, mul_left_comm]
        · intro S hS T hT heq
          exact Finset.insert_inj hh hh |>.mp heq
      rw [hmap]
      simp only [Finset.sum_add_distrib, Finset.mul_sum]
      ring

end GRWTSK.NumberTheory.FiniteAntipodalWalshExpansion
