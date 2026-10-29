# Zero Definitions — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b110c43429fd3bf17b7ddbafa471803b8e0f3a5a` · SHA-256 `f60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.CriticalReflection
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Complex.Norm

/-!
# Exact Riemann-hypothesis research objects

The zero predicate retains all three hypotheses of Mathlib's `RiemannHypothesis`.
These definitions neither assume RH nor define an alternative terminal target.
-/

namespace GRWTSK.RiemannHypothesis

/-- A zero with precisely the trivial-zero and pole exclusions in Mathlib's RH target. -/
def NontrivialZetaZero (s : ℂ) : Prop :=
  riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1

/-- Complex conjugation, one generator of the Klein-four zero symmetry. -/
def zeroConjugate (s : ℂ) : ℂ := star s

/-- Functional-equation reflection, the other generator. -/
def zeroReflect (s : ℂ) : ℂ := 1 - s

/-- Squared distance to the critical-line reflection, with values in the reals. -/
def rhDefect (s : ℂ) : ℝ := Complex.normSq (s - criticalReflection s)

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eff600c016cd08758a2df14045ff371de30c54c60bc37b168919f39497d4a749 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
