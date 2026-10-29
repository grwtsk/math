# Object Property Finite Limits Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28855cce2751b8c5de874f1c48615b81b2f66682` · SHA-256 `1656b7b86cff96ca7c4d8819ba61248d8ded26dc89b6c75e4f0c2142eecf8a18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.Preserves.Finite
public import Mathlib.CategoryTheory.Limits.FullSubcategory
public import Mathlib.CategoryTheory.ObjectProperty.FiniteProducts

/-!
# Properties of objects that are closed under finite limits

In this file, we introduce a typeclass `IsClosedUnderFiniteLimits`
saying that a property of objects `P : ObjectProperty C` of a category `C`
is closed under finite limits. The dual definition `IsClosedUnderFiniteLimits`
is also introduced.

-/

@[expose] public section

namespace CategoryTheory.ObjectProperty

open Limits

variable {C : Type*} [Category* C] (P : ObjectProperty C)

/-- A typeclass expressing that a property of objects is closed under finite limits. -/
class IsClosedUnderFiniteLimits : Prop where
  isClosedUnderLimitsOfShape (J : Type) [SmallCategory J] [FinCategory J] :
    P.IsClosedUnderLimitsOfShape J := by intros; infer_instance

namespace IsClosedUnderFiniteLimits

attribute [instance] isClosedUnderLimitsOfShape

variable [P.IsClosedUnderFiniteLimits]

instance : P.IsClosedUnderFiniteProducts where
  isClosedUnderLimitsOfShape X _ := by
    have := Fintype.ofFinite X
    infer_instance

variable [HasFiniteLimits C]

instance : HasFiniteLimits P.FullSubcategory where
  out _ _ _ := inferInstance

instance : PreservesFiniteLimits P.ι where
  preservesFiniteLimits _ _ _ := inferInstance

end IsClosedUnderFiniteLimits

/-- A typeclass expressing that a property of objects is closed under finite colimits. -/
class IsClosedUnderFiniteColimits : Prop where
  isClosedUnderColimitsOfShape (J : Type) [SmallCategory J] [FinCategory J] :
    P.IsClosedUnderColimitsOfShape J := by intros; infer_instance

namespace IsClosedUnderFiniteColimits

attribute [instance] isClosedUnderColimitsOfShape

variable [P.IsClosedUnderFiniteColimits]

instance : P.IsClosedUnderFiniteCoproducts where
  isClosedUnderColimitsOfShape X _ := by
    have := Fintype.ofFinite X
    infer_instance

variable [HasFiniteColimits C]

instance : HasFiniteColimits P.FullSubcategory where
  out _ _ _ := inferInstance

instance : PreservesFiniteColimits P.ι where
  preservesFiniteColimits _ _ _ := inferInstance

end IsClosedUnderFiniteColimits

end CategoryTheory.ObjectProperty
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b07ea60a7ccceb152d4062f96b7c23660ca6bed7c76f805b30e40e3c4166e23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant1656b7b86cff96ca7c4d8819ba61248d8ded26dc89b6c75e4f0c2142eecf8a18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
