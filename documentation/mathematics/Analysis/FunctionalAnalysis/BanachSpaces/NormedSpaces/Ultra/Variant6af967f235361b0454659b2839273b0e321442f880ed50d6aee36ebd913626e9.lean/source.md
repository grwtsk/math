# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Ultra.Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a39c2617fb5905af858205751f50b6122b11e642` · SHA-256 `6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jiedong Jiang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiedong Jiang
-/

import Mathlib.Analysis.Normed.Field.Ultra
import Mathlib.Analysis.Normed.Module.Basic

/-!
# Normed algebra preserves ultrametricity

This file contains the proof that a normed division ring over an ultrametric field is ultrametric.
-/

variable {K L : Type*} [NormedField K]

variable (L) in
/--
The other direction of `IsUltrametricDist.of_normedAlgebra`.
Let `K` be a normed field. If a seminormed ring `L` is a normed `K`-algebra, and `‖1‖ = 1` in `L`,
then `K` is ultrametric (i.e. the norm on `L` is nonarchimedean) if `F` is.
This can be further generalized to the case where `‖1‖ ≠ 0` in `L`.
-/
theorem IsUltrametricDist.of_normedAlgebra' [SeminormedRing L] [NormOneClass L] [NormedAlgebra K L]
    [h : IsUltrametricDist L] : IsUltrametricDist K :=
  ⟨fun x y z => by
    simpa using h.dist_triangle_max (algebraMap K L x) (algebraMap K L y) (algebraMap K L z)⟩

variable (K) in
/--
Let `K` be a normed field. If a normed division ring `L` is a normed `K`-algebra,
then `L` is ultrametric (i.e. the norm on `L` is nonarchimedean) if `K` is.
-/
theorem IsUltrametricDist.of_normedAlgebra [NormedDivisionRing L] [NormedAlgebra K L]
    [h : IsUltrametricDist K] : IsUltrametricDist L := by
  rw [isUltrametricDist_iff_forall_norm_natCast_le_one] at h ⊢
  exact fun n => (algebraMap.coe_natCast (R := K) (A := L) n) ▸ norm_algebraMap' L (n : K) ▸ h n

variable (K L) in
/--
Let `K` be a normed field. If a normed division ring `L` is a normed `K`-algebra,
then `L` is ultrametric (i.e. the norm on `L` is nonarchimedean) if and only if `K` is.
-/
theorem IsUltrametricDist.normedAlgebra_iff [NormedDivisionRing L] [NormedAlgebra K L] :
    IsUltrametricDist L ↔ IsUltrametricDist K :=
  ⟨fun _ => IsUltrametricDist.of_normedAlgebra' L, fun _ => IsUltrametricDist.of_normedAlgebra K⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4b246a4e3504124ee248d8a840840d45f61ef77d794092a8b822f2f02d41be6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
