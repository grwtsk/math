import GRWTSK.Algebra.QuarticCubicCanonicalResidue

/-!
# Maximal-ideal criterion for quartic adjacency cubic reduction

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This specializes the characteristic-independent cubic discriminant
criterion to the residue field at a maximal ideal. Membership of the
discriminant in the maximal ideal is precisely the obstruction. The
argument neither assumes a splitting of the cubic in the residue field
nor claims preservation of distinct roots under arbitrary quotient maps.
-/

namespace GRWTSK.Algebra.QuarticCubicMaximalReduction

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.QuarticCubicCanonicalResidue

noncomputable section

variable {R : Type*} [CommRing R] (I : Ideal R) [I.IsMaximal]

/-- Nonmembership of the cubic discriminant in a maximal ideal implies
separability of the explicitly reduced cubic over its residue field. -/
theorem residue_adjacencyCubic_separable
    (s₁ s₂ s₃ s₄ : R)
    (hd : (adjacencyCubic s₁ s₂ s₃ s₄).discr ∉ I) :
    (adjacencyCubic
      (Ideal.Quotient.mk I s₁) (Ideal.Quotient.mk I s₂)
      (Ideal.Quotient.mk I s₃) (Ideal.Quotient.mk I s₄)).toPoly.Separable := by
  letI : Field (R ⧸ I) := Ideal.Quotient.field I
  apply reduced_adjacencyCubic_separable_canonical (Ideal.Quotient.mk I) s₁ s₂ s₃ s₄
  intro h
  exact hd ((Ideal.Quotient.eq_zero_iff_mem).mp h)

end
end GRWTSK.Algebra.QuarticCubicMaximalReduction
