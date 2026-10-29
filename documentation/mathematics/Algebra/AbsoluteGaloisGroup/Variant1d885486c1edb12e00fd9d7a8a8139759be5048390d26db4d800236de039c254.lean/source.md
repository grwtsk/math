# Complete source: GRWTSK.Algebra.AbsoluteGaloisGroup.Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16992537a9e46f424d79c6292269d91f8088af62` · SHA-256 `1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández
-/
import Mathlib.FieldTheory.KrullTopology
import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
import Mathlib.Topology.Algebra.Group.TopologicalAbelianization

/-!
# The topological abelianization of the absolute Galois group.

We define the absolute Galois group of a field `K` and its topological abelianization.

## Main definitions
- `Field.absoluteGaloisGroup` : The Galois group of the field extension `K^al/K`, where `K^al` is an
  algebraic closure of `K`.
- `Field.absoluteGaloisGroupAbelianization` : The topological abelianization of
  `Field.absoluteGaloisGroup K`, that is, the quotient of `Field.absoluteGaloisGroup K` by the
  topological closure of its commutator subgroup.

## Main results
- `Field.absoluteGaloisGroup.commutator_closure_isNormal` : the topological closure of the
  commutator of `absoluteGaloisGroup` is a normal subgroup.

## Tags
field, algebraic closure, galois group, abelianization

-/

namespace Field

variable (K : Type*) [Field K]

/-! ### The absolute Galois group -/

/-- The absolute Galois group of `K`, defined as the Galois group of the field extension `K^al/K`,
  where `K^al` is an algebraic closure of `K`. -/
def absoluteGaloisGroup := AlgebraicClosure K ≃ₐ[K] AlgebraicClosure K

local notation "G_K" => absoluteGaloisGroup

noncomputable instance : Group (G_K K) := AlgEquiv.aut

/-- `absoluteGaloisGroup` is a topological space with the Krull topology. -/
noncomputable instance : TopologicalSpace (G_K K) := krullTopology K (AlgebraicClosure K)

/-! ### The topological abelianization of the absolute Galois group -/

instance absoluteGaloisGroup.commutator_closure_isNormal :
    (commutator (G_K K)).topologicalClosure.Normal :=
  Subgroup.is_normal_topologicalClosure (commutator (G_K K))

/-- The topological abelianization of `absoluteGaloisGroup`, that is, the quotient of
  `absoluteGaloisGroup` by the topological closure of its commutator subgroup. -/
abbrev absoluteGaloisGroupAbelianization := TopologicalAbelianization (G_K K)

local notation "G_K_ab" => absoluteGaloisGroupAbelianization

end Field
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca30505e5e49881e32848f8923c69f956c0475f2a9729d408b74ca65bfdf6985 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/AbsoluteGaloisGroup/Variant1d885486c1edb12e00fd9d7a8a8139759be5048390d26db4d800236de039c254.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
