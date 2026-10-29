# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.MechanismPackingRecurrenceRuleControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0329e19e1c3f9c47ebb6391d947ceb280fdc9512` · SHA-256 `bcb4a197f338f4d55a356bc9ffd1dd9f269db11c67121272238bdcb516330b33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MechanismPackingRecurrenceRule
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.MechanismPackingRecurrenceRuleControls

open GRWTSK.RiemannHypothesis

/-- Once a source-bound recurrence program exists, every stage is positive
without any additional analytic positivity field. -/
theorem recurrence_program_has_no_stage_positivity_obligation
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (program : SourceBoundPackingRecurrenceProgram Source Local)
    (n : ℕ) :
    0 ≤ program.valueAt n :=
  program.valueAt_nonnegative n

/-- Adjacent generated states reuse the previous two geometric points exactly. -/
theorem recurrence_program_has_exact_two_point_memory
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (program : SourceBoundPackingRecurrenceProgram Source Local)
    (n : ℕ) :
    (program.stateAt (n + 1)).first = (program.stateAt n).second ∧
      (program.stateAt (n + 1)).second = (program.stateAt n).third := by
  exact ⟨rfl, rfl⟩

end GRWTSK.RiemannHypothesis.Checks.MechanismPackingRecurrenceRuleControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd6faf8c35bacb5daf90c9921ed053c58fb5951782d491d78050a4d276ea1d60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/MechanismPackingRecurrenceRuleControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
