# Light Limits — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0955dd8d521783c63352c039680c252897b3ca95` · SHA-256 `320b8d8c8a4c39880eba15dc0d6194a5084a3f09a95494f17e4de8733c6ff0d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Condensed.Light.Module
/-!

# Limits in categories of light condensed objects

This file adds some instances for limits in light condensed sets and modules.
-/

universe u

open CategoryTheory Limits

instance : HasLimitsOfSize.{u, u} LightCondSet.{u} := by
  change HasLimitsOfSize (Sheaf _ _)
  infer_instance

instance : HasFiniteLimits LightCondSet.{u} := hasFiniteLimits_of_hasLimitsOfSize _

variable (R : Type u) [Ring R]

instance : HasLimitsOfSize.{u, u} (LightCondMod.{u} R) :=
  inferInstanceAs (HasLimitsOfSize (Sheaf _ _))

instance : HasLimitsOfSize.{0, 0} (LightCondMod.{u} R) :=
  inferInstanceAs (HasLimitsOfSize (Sheaf _ _))

instance : HasFiniteLimits (LightCondMod.{u} R) := hasFiniteLimits_of_hasLimitsOfSize _
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1269312ffa1b530301baeff096dde5deceba36732ff6894c073273c9ac25fa4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant320b8d8c8a4c39880eba15dc0d6194a5084a3f09a95494f17e4de8733c6ff0d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
