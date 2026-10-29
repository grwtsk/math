# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.MomentUnsignedMoebius

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `202da5e236d61869ff7466ed5bd84dac973c8cc8` · SHA-256 `e41e2bf3a5fa58f93c09c57f7bb8db2f0b81bb2095a185c2e190d5159a3fac4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- Absolute values erase cancellation: the right side is seven, not five.
example : primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) =
    ∑ d ∈ Finset.Icc 1 4,
      |ArithmeticFunction.moebius d| *
        commonDivisorMoment 4 d (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) := by
  have h : primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 5 := by
    decide
  exact h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a1587c4dcdfec63b6605fd65736ac875c9dacd5291488b4388604b49be160e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/MomentUnsignedMoebius.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
