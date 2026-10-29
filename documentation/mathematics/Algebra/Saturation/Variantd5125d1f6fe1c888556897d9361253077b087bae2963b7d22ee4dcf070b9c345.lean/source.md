# Complete source: GRWTSK.Algebra.Saturation.Variantd5125d1f6fe1c888556897d9361253077b087bae2963b7d22ee4dcf070b9c345

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b5304264c3440e6f93a187a2a801a7d4e42e22f` · SHA-256 `d5125d1f6fe1c888556897d9361253077b087bae2963b7d22ee4dcf070b9c345`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.Algebra.Group.Submonoid.Saturation
public import Mathlib.RingTheory.Localization.Basic

/-! # Localization and submonoid saturation

In this file we show that `A` is a localization of `R` on the submonoid `S` if and only if it is so
on the saturation of `S`.

Crucially, the saturation of `S` is precisely the elements that become a unit in `A`.

-/

@[expose] public section

namespace IsLocalization
variable {R : Type*} [CommRing R] {S T : Submonoid R} {A : Type*} [CommRing A] [Algebra R A]

open Submonoid

variable (S A) in
theorem mem_saturation_iff_isUnit_algebraMap [IsLocalization S A] {x : R} :
    x ∈ S.saturation ↔ IsUnit (algebraMap R A x) := by
  rw [IsLocalization.algebraMap_isUnit_iff S, Submonoid.mem_saturation_iff_exists_dvd]

@[simp]
theorem saturation_iff : IsLocalization S.saturation.toSubmonoid A ↔ IsLocalization S A :=
  .symm <| iff_of_le_of_exists_dvd _ _ le_toSubmonoid_saturation <| by
    simp [mem_saturation_iff_exists_dvd]

variable (S T) in
theorem of_saturation_eq [IsLocalization S A] (ih : S.saturation = T.saturation) :
    IsLocalization T A := by
  rwa [← saturation_iff, ← ih, saturation_iff]

variable (S T) in
theorem isLocalization_iff_of_saturation_eq (ih : S.saturation = T.saturation) :
    IsLocalization S A ↔ IsLocalization T A := by
  rw [← saturation_iff, ih, saturation_iff]

variable (S T) in
theorem ext_saturation [IsLocalization S A] [IsLocalization T A] : S.saturation = T.saturation :=
  SaturatedSubmonoid.ext <| Submonoid.ext fun x ↦ by
    simp [mem_saturation_iff_isUnit_algebraMap S A, mem_saturation_iff_isUnit_algebraMap T A]

end IsLocalization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d9e1604df5de728141bfbb8df2c649e8d2faf40044a7366e1125b96a327f77d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Saturation/Variantd5125d1f6fe1c888556897d9361253077b087bae2963b7d22ee4dcf070b9c345.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
