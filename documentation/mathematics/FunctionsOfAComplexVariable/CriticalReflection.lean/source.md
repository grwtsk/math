# Complete source: GRWTSK.Analysis.ComplexAnalysis.CriticalReflection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `599ec8df6086bf0c436f193ced175fc8c71383a5` · SHA-256 `45fcda1d150f49c2c11819a6dcd35059e9a89ec36068d2c1b5b8b10e07feac79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Basic

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.RiemannHypothesis

/-- Reflection in the critical line; the composite of the two generators. -/
def criticalReflection (s : ℂ) : ℂ := 1 - star s

@[simp]
theorem critical_reflection_involutive (s : ℂ) :
    criticalReflection (criticalReflection s) = s := by
  simp [criticalReflection]

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de9403b4419791af9a0027eba4722298356a9ccf8816d6a755bcf7ab65268bb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/CriticalReflection__SourceOccurrence013a3c275aede884c0f49329.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
