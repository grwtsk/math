# Primitive Family Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99e4b095b01ab63efc5db1b2b82149e44df85618` · SHA-256 `5b046304bbb87b09d1d8ca303c4452cfb0dddee5708bf85450cd724c0c6f621a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.Character

/-!
# The primitive Dirichlet-character family

`DirichletGRH` quantifies over every positive modulus and every primitive
complex Dirichlet character at that modulus.  Positivity supplies the
`NeZero q` instance required by mathlib's analytic `LFunction`.

This is a proposition only.  No global or local GRH proof is asserted.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

set_option linter.dupNamespace false in
/-- Pointwise Dirichlet GRH over all primitive characters of positive
modulus.  Constants or estimates are not bundled into this predicate. -/
@[expose]
def DirichletGRH : Prop :=
  ∀ (q : ℕ) (hq : 0 < q),
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    ∀ chi : DirichletCharacter ℂ q,
      DirichletCharacter.IsPrimitive chi →
        GRHForPrimitiveCharacter chi

/-- Eliminate the global family predicate at one positive modulus. -/
@[surface_novel, surface_published]
theorem dirichletGRH_forCharacter
    (hGRH : DirichletGRH) {q : ℕ} (hq : 0 < q)
    (chi : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive chi) :
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    GRHForPrimitiveCharacter chi := by
  exact hGRH q hq chi hPrimitive

/-- The explicit positive-modulus family is definitionally the global
Dirichlet-GRH proposition.  This small theorem is useful at adapter
boundaries without introducing a second notion of global GRH. -/
@[surface_novel, surface_published]
theorem dirichletGRH_iff_primitiveFamily :
    DirichletGRH ↔
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ chi : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive chi →
            GRHForPrimitiveCharacter chi :=
  Iff.rfl

end

end Surface.Core.DirichletGRH
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ef3cc7b68d58125644f75debdeb9e8b777bab8d44a0fe18dea687b89688940f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant5b046304bbb87b09d1d8ca303c4452cfb0dddee5708bf85450cd724c0c6f621a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
