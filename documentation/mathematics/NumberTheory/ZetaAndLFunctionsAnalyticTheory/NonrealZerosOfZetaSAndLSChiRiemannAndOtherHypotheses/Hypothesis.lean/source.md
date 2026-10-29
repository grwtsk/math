# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae5616e5a3548285b320b7c0f7327a8284ec0102` · SHA-256 `9a683651598d0b5ce5f0d5bbaee5c412e8d03de07f1e733aef57801b8b795152`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Independent statement comparator

This small statement repeats the pinned Mathlib target without importing any
project proof. Definitional comparison must succeed before the reformulation is
accepted. This is a proposition, never a declaration of a proof of RH.
-/

namespace GRWTSK.RiemannHypothesis.Target

/-- Exact quantifiers, trivial-zero exclusions, and pole exclusion of the fixed target. -/
def Statement : Prop :=
  ∀ s : ℂ, riemannZeta s = 0 → (¬ ∃ n : ℕ, s = -2 * (n + 1)) →
    s ≠ 1 → s.re = 1 / 2

/-- A stricter target or an omitted hypothesis cannot pass this definitional comparison. -/
theorem statement_eq_mathlib : Statement = _root_.RiemannHypothesis := rfl

end GRWTSK.RiemannHypothesis.Target
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f92906d7497238c0f9896b10577326c2dc8fbb2a79c003ab1e7ae0719bb5fb58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Hypothesis.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
