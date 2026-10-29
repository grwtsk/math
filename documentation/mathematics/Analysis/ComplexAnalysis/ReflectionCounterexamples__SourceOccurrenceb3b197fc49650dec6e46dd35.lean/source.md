# Complete source: GRWTSK.Analysis.Complex.ReflectionCounterexamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e161bac4028bb5ba3461e1e12e06df485bd1116` · SHA-256 `5d6ee5d63e6a0709283b67acd58e4590ca7504f4649dcd8997dd3f2b4f987b69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Historical human/machine authoring split unknown. Upstream Lean and mathlib authors,
formalizations and licenses retain their identities.
-/
import GRWTSK.Analysis.Complex.CriticalReflection
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.RiemannHypothesis

/-!
# Scope and sign counterexamples

These guards expose specific invalid inference schemas. No counterexample to RH
is asserted. Four symmetry maps need not give four distinct points on a zero orbit.
-/


/-- The critical-line reflection is not complex multiplication by `i`. -/
theorem critical_reflection_is_not_gaussian_rotation :
    criticalReflection (criticalReflection 1) = 1 ∧
      Complex.I * (Complex.I * 1) ≠ (1 : ℂ) := by
  constructor
  · exact critical_reflection_involutive _
  · norm_num



end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c51eb3ed0ba2a8b849cf893735231ac46bad3fcc7508969d01f8f20e7ef2a850 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/ReflectionCounterexamples__SourceOccurrenceb3b197fc49650dec6e46dd35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
