# Low Discrepancy — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b24d50c306a4012a2405692e2047b8e24ab3f59` · SHA-256 `33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Sampling.InvariantLaw

/-!
# Discrepancy-bounded sampling certificate
-/

namespace Mathematics.GraphAccess

structure LowDiscrepancyCertificate (State Observable : Type u) where
  invariantLaw : InvariantLaw State Observable
  observable : Observable
  samples : List State
  estimatedTrace : Int
  errorMagnitude : Nat
  errorBound : Nat
  discrepancyCertified : Prop
  discrepancyEvidence : discrepancyCertified
  errorWithinBound : errorMagnitude ≤ errorBound

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f0531819854fa95f3edf5c9288814b911603a4d3b547310fb1b066f9a566cb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowDiscrepancy/Variant33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
