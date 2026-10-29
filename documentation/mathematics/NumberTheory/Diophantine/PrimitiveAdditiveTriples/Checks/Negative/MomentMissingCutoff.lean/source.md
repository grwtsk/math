# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.MomentMissingCutoff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee5eb593c7c2d0598735e473adfd3269fbdfe2cc` · SHA-256 `9044ce7f060a60440169f8f448430490919496a46a0ca70cbd228567ebf35271`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- The coprime square has eleven pairs; the additive cutoff retains five.
example : (∑ p ∈ (Finset.Icc 1 4).product (Finset.Icc 1 4),
    if Nat.Coprime p.1 p.2 then (1 : ℤ) else 0) =
    primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) := by
  have h : (∑ p ∈ (Finset.Icc 1 4).product (Finset.Icc 1 4),
      if Nat.Coprime p.1 p.2 then (1 : ℤ) else 0) = 11 := by
    decide
  exact h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc9ab2a14d8c33867d97ef06d2470064575b61fec58a70f17e7fc8d4c67cc86a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/MomentMissingCutoff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
