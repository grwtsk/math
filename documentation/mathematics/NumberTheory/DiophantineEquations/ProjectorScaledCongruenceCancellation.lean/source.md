# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.ProjectorScaledCongruenceCancellation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `403b2b3f1ab8baa28c67a302ae6e0556f9b5c731` · SHA-256 `73ba27efe6b78271df4808cddb54ffe1bbc87388938c1780ea145496fdf3d684`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open GRWTSK.Analysis.Fourier.FiniteAdditiveProjector

-- q=8 exceeds 2*M=6 for M=3, but d=2 is not cancellable modulo q=8.
-- The unscaled phase is four; the scaled phase is eight and wraps to zero.
example : characterProjector 8 (2 * 3) (2 * 3) (2 * 2) =
    characterProjector 8 3 3 2 := by
  have h : characterProjector 8 (2 * 3) (2 * 3) (2 * 2) = 1 := by
    rw [characterProjector_eq_modular_indicator, if_pos (by decide)]
  exact h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5c2fde7a57fd8e3dcd3058ac0553df271270da7fb9b51b74c32eacafe432244 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/ProjectorScaledCongruenceCancellation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
