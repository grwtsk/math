# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SphereNormEquiv.Variantd0c253d94972cf76c77071b4cba1ec8adec7bb9bb1507aa0e84fa72535235413

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31f939927cbeae5f0e64a0d1b1a556949da75c17` · SHA-256 `d0c253d94972cf76c77071b4cba1ec8adec7bb9bb1507aa0e84fa72535235413`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.LinearAlgebra.Basis.VectorSpace

/-!
# Homeomorphism between a normed space and sphere times `(0, +∞)`

In this file we define a homeomorphism between nonzero elements of a normed space `E`
and `Metric.sphere (0 : E) 1 × Set.Ioi (0 : ℝ)`.
One may think about it as generalization of polar coordinates to any normed space.
-/

variable (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E]

open Set Metric

/-- The natural homeomorphism between nonzero elements of a normed space `E`
and `Metric.sphere (0 : E) 1 × Set.Ioi (0 : ℝ)`.

The forward map sends `⟨x, hx⟩` to `⟨‖x‖⁻¹ • x, ‖x‖⟩`,
the inverse map sends `(x, r)` to `r • x`.

One may think about it as generalization of polar coordinates to any normed space. -/
@[simps apply_fst_coe apply_snd_coe symm_apply_coe]
noncomputable def homeomorphUnitSphereProd :
    ({0}ᶜ : Set E) ≃ₜ (sphere (0 : E) 1 × Ioi (0 : ℝ)) where
  toFun x := (⟨‖x.1‖⁻¹ • x.1, by
    rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm,
      inv_mul_cancel₀ (norm_ne_zero_iff.2 x.2)]⟩, ⟨‖x.1‖, norm_pos_iff.2 x.2⟩)
  invFun x := ⟨x.2.1 • x.1.1, smul_ne_zero x.2.2.out.ne' (ne_of_mem_sphere x.1.2 one_ne_zero)⟩
  left_inv x := Subtype.eq <| by simp [smul_inv_smul₀ (norm_ne_zero_iff.2 x.2)]
  right_inv
  | (⟨x, hx⟩, ⟨r, hr⟩) => by
    rw [mem_sphere_zero_iff_norm] at hx
    rw [mem_Ioi] at hr
    ext <;> simp [hx, norm_smul, hr.le, abs_of_pos hr, hr.ne']
  continuous_toFun := by
    refine .prodMk (.codRestrict (.smul (.inv₀ ?_ ?_) ?_) _) ?_
    · fun_prop
    · simp
    · fun_prop
    · fun_prop
  continuous_invFun := by apply Continuous.subtype_mk (by fun_prop)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a98e844adf64de9a38241c3d920c9721c9a8c0f5a84e3ce8f0c934aa1cf08181 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SphereNormEquiv/Variantd0c253d94972cf76c77071b4cba1ec8adec7bb9bb1507aa0e84fa72535235413.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
