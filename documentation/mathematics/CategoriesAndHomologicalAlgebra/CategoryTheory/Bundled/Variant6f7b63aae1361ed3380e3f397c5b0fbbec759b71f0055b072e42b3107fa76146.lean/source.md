# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bundled.Variant6f7b63aae1361ed3380e3f397c5b0fbbec759b71f0055b072e42b3107fa76146

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6802172d5e6d328ec9f40c3a0289acb6c26eebfd` · SHA-256 `6f7b63aae1361ed3380e3f397c5b0fbbec759b71f0055b072e42b3107fa76146`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Johannes Hölzl, Reid Barton, Sean Leather
-/
module

public import Mathlib.Init
public import Batteries.Tactic.Lint.Misc

/-!
# Bundled types

`Bundled c` provides a uniform structure for bundling a type equipped with a type class.

We provide `Category` instances for these in
`Mathlib/CategoryTheory/ConcreteCategory/UnbundledHom.lean`
(for categories with unbundled homs, e.g. topological spaces)
and in `Mathlib/CategoryTheory/ConcreteCategory/BundledHom.lean`
(for categories with bundled homs, e.g. monoids).

Note: this structure will be deprecated in the future in favor of defining the category manually
and then providing the `ConcreteCategory` instance on top of this. See
`Mathlib/CategoryTheory/ConcreteCategory/Basic.lean` for more details.
-/

@[expose] public section

universe u v

namespace CategoryTheory

variable {c d : Type u → Type v}

/-- `Bundled` is a type bundled with a type class instance for that type. Only
the type class is exposed as a parameter. -/
structure Bundled (c : Type u → Type v) : Type max (u + 1) v where
  /-- The underlying type of the bundled type -/
  α : Type u
  /-- The corresponding instance of the bundled type class -/
  str : c α := by infer_instance

namespace Bundled

attribute [coe] α

-- This is needed so that we can ask for an instance of `c α` below even though Lean doesn't know
-- that `c α` is a typeclass.
set_option checkBinderAnnotations false in

-- Usually explicit instances will provide their own version of this, e.g. `MonCat.of` and
-- `TopCat.of`.
/-- A generic function for lifting a type equipped with an instance to a bundled object. -/
@[implicit_reducible]
def of {c : Type u → Type v} (α : Type u) [str : c α] : Bundled c :=
  ⟨α, str⟩

instance coeSort : CoeSort (Bundled c) (Type u) :=
  ⟨Bundled.α⟩

theorem coe_mk (α) (str) : (@Bundled.mk c α str : Type u) = α :=
  rfl

/-- Map over the bundled structure -/
abbrev map (f : ∀ {α}, c α → d α) (b : Bundled c) : Bundled d :=
  ⟨b, f b.str⟩

end Bundled

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b9a097efe0bdcd49d4c4feeb3dfd4dcc133c256d6d3c8ff11a8af2de080cf55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant6f7b63aae1361ed3380e3f397c5b0fbbec759b71f0055b072e42b3107fa76146.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
