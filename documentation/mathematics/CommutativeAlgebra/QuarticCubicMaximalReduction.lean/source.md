# Complete source: GRWTSK.Algebra.QuarticCubicMaximalReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aeaaedaa085bc312523bbe41c5be05f9111615e8` · SHA-256 `fceee9cc1298e06c622c71fc9644f69f1b7437b4dc0c2f149654608f76e416ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6056d0c3a6c5b7e9b87e273fcc3353184b3c948b3498038724f088853dcedb49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticCubicMaximalReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
