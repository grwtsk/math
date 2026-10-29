# Cartesian Inf Semilattice — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `177c4f7c68f8ca91cee5b79f44b278279585bae4` · SHA-256 `d43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Sina Hazratpour. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sina Hazratpour
-/
import Mathlib.CategoryTheory.Limits.Preorder
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic

/-!
# The preorder category of a meet-semilattice with a greatest element is cartesian monoidal

The preorder category of a meet-semilattice `C` with a greatest element is cartesian monoidal.

A symmetric monoidal structure on the preorder category is automatically provided by the
instance and `CartesianMonoidalCategory.toSymmetricCategory`.
-/

namespace CategoryTheory

open Category MonoidalCategory

universe u

variable (C : Type u) [SemilatticeInf C] [OrderTop C]

namespace SemilatticeInf

/-- Cartesian monoidal structure for the preorder category of a meet-semilattice with
a greatest element. -/
noncomputable scoped instance cartesianMonoidalCategory : CartesianMonoidalCategory C :=
  .ofChosenFiniteProducts ⟨_, Preorder.isTerminalTop C⟩ fun X Y ↦ ⟨_, Preorder.isLimitBinaryFan X Y⟩

/-- Braided structure for the preorder category of a meet-semilattice with a greatest element. -/
noncomputable scoped instance braidedCategory : BraidedCategory C := .ofCartesianMonoidalCategory

lemma tensorObj {C : Type u} [SemilatticeInf C] [OrderTop C] {X Y : C} : X ⊗ Y = X ⊓ Y := rfl

lemma tensorUnit {C : Type u} [SemilatticeInf C] [OrderTop C] :
    𝟙_ C = ⊤ := rfl

end SemilatticeInf

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fa591040680532fd1274c6353a133b0a7a4948810b7bc40892959fc555f0eb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
