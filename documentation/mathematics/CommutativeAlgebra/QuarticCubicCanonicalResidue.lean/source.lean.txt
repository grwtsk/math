import GRWTSK.Algebra.QuarticCubicResidueSplittingField
import Mathlib.FieldTheory.SplittingField.Construction

/-!
# Canonical splitting-field-free residue cubic separability criterion

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The pinned Mathlib construction provides a canonical SplittingField q
with an IsSplittingField instance. No extension E or splitting instance
appears in the theorem statement: the auxiliary field is selected in
the proof. Every characteristic is supported.
-/

namespace GRWTSK.Algebra.QuarticCubicCanonicalResidue

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.QuarticCubicResidueSplittingField

noncomputable section

variable {R F : Type*} [CommRing R] [Field F]

/-- Nonzero reduced cubic discriminant implies separability over the
residue field, without any user-supplied splitting extension. -/
theorem reduced_adjacencyCubic_separable_canonical
    (f : R →+* F) (s₁ s₂ s₃ s₄ : R)
    (hd : f (adjacencyCubic s₁ s₂ s₃ s₄).discr ≠ 0) :
    (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.Separable := by
  let q : F[X] := (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly
  letI : Field q.SplittingField := inferInstance
  letI : Algebra F q.SplittingField := inferInstance
  letI : IsSplittingField F q.SplittingField q := inferInstance
  exact reduced_adjacencyCubic_separable_in_splittingField
    (E := q.SplittingField) f s₁ s₂ s₃ s₄ hd

end
end GRWTSK.Algebra.QuarticCubicCanonicalResidue
