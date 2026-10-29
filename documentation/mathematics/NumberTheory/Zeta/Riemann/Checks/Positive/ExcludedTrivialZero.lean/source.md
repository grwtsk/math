# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.ExcludedTrivialZero

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89514dc342809be3a54f6c8c633ad5fb71d2d876` · SHA-256 `6e54ec9ddb515e9a2a428c0fb61ba050d64b53a895c74cd34c4fb1260f97b2ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann
-- This deliberately invalid inference must be rejected by the compiler.
example : GRWTSK.RiemannHypothesis.NontrivialZetaZero (-2) := by
  refine ⟨?_, ?_, ?_⟩
  · simpa using riemannZeta_neg_two_mul_nat_add_one 0
  · norm_num
  · norm_num
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd323922fd96853e5d342eb59d0eb2a7887f0f4897eab77b25679269cadf70ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/ExcludedTrivialZero.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
