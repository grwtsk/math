# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.ProductForRadical

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `997fc65b777b9eac6bedc5ebdcb4af10e6c09b05` · SHA-256 `56dcf14fc866aebc093ce23bef5cc61844a51106f90a3e997706bfaca1fe0c15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: the literal product cannot substitute for its radical.
example (ε : ℝ) (h : ∃ K : ℝ, 0 < K ∧ ∀ t : PrimitiveAdditiveTriple,
    (t.c : ℝ) ≤ K * Real.rpow ((t.a * t.b * t.c : ℕ) : ℝ) (1 + ε)) :
    ABCBound ε := by exact h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8aa7125ea088e5360085f29c784c4cd1e4eb52dadaa40551186882584db199a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/ProductForRadical.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
