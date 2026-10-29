/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.WeightedInventoryDeficit

set_option autoImplicit false

/-!
# Credited mass and four distinct missing source points

Reuse the SAME mass and exact complement partition. The four points must be
pairwise distinct, inside the complete source, and outside the credited set.
Their weights need not agree. This supplies a four-point consumer, not a
symmetry, a source-completeness certificate, or an analytic count supplier.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Combinatorics.WeightedInventoryQuartet

open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.Combinatorics.WeightedInventoryDeficit
open scoped BigOperators

variable {α : Type*} [DecidableEq α]

/-- A disjoint missing subset contributes beyond the already credited subset. -/
theorem known_add_missing_le_mass (source known missing : Finset α) (weight : α → ℕ)
    (knownSubset : known ⊆ source) (missingSubset : missing ⊆ source)
    (separate : Disjoint known missing) :
    mass known weight + mass missing weight ≤ mass source weight := by
  have subset : missing ⊆ source \ known := by
    intro x hx
    refine Finset.mem_sdiff.mpr ⟨missingSubset hx, ?_⟩
    intro hk
    exact Finset.disjoint_left.mp separate hk hx
  have bound : mass missing weight ≤ mass (source \ known) weight :=
    Finset.sum_le_sum_of_subset_of_nonneg subset
      (fun x _ _ => Nat.zero_le (weight x))
  have partition := mass_partition source known weight knownSubset
  omega

/-- All six inequalities are needed: four labels are not automatically four points. -/
theorem known_add_four_le_mass (source known : Finset α) (weight : α → ℕ)
    (knownSubset : known ⊆ source) (a b c d : α)
    (ha : a ∈ source) (hb : b ∈ source) (hc : c ∈ source) (hd : d ∈ source)
    (na : a ∉ known) (nb : b ∉ known) (nc : c ∉ known) (nd : d ∉ known)
    (ab : a ≠ b) (ac : a ≠ c) (ad : a ≠ d)
    (bc : b ≠ c) (bd : b ≠ d) (cd : c ≠ d) :
    mass known weight + weight a + weight b + weight c + weight d ≤ mass source weight := by
  have subset : ({a, b, c, d} : Finset α) ⊆ source := by
    intro x hx
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with rfl | rfl | rfl | rfl
    · exact ha
    · exact hb
    · exact hc
    · exact hd
  have separate : Disjoint known ({a, b, c, d} : Finset α) := by
    apply Finset.disjoint_left.mpr
    intro x hx hq
    simp only [Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact na hx
    · exact nb hx
    · exact nc hx
    · exact nd hx
  have bound := known_add_missing_le_mass source known {a, b, c, d} weight
    knownSubset subset separate
  simpa [mass, ab, ac, ad, bc, bd, cd, add_assoc] using bound

/-- Strictness is sharp at the finite positive-mass level. -/
theorem four_unit_boundary_fixture :
    mass ({0, 1, 2, 3, 4} : Finset ℕ) (fun _ => 1) =
      mass ({0} : Finset ℕ) (fun _ => 1) + 4 ∧
    ¬ mass ({0, 1, 2, 3, 4} : Finset ℕ) (fun _ => 1) <
      mass ({0} : Finset ℕ) (fun _ => 1) + 4 := by
  norm_num [mass]

/-- Fewer than four missing units need not imply a complete inventory. -/
theorem two_missing_units_fixture :
    mass ({0, 1, 2} : Finset ℕ) (fun _ => 1) <
      mass ({0} : Finset ℕ) (fun _ => 1) + 4 ∧
    ¬ ({0, 1, 2} : Finset ℕ) ⊆ {0} := by
  constructor
  · norm_num [mass]
  · intro subset
    have h := subset (by simp : (1 : ℕ) ∈ ({0, 1, 2} : Finset ℕ))
    norm_num at h

/-- Repeated orbit labels collapse before counting, rather than gaining unit weights. -/
theorem collapsed_labels_fixture :
    mass ({0, 1, 0, 1} : Finset ℕ) (fun _ => 1) = 2 := by norm_num [mass]

end GRWTSK.Combinatorics.WeightedInventoryQuartet
