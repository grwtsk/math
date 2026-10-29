import GRWTSK.Algebra.QuarticMatchingAction

/-!
# Equivariance of the three quartic matching weights

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The weight of an unordered perfect matching is the sum, over its edges,
of the product of the two root labels. Relabeling the matching and
relabeling the roots in the opposite direction are equivalent.
This is an all-characteristic commutative-ring identity; the definition
does not require distinct roots or a splitting extension.
-/

namespace GRWTSK.Algebra.QuarticMatchingWeight

open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.PolygonalQuarticDescent

noncomputable section
variable {R : Type*} [CommRing R]

def matchingWeight (r : Fin 4 → R) (m : Finset (Finset (Fin 4))) : R :=
  ∑ e ∈ m, ∏ i ∈ e, r i

/-- The combinatorial weight of a relabeled matching agrees with
the original matching evaluated on relabeled root coordinates. -/
theorem matchingWeight_relabel (r : Fin 4 → R)
    (σ : Equiv.Perm (Fin 4)) (m : Finset (Finset (Fin 4))) :
    matchingWeight r (relabel σ m) =
      matchingWeight (fun i => r (σ i)) m := by
  classical
  unfold matchingWeight relabel
  rw [Finset.sum_image]
  · congr 1
    funext e
    rw [Finset.prod_image]
    · rfl
    · exact σ.injective
  · intro e he f hf hef
    exact Finset.image_injective σ.injective hef

/-- The first matching weight is the first pairing expression. -/
theorem matchingWeight_first (a b c d : R) :
    matchingWeight ![a,b,c,d] matching01_23 = qOne a b c d := by
  simp [matchingWeight, matching01_23, pair, qOne]
  ring

theorem matchingWeight_second (a b c d : R) :
    matchingWeight ![a,b,c,d] matching02_13 = qTwo a b c d := by
  simp [matchingWeight, matching02_13, pair, qTwo]
  ring

theorem matchingWeight_third (a b c d : R) :
    matchingWeight ![a,b,c,d] matching03_12 = qThree a b c d := by
  simp [matchingWeight, matching03_12, pair, qThree]
  ring


/-- Equivariance applied to the actual four-root enumeration of a
quartic in a field extension. This requires no separability; if the
roots repeat, the weight map need not be injective. -/
theorem actual_quartic_matching_weight_relabel
    {K L : Type*} [Field K] [Field L] [Algebra K L]
    (p : K[X])
    (e : GRWTSK.Algebra.PolygonalQuarticSplitting.QuarticRootEnumeration (L := L) p)
    (σ : Equiv.Perm (Fin 4)) (m : Finset (Finset (Fin 4))) :
    matchingWeight e.r (relabel σ m) =
      matchingWeight (fun i => e.r (σ i)) m :=
  matchingWeight_relabel e.r σ m

end
end GRWTSK.Algebra.QuarticMatchingWeight
