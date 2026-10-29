import GRWTSK.Algebra.QuarticCubicResidueDescent
import Mathlib.FieldTheory.SplittingField.IsSplittingField

/-!
# The reduced adjacency cubic in its genuine splitting field

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The field F itself need not split the reduced cubic. An IsSplittingField
instance for its actual polynomial supplies the required extension splitting
premise, and the prior descent statement returns separability over F.
No characteristic-zero or irreducibility hypothesis is introduced.
-/

namespace GRWTSK.Algebra.QuarticCubicResidueSplittingField

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.QuarticCubicResidueDescent

noncomputable section

variable {R F E : Type*} [CommRing R] [Field F] [Field E] [Algebra F E]

/-- Discriminant nonvanishing of the reduced adjacency cubic implies
separability in its coefficient field; the necessary splitting extension
is now provided by an actual Mathlib splitting-field instance. -/
theorem reduced_adjacencyCubic_separable_in_splittingField
    (f : R →+* F) (s₁ s₂ s₃ s₄ : R)
    [IsSplittingField F E
      (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly]
    (hd : f (adjacencyCubic s₁ s₂ s₃ s₄).discr ≠ 0) :
    (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.Separable := by
  exact reduced_adjacencyCubic_separable_of_extension_splits
    (E := E) f s₁ s₂ s₃ s₄
    (IsSplittingField.splits E
      (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly) hd

end
end GRWTSK.Algebra.QuarticCubicResidueSplittingField
