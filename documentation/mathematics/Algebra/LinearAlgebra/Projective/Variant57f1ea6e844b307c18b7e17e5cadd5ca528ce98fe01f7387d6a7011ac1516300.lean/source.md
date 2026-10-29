# Complete source: GRWTSK.Algebra.LinearAlgebra.Projective.Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76bf92470cd3a6d237df1feb072c1289d9793cf0` · SHA-256 `57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Module.Projective
import Mathlib.RingTheory.Finiteness.Cardinality

/-!
# Finite and projective modules

-/

open Function (Surjective)

namespace Module

namespace Finite

open Submodule Set

variable {R M N : Type*}
variable [Semiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N]

variable (R M) in
theorem exists_comp_eq_id_of_projective [Module.Finite R M] [Projective R M] :
    ∃ (n : ℕ) (f : (Fin n → R) →ₗ[R] M) (g : M →ₗ[R] Fin n → R),
      Function.Surjective f ∧ Function.Injective g ∧ f ∘ₗ g = .id :=
  have ⟨n, f, surj⟩ := exists_fin' R M
  have ⟨g, hfg⟩ := Module.projective_lifting_property f .id surj
  ⟨n, f, g, surj, LinearMap.injective_of_comp_eq_id _ _ hfg, hfg⟩

end Finite

end Module
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91a8945e23986abffacdd1ae2c4f3d4b81a494df877b9aa5d9fd0868e87550cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Projective/Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
