# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Similarity.Variantb5c9f2118b39b2122af93de82b57df0fc83b11265562fbbc3c59ce6b54a51970

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18424572cbd914779d4f37a6552bb98c690e5e81` · SHA-256 `b5c9f2118b39b2122af93de82b57df0fc83b11265562fbbc3c59ce6b54a51970`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce0f50b0000c827f0975278674f536d249997dd887735ffa937406dd8fcbac58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variantb5c9f2118b39b2122af93de82b57df0fc83b11265562fbbc3c59ce6b54a51970.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
