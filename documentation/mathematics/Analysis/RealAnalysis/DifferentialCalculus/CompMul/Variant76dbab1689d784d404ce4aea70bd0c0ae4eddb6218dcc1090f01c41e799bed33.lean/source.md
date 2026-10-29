# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompMul.Variant76dbab1689d784d404ce4aea70bd0c0ae4eddb6218dcc1090f01c41e799bed33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a1cff6c19da7a2cf0befd371dd425c5c6788472` · SHA-256 `76dbab1689d784d404ce4aea70bd0c0ae4eddb6218dcc1090f01c41e799bed33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.FDeriv.Equiv
import Mathlib.Analysis.Calculus.Deriv.Mul

/-!
# Derivative of `x ↦ f (cx)`

In this file we prove that the derivative of `fun x ↦ f (c * x)`
equals `c` times the derivative of `f` evaluated at `c * x`.

Since Mathlib uses `0` as the fallback value for the derivatives whenever they are undefined,
the theorems in this file require neither differentiability of `f`,
nor assumptions like `UniqueDiffWithinAt 𝕜 s x`.
-/

open Set
open scoped Pointwise

variable {𝕜 E : Type*} [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {c : 𝕜} {f : 𝕜 → E} {f' : E} {s : Set 𝕜} {x : 𝕜}

theorem hasDerivWithinAt_comp_mul_left_smul_iff :
    HasDerivWithinAt (f <| c * ·) (c • f') s x ↔ HasDerivWithinAt f f' (c • s) (c * x) := by
  simp only [hasDerivWithinAt_iff_hasFDerivWithinAt, ← smul_eq_mul,
    ← hasFDerivWithinAt_comp_smul_smul_iff]
  simp only [ContinuousLinearMap.one_smulRight_eq_toSpanSingleton,
    ContinuousLinearMap.toSpanSingleton_smul]

variable (c f s x) in
theorem derivWithin_comp_mul_left :
    derivWithin (f <| c * ·) s x = c • derivWithin f (c • s) (c * x) := by
  simp only [← smul_eq_mul]
  rw [← derivWithin_const_smul', derivWithin, derivWithin,
    fderivWithin_comp_smul_eq_fderivWithin_smul, Pi.smul_def]

variable (c f x) in
theorem deriv_comp_mul_left : deriv (f <| c * ·) x = c • deriv f (c * x) := by
  simp only [← smul_eq_mul, deriv, fderiv_comp_smul, ContinuousLinearMap.smul_apply]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8892b568ebbfef159d0e5c491fd3b1a6c62088b49f5f16bd144f80670e27dc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompMul/Variant76dbab1689d784d404ce4aea70bd0c0ae4eddb6218dcc1090f01c41e799bed33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
