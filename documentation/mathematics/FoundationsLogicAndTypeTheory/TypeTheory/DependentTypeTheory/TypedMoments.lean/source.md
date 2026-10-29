# Complete source: GRWTSK.Data.TypedMoments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b01ee07adf8372ffc9fc19186c6cbb30b73cc1f5` · SHA-256 `b320d1bda7381b7934cdaaf6ba409aabcc986632f5356ab48c2c861f7bc2d46f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Nat.Basic

set_option autoImplicit false

/-!
# Dependently typed moment families

A moment order is part of the type. Different orders may therefore have different
codomains, scales, or certificate objects. This prevents an implementation from silently
coercing every moment into one scalar accumulator.

The definitions are purely structural. They do not assert existence, convergence,
positivity, or a relation between moments of different orders.
-/

namespace GRWTSK.Data.TypedMoments

/-- A family assigning a possibly different carrier to every natural moment order. -/
structure Family (P : Type*) where
  carrier : ℕ → Type*
  moment : (order : ℕ) → P → carrier order

/-- Two payloads agree at every typed moment order. -/
def Family.Agree {P : Type*} (moments : Family P) (left right : P) : Prop :=
  ∀ order, moments.moment order left = moments.moment order right

theorem Family.agree_refl {P : Type*} (moments : Family P) (value : P) :
    moments.Agree value value := by
  intro order
  rfl

theorem Family.agree_symm {P : Type*} (moments : Family P) {left right : P}
    (agreement : moments.Agree left right) : moments.Agree right left := by
  intro order
  exact (agreement order).symm

theorem Family.agree_trans {P : Type*} (moments : Family P) {first second third : P}
    (first_second : moments.Agree first second)
    (second_third : moments.Agree second third) : moments.Agree first third := by
  intro order
  exact (first_second order).trans (second_third order)

end GRWTSK.Data.TypedMoments
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a54d124ad8c4d577612e1b16a13687f9260d104d87733991e9c6e2a75cb7292f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/TypedMoments.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
