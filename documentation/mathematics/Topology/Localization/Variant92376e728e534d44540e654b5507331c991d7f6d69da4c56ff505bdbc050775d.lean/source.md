# Complete source: GRWTSK.Topology.Localization.Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d401153fead11125f582ac0e2e3ce9db2b8d7b59` · SHA-256 `92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández
-/
import Mathlib.GroupTheory.MonoidLocalization.Basic
import Mathlib.RingTheory.OreLocalization.Ring
import Mathlib.Topology.Algebra.Ring.Basic

/-!

# Localization of topological rings

The topological localization of a topological commutative ring `R` at a submonoid `M` is the ring
`Localization M` endowed with the final ring topology of the natural homomorphism sending `x : R`
to the equivalence class of `(x, 1)` in the localization of `R` at an `M`.

## Main Results

- `Localization.ringTopology`: The localization of a topological commutative ring at a submonoid
  is a topological ring.

-/


variable {R : Type*} [CommRing R] [TopologicalSpace R] {M : Submonoid R}

/-- The ring topology on `Localization M` coinduced from the natural homomorphism sending `x : R`
to the equivalence class of `(x, 1)`. -/
def Localization.ringTopology : RingTopology (Localization M) :=
  RingTopology.coinduced (Localization.monoidOf M).toFun

instance : TopologicalSpace (Localization M) :=
  Localization.ringTopology.toTopologicalSpace

instance : IsTopologicalRing (Localization M) :=
  Localization.ringTopology.toIsTopologicalRing
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02b4642734dccaa8155bdbaf84fd616ce84faff61f162ae4fdbc14b2a13a33be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
