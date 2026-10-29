# Complete source: GRWTSK.Algebra.QuarticCoefficientReductionCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `441ff76a2b62e813a9a4ef006ccb977490779cab` · SHA-256 `8ebf062e62efd81cdcdffca78832985c8060a8f327ec8378a0eb70338ccc7781`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticCoefficientDiscriminant
import GRWTSK.Algebra.QuarticBaseMaximalCriterion

/-!
# Maximal-ideal criterion using the monic quartic discriminant

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
The obstruction is expressed directly in the original monic quartic
coefficients. No separability or splitting of the quartic is required.
-/

namespace GRWTSK.Algebra.QuarticCoefficientReductionCriterion

open Polynomial
open GRWTSK.Algebra.QuarticCoefficientDiscriminant
open GRWTSK.Algebra.QuarticBaseMaximalCriterion
open GRWTSK.Algebra.PolygonalQuarticDescent

variable {R : Type*} [CommRing R]
variable (I : Ideal R) [I.IsMaximal]

theorem quartic_discriminant_nonmem_separable_resolvent
    (A B C D : R)
    (h : monicQuarticDiscriminant A B C D ∉ I) :
    (adjacencyResolventOfMonicCoefficients
      (Ideal.Quotient.mk I A) (Ideal.Quotient.mk I B)
      (Ideal.Quotient.mk I C) (Ideal.Quotient.mk I D)).Separable := by
  apply coefficientResolvent_reduction_separable I A B C D
  rw [← monicQuarticDiscriminant_eq_adjacencyCubic_discr]
  exact h

end GRWTSK.Algebra.QuarticCoefficientReductionCriterion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=239c5ebf3182e4b157f8830135bbe9d9865b58ec860e15dc7c9d9187b313bad4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticCoefficientReductionCriterion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
