# Projection — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a58c58b67fa482e238bf0834d564adc9391dfd2` · SHA-256 `2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.OperatorOrder.Predicates

/-!
# Orthogonal-projection certificate primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure OrthogonalProjectionCertificate
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (P : HilbertEnd H) :
    Prop where
  selfAdjoint :
    OperatorSelfAdjoint P
  idempotent :
    OperatorIdempotent P
  nonnegative :
    OperatorNonnegative P

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9993d4bd53ab0315cb823fe1681cbf246730f2131b0690f29265309561772c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Projection/Variant2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
