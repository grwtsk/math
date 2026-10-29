# Request — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee265b896042dc398a4d7b13d7b157de78578f25` · SHA-256 `18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Surgery.Boundary

/-! # Explicit surgery requests -/

namespace Mathematics.Surgery

structure Request where
  id : SurgeryRequestId
  boundary : BoundaryObservation
  preservedInvariants : List String
  changedInvariants : List String
  lostInvariants : List String
  authority : String := "candidate"
  deriving DecidableEq, Repr

end Mathematics.Surgery
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e27f28069631ab499f5f4e5561473eacf45007d00bfea74e932aa119d5025e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Request/Variant18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
