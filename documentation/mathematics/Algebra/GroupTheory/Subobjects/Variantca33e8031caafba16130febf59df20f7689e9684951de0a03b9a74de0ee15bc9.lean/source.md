# Complete source: GRWTSK.Algebra.GroupTheory.Subobjects.Variantca33e8031caafba16130febf59df20f7689e9684951de0a03b9a74de0ee15bc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce6a29bd3841bfd68c0f4bdb47b155fe81e623f5` · SHA-256 `ca33e8031caafba16130febf59df20f7689e9684951de0a03b9a74de0ee15bc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupRingAction.Basic
import Mathlib.GroupTheory.Subgroup.Basic

#align_import algebra.group_ring_action.subobjects from "leanprover-community/mathlib"@"f93c11933efbc3c2f0299e47b8ff83e9b539cbf6"

/-!
# Instances of `MulSemiringAction` for subobjects

These are defined in this file as `Semiring`s are not available yet where `Submonoid` and `Subgroup`
are defined.

Instances for `Subsemiring` and `Subring` are provided next to the other scalar actions instances
for those subobjects.

-/


variable {M G R : Type*}

variable [Monoid M] [Group G] [Semiring R]

/-- A stronger version of `Submonoid.distribMulAction`. -/
instance Submonoid.mulSemiringAction [MulSemiringAction M R] (H : Submonoid M) :
    MulSemiringAction H R :=
  { inferInstanceAs (DistribMulAction H R), inferInstanceAs (MulDistribMulAction H R)
    with smul := (· • ·) }
#align submonoid.mul_semiring_action Submonoid.mulSemiringAction

/-- A stronger version of `Subgroup.distribMulAction`. -/
instance Subgroup.mulSemiringAction [MulSemiringAction G R] (H : Subgroup G) :
    MulSemiringAction H R :=
  H.toSubmonoid.mulSemiringAction
#align subgroup.mul_semiring_action Subgroup.mulSemiringAction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b920d94de61eaeaffa54681a0d5c464b07192dd4ebcad1aef362e535b376590 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Subobjects/Variantca33e8031caafba16130febf59df20f7689e9684951de0a03b9a74de0ee15bc9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
