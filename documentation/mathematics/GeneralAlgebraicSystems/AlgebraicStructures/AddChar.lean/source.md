# Add Char — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9a6296c828330c54335f0360bbe81cc238f1fa0` · SHA-256 `ca6fa42bf393a8d1a81ae38aa95348c63309dbfdeddaecc940974caac0958a11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.DirectSum.Basic
import Mathlib.Algebra.Group.AddChar

/-!
# Direct sum of additive characters

This file defines the direct sum of additive characters.
-/

open Function
open scoped DirectSum

variable {ι R : Type*} {G : ι → Type*} [DecidableEq ι] [∀ i, AddCommGroup (G i)] [CommMonoid R]

namespace AddChar
section DirectSum

/-- Direct sum of additive characters. -/
@[simps!]
def directSum (ψ : ∀ i, AddChar (G i) R) : AddChar (⨁ i, G i) R :=
  toAddMonoidHomEquiv.symm <| DirectSum.toAddMonoid fun i ↦ toAddMonoidHomEquiv (ψ i)

lemma directSum_injective :
    Injective (directSum : (∀ i, AddChar (G i) R) → AddChar (⨁ i, G i) R) := by
  refine toAddMonoidHomEquiv.symm.injective.comp <| DirectSum.toAddMonoid_injective.comp ?_
  rintro ψ χ h
  simpa [funext_iff] using h

end DirectSum
end AddChar
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a34fad9ac2b39e577ac698aad505983deca83ddaf9ea09c7f500518aec76f1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/AddChar/Variantca6fa42bf393a8d1a81ae38aa95348c63309dbfdeddaecc940974caac0958a11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
