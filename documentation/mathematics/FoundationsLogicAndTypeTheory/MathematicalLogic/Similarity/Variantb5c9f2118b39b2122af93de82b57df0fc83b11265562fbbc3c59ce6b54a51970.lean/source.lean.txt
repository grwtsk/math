import DAF.Rhetorical.Relations.Affinity

/-!
# Symmetric rhetorical similarity

Similarity uses only base-role features.  It is a navigation score and makes
no assertion of logical equivalence.
-/

noncomputable section

namespace DAF.Rhetorical

/-- Cosine-style real similarity of two base-role features.  A null feature
returns `none`. -/
def rhetoricalSimilarity
    (kernel : PositiveKernel RhetoricalIndex)
    (left right : Universe.ConceptId) : Option ℝ :=
  normalizedRealAffinity kernel
    (conceptVector kernel left) (conceptVector kernel right)

/-- Rhetorical similarity is symmetric. -/
theorem rhetoricalSimilarity_comm
    (kernel : PositiveKernel RhetoricalIndex)
    (left right : Universe.ConceptId) :
    rhetoricalSimilarity kernel left right =
      rhetoricalSimilarity kernel right left :=
  normalizedRealAffinity_comm kernel _ _

/-- Every defined rhetorical similarity lies in `[-1,1]`. -/
theorem rhetoricalSimilarity_mem_Icc
    (kernel : PositiveKernel RhetoricalIndex)
    {left right : Universe.ConceptId}
    {score : ℝ}
    (computed : rhetoricalSimilarity kernel left right = some score) :
    score ∈ Set.Icc (-1 : ℝ) 1 :=
  normalizedRealAffinity_mem_Icc kernel computed

/-- For a base-role normalized kernel, cosine normalization is transparent:
the similarity is exactly the real part of the base/base kernel entry. -/
theorem rhetoricalSimilarity_eq_re_of_base_normalized
    (kernel : PositiveKernel RhetoricalIndex)
    (normalized : ∀ concept : Universe.ConceptId,
      (kernel (concept, .base) (concept, .base)).re = 1)
    (left right : Universe.ConceptId) :
    rhetoricalSimilarity kernel left right =
      some (kernel (left, .base) (right, .base)).re := by
  have normOne (concept : Universe.ConceptId) :
      ‖conceptVector kernel concept‖ = 1 := by
    have square := norm_rhetoricalVector_sq kernel (concept, .base)
    rw [normalized concept] at square
    change ‖conceptVector kernel concept‖ ^ 2 = 1 at square
    nlinarith [norm_nonneg (conceptVector kernel concept)]
  have rhetoricalNormOne (concept : Universe.ConceptId) :
      ‖rhetoricalVector kernel (concept, .base)‖ = 1 := by
    simpa [conceptVector, roleVector] using normOne concept
  rw [rhetoricalSimilarity, normalizedRealAffinity]
  simp only [normOne, one_ne_zero, or_self, ↓reduceIte]
  simp [normalizedRealAffinityValue, rhetoricalNormOne,
    conceptVector, roleVector]

end DAF.Rhetorical
