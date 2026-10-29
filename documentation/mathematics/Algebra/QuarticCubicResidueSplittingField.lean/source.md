# Complete source: GRWTSK.Algebra.QuarticCubicResidueSplittingField

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `442ec7918f32d1d6363c575a2638f4555a25d3a6` · SHA-256 `5ccc97b701b5cc575ecde40df5981d4eff2858223f19783cab477e920f81cad0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e30be621b74e67f539f6c601cda04fadf8b4650a77652d28d19ed7aa7e438ba6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticCubicResidueSplittingField.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
