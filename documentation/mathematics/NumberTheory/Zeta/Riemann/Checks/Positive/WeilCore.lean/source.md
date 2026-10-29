# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f29ffa793f431847d3818bea751774e5e3b9eb6` · SHA-256 `4cf9d6edbf539874e5ecd8f03a0fd106201a68e621e483c0697e0318087be5a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Source-only regression statements. -/
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPolarization

set_option autoImplicit false

/-! A fixture-independent Weil target. Passing this target does not cover the
separately required atlas, root fixture, Mellin or finite-power targets. -/

namespace GRWTSK.RiemannHypothesis.Checks.WeilCore

open Filter
open scoped Topology

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

example (c : WeilPositivityIffRH form) : c.toForward.source = c.source := rfl
example (c : WeilPositivityIffRH form) : c.toReverse.source = c.source := rfl

example (c : WeilPositivityImpliesRH form) :
    c.source.binding = space.binding := c.source_binding_eq

example (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.toDiagonal = limit := limit.toPolarized_toDiagonal

example (limit : PolarizedPositiveGramLimit form H) :
    limit.toDiagonal.toPolarized = limit := limit.toDiagonal_toPolarized

example (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.family = limit.family := rfl

example (bound : DiagonalErrorBound form H) :
    bound.toPolarized.family = bound.family := rfl

example (limit : DiagonalPositiveGramLimit form H) (f g : space.Vector) :
    Tendsto (fun n => limit.family.gram n f g) atTop (𝓝 (form.toFun f g)) :=
  limit.tendsto_polarized f g

-- No exact criterion is constructed by reducing the import closure.
example (limit : DiagonalPositiveGramLimit form H)
    (criterion : WeilPositivityImpliesRH form) : _root_.RiemannHypothesis :=
  limit.riemannHypothesis criterion

end GRWTSK.RiemannHypothesis.Checks.WeilCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4db0092efd76f0dd5328d80d551b4b21992fb14a1e00fd405f905c3e2394828f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
