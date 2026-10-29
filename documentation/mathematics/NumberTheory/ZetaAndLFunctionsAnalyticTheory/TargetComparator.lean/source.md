# Target Comparator — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ac3321dee986de54a17433203701de9ac5be360` · SHA-256 `b9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.TargetStatement
import FormalResearch.RiemannHypothesis.Defect

/-!
# Comparison of the proved reformulation with the independent exact statement

This composes an equivalence only; neither side of the equivalence is proved.
-/

namespace FormalResearch.RiemannHypothesis.Target

/-- The defect theorem terminates in the independently fixed Mathlib proposition. -/
theorem statement_iff_defect_zero :
    Statement ↔ ∀ s, NontrivialZetaZero s → rhDefect s = 0 := by
  rw [statement_eq_mathlib]
  exact riemann_hypothesis_iff_defect_zero

end FormalResearch.RiemannHypothesis.Target
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eafaa4dd07c65d8bb45f3acd789c552c7d58c2b56d2ee03197ddc6bc02cfda28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TargetComparator/Variantb9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
