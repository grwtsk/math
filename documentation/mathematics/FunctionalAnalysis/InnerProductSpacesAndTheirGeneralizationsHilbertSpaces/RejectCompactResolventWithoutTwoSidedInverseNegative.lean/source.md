# Reject Compact Resolvent Without Two Sided Inverse Negative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25e1da46a2c5cdbe3241a29e60a4e9679513f6c9` · SHA-256 `475400b086c9e4f1f344b0652e7113acf97c4f87add9d06d7166af3595b67163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Hostile mutation: compactness and the right inverse do not fill the left inverse field.
example {D : UnboundedOperator ℂ H} {z : ℂ}
    (R : CompactResolventWitness D z) : CompactResolventWitness D z where
  inverse := R.inverse
  mapsDomain := R.mapsDomain
  compact := R.compact
  rightInverse := R.rightInverse
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cd0655cdd2b07248c460cc38e5ef5f513582306a60cde0b235ed119ff7c0db9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCompactResolventWithoutTwoSidedInverseNegative/Variant475400b086c9e4f1f344b0652e7113acf97c4f87add9d06d7166af3595b67163.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
