# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.TraceAndHeightCriteria

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2de33dffa8678770049d986dee6e751d31e9ba4b` · SHA-256 `7d6309a27804cb1058e8763f85badd714a0bc7cee328c521a99e6555535d2753`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion
import GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrbitQuartic

open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.RiemannHypothesis
open GRWTSK.Polynomial.ConjugateQuartic

example (s : ℂ) : NontrivialZetaZero s ↔
    (riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1) := Iff.rfl
example : _root_.RiemannHypothesis ↔
    ∀ s : ℂ, NontrivialZetaZero s → 0 ≤ witnessTrace (s.re - 1 / 2) s.im :=
  riemannHypothesis_iff_quadraticTraceNonnegative
example : _root_.RiemannHypothesis ↔ ∀ N : ℕ,
    ∀ s : ℂ, NontrivialZetaZero s → |s.im| ≤ N → s.re = 1 / 2 :=
  riemannHypothesis_iff_all_heights
example (scheme : HeightScheme) : _root_.RiemannHypothesis := scheme.riemannHypothesis
example : _root_.RiemannHypothesis ↔
    ∀ N m : ℕ, ∀ s : ℂ, NontrivialZetaZero s → s ∉ OffLineRectangle N m :=
  riemannHypothesis_iff_rectangle_exclusion
example (s : ℂ) : roots (s.re - 1 / 2) s.im =
    [zeroCoordinate (criticalReflection s), zeroCoordinate s,
     zeroCoordinate (zeroReflect s), zeroCoordinate (zeroConjugate s)] :=
  roots_eq_zero_coordinates s
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1230a098f6f928c54e73721ae6ebbbe0fc1f5f4c3067c62b522c54c5d826dd5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/TraceAndHeightCriteria.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
