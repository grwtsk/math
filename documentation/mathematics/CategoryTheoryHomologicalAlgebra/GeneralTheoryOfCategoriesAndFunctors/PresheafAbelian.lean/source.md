# Presheaf Abelian — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb0173d07962881fa90d47af5a096b9876dacc10` · SHA-256 `6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Colimits
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.CategoryTheory.Abelian.Basic

/-!
# The category of presheaves of modules is abelian

-/

universe v v₁ u₁ u

open CategoryTheory Category Limits

namespace PresheafOfModules

variable {C : Type u₁} [Category.{v₁} C] (R : Cᵒᵖ ⥤ RingCat.{u})

noncomputable instance : IsNormalEpiCategory (PresheafOfModules.{v} R) where
  normalEpiOfEpi p _ := ⟨NormalEpi.mk _ (kernel.ι p) (kernel.condition _)
    (evaluationJointlyReflectsColimits _ _ (fun _ =>
      Abelian.isColimitMapCoconeOfCokernelCoforkOfπ _ _))⟩

noncomputable instance : IsNormalMonoCategory (PresheafOfModules.{v} R) where
  normalMonoOfMono i _ := ⟨NormalMono.mk _ (cokernel.π i) (cokernel.condition _)
    (evaluationJointlyReflectsLimits _ _ (fun _ =>
      Abelian.isLimitMapConeOfKernelForkOfι _ _))⟩

noncomputable instance : Abelian (PresheafOfModules.{v} R) where

end PresheafOfModules
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c9eb414b9a4025b2d4ac804eca33a71eb2739033e0ec13483a0f4ccc5bb40bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Abelian/Variant6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
