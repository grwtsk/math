# Condensed Limits — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84356b62a436b46f3bafd2bf8a14cc80fa417151` · SHA-256 `15439389b833a649ca97389ebc1509b633e0d93a211e2f9969fa5a1e90333d59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Condensed.Module

/-!

# Limits in categories of condensed objects

This file adds some instances for limits in condensed sets and condensed modules.
-/

universe u

open CategoryTheory Limits

instance : HasLimits CondensedSet.{u} := by
  change HasLimits (Sheaf _ _)
  infer_instance

instance : HasLimitsOfSize.{u, u + 1} CondensedSet.{u} :=
  hasLimitsOfSizeShrink.{u, u + 1, u + 1, u} _

variable (R : Type (u + 1)) [Ring R]

instance : HasLimits (CondensedMod.{u} R) :=
  inferInstanceAs (HasLimits (Sheaf _ _))

instance : HasColimits (CondensedMod.{u} R) :=
  inferInstanceAs (HasColimits (Sheaf _ _))

instance : HasLimitsOfSize.{u, u + 1} (CondensedMod.{u} R) :=
  hasLimitsOfSizeShrink.{u, u + 1, u + 1, u} _

instance {A J : Type*} [Category A] [Category J] [HasColimitsOfShape J A]
    [HasWeakSheafify (coherentTopology CompHaus.{u}) A] :
    HasColimitsOfShape J (Condensed.{u} A) :=
  inferInstanceAs (HasColimitsOfShape J (Sheaf _ _))

instance {A J : Type*} [Category A] [Category J] [HasLimitsOfShape J A] :
    HasLimitsOfShape J (Condensed.{u} A) :=
  inferInstanceAs (HasLimitsOfShape J (Sheaf _ _))

instance {A : Type*} [Category A] [HasFiniteLimits A] : HasFiniteLimits (Condensed.{u} A) :=
  inferInstanceAs (HasFiniteLimits (Sheaf _ _))

instance {A : Type*} [Category A] [HasFiniteColimits A]
    [HasWeakSheafify (coherentTopology CompHaus.{u}) A] : HasFiniteColimits (Condensed.{u} A) :=
  inferInstanceAs (HasFiniteColimits (Sheaf _ _))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51ef98f45091bf5ea1b598dc85dac2b5eda6f7b3bb693876b9a2be09fb70f9ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant15439389b833a649ca97389ebc1509b633e0d93a211e2f9969fa5a1e90333d59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
