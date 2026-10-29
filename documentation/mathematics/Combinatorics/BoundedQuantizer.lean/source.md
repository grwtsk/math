# Complete source: GRWTSK.Order.Interval.BoundedQuantizer

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c5dd84cfa1b3419fa3f34202b71e72d1cfcb7ac` · SHA-256 `2f702483cd36a9a2f254feb8aa57c9ea84d4ab75de8faa4deab0f0ccda09409c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Order.MinMax
import Mathlib.Data.Nat.Basic

/-!+# Bounded natural quantization

Clamping a requested natural count to a nonempty interval preserves its bounds,
is monotone in the request, and is idempotent. These order-theoretic properties
are independent of any numerical matrix, recurrence, spectral approximation,
or dynamical stability assertion.
-/

set_option autoImplicit false

namespace GRWTSK.Order.Interval.BoundedQuantizer

def clamp (lower upper requested : ℕ) : ℕ := max lower (min upper requested)

theorem lower_le_clamp (lower upper requested : ℕ) :
    lower ≤ clamp lower upper requested := le_max_left _ _

theorem clamp_le_upper (lower upper requested : ℕ) (h : lower ≤ upper) :
    clamp lower upper requested ≤ upper :=
  max_le h (min_le_left _ _)

theorem clamp_mem (lower upper requested : ℕ) (h : lower ≤ upper) :
    lower ≤ clamp lower upper requested ∧ clamp lower upper requested ≤ upper :=
  ⟨lower_le_clamp _ _ _, clamp_le_upper _ _ _ h⟩

theorem clamp_eq_self (lower upper requested : ℕ)
    (hlower : lower ≤ requested) (hupper : requested ≤ upper) :
    clamp lower upper requested = requested := by
  unfold clamp
  rw [min_eq_right hupper, max_eq_right hlower]

theorem clamp_monotone (lower upper : ℕ) : Monotone (clamp lower upper) := by
  intro first second h
  exact max_le_max_left lower (min_le_min_left upper h)

theorem clamp_idempotent (lower upper requested : ℕ) (h : lower ≤ upper) :
    clamp lower upper (clamp lower upper requested) = clamp lower upper requested :=
  clamp_eq_self _ _ _ (lower_le_clamp _ _ _) (clamp_le_upper _ _ _ h)

end GRWTSK.Order.Interval.BoundedQuantizer
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=331c1e4aa710e932491935d604dd02d4eb66407bd509dba69e24b69fd2cb9f87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
