# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.ProjectorMissingNoWrap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e13d11f4f12e3bdf158e2698c0bc2a45ce031837` · SHA-256 `fec30478573cc89c85081b20a9ebd46d7bc8ac60746d14150b07f9cd1762d6f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open GRWTSK.Analysis.Fourier.FiniteAdditiveProjector

-- q=4 exceeds M=3, but 3+3 wraps to 2. The projector is one, not zero.
example : characterProjector 4 3 3 2 = 0 := by
  have h : characterProjector 4 3 3 2 = 1 := by
    rw [characterProjector_eq_modular_indicator, if_pos (by decide)]
  exact h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08b75605a0c995f06d2497781567cfcea08faa90603f8f2a84bdda314bc1b4da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/ProjectorMissingNoWrap.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
