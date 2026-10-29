# Complex Determinant — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aff1ad9a1eb61142160cf8e8650afec8caabfb6` · SHA-256 `85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Data.Complex.Module
import Mathlib.LinearAlgebra.Determinant

/-!
# Determinants of maps in the complex numbers as a vector space over `ℝ`

This file provides results about the determinants of maps in the complex numbers as a vector
space over `ℝ`.

-/


namespace Complex

/-- The determinant of `conjAe`, as a linear map. -/
@[simp]
theorem det_conjAe : LinearMap.det conjAe.toLinearMap = -1 := by
  rw [← LinearMap.det_toMatrix basisOneI, toMatrix_conjAe, Matrix.det_fin_two_of]
  simp

/-- The determinant of `conjAe`, as a linear equiv. -/
@[simp]
theorem linearEquiv_det_conjAe : LinearEquiv.det conjAe.toLinearEquiv = -1 := by
  rw [← Units.eq_iff, LinearEquiv.coe_det, AlgEquiv.toLinearEquiv_toLinearMap, det_conjAe,
    Units.coe_neg_one]

end Complex
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f7292d4260f229ba82ceddd2e997da67860c8b96ff57bb35287602a3b3773bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
