# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.TargetCheck.Variant9bfe9109b0083b4ff1b218bc45c478fa22faccef7cc20082f06f10196db9d8a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42d0c7f2c6bc0e63269ad0443964a68bf076fd35` · SHA-256 `9bfe9109b0083b4ff1b218bc45c478fa22faccef7cc20082f06f10196db9d8a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
Nonterminal engineering check of the public target's literal definition. This
proves only a reflexive equality of statements, not the Riemann hypothesis.
-/

example : RiemannHypothesis =
    (∀ (s : Complex) (_ : riemannZeta s = 0)
      (_ : ¬∃ n : Nat, s = -2 * (n + 1)) (_ : s ≠ 1), s.re = 1 / 2) := rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65adf71fc30d083006bd750ec8779fd35e074d894b1e8ec2cbf968f5f1ce2ce1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/TargetCheck/Variant9bfe9109b0083b4ff1b218bc45c478fa22faccef7cc20082f06f10196db9d8a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
