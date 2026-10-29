# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SequentialPackingRecurrenceControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14fc49a3c0f4ae4c6e324d2174e7f4e490587841` · SHA-256 `aa2333bd9060d5a09ea6bca1cb0a90b157cd3e35825e3d89fac1fd2c14342288`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SequentialPackingRecurrence
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SequentialPackingRecurrenceControls

open GRWTSK.RiemannHypothesis

/-- Appending any new point cannot make the Gram-volume state negative. -/
theorem arbitrary_append_preserves_nonnegativity
    {P : ℕ → Prop} (state : ThreePointPackingState P)
    (newPoint : PackingPoint) (newSource : ℕ) (h : P newSource) :
    0 ≤ (state.advance newPoint newSource h).value :=
  state.advance_value_nonnegative newPoint newSource h

/-- The recurrence transports the two overlap points exactly. -/
theorem recurrence_has_two_point_memory
    {P : ℕ → Prop} (state : ThreePointPackingState P)
    (newPoint : PackingPoint) (newSource : ℕ) (h : P newSource) :
    (state.advance newPoint newSource h).first = state.second ∧
      (state.advance newPoint newSource h).second = state.third := by
  exact ⟨rfl, rfl⟩

end GRWTSK.RiemannHypothesis.Checks.SequentialPackingRecurrenceControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=601f54d1fdd3490f219a4ab02295148f4ba505a15055d8307d1c3488eb09c2ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/SequentialPackingRecurrenceControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
