# Complete source: GRWTSK.Topology.GeneralTopology.Limits.Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f72790e39c04414d980e74bab429f05a39598f4` · SHA-256 `881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Dagur Asgeirsson
-/
import Mathlib.Topology.Category.CompHaus.Basic
import Mathlib.Topology.Category.CompHausLike.Limits
/-!

# Explicit limits and colimits

This file applies the general API for explicit limits and colimits in `CompHausLike P` (see
the file `Mathlib/Topology/Category/CompHausLike/Limits.lean`) to the special case of `CompHaus`.
-/

namespace CompHaus

universe u w

open CategoryTheory Limits CompHausLike

instance : HasExplicitPullbacks (fun _ ↦ True) where
  hasProp _ _ := inferInstance

instance : HasExplicitFiniteCoproducts.{w, u} (fun _ ↦ True) where
  hasProp _ := inferInstance

example : FinitaryExtensive CompHaus.{u} := inferInstance

/-- A one-element space is terminal in `CompHaus` -/
abbrev isTerminalPUnit : IsTerminal (CompHaus.of PUnit.{u + 1}) := CompHausLike.isTerminalPUnit

/-- The isomorphism from an arbitrary terminal object of `CompHaus` to a one-element space. -/
noncomputable def terminalIsoPUnit : ⊤_ CompHaus.{u} ≅ CompHaus.of PUnit :=
  terminalIsTerminal.uniqueUpToIso CompHaus.isTerminalPUnit

noncomputable example : PreservesFiniteCoproducts compHausToTop := inferInstance

end CompHaus
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=259c68282129193f99a0c5368710d5dd9e51fa0525f617e32641b7ff4103ec56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
