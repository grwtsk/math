# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfa97b086ba665da983b2e379536ae0d597b0002` · SHA-256 `adde8d6ded467401deed8766dd7c518244a2a14d2adc3ac87a8b63cd5d2d2ae9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightNonzero
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps

/-!
# Strict sign of the real exceptional mixed-coordinate weight

The existing stage-two/three determinant is positive, while the
stage-three/four strict pivot-integral chain supplies positivity
of the first real cofactor determinant. Thus the *real* exceptional
weight formed from these two real determinants is strictly negative.

This source-only algebra does not provide a new analytic observable,
classical Weil positivity, admissibility, density, or RH.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightSign

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot

/-- The genuine real first cofactor, made from the actual tent moments. -/
noncomputable def realFirstCofactor : ℝ :=
  realOrdinaryMoment 2 * realMultiplicativeMoment 1 -
    realOrdinaryMoment 1 * realMultiplicativeMoment 2

/-- The strict pivot-16 integral inequalities force a positive first
cofactor determinant. -/
theorem realFirstCofactor_pos : 0 < realFirstCofactor := by
  have hratio :=
    strict_ratio_of_pivot_gaps
      (realOrdinaryMoment 1) (realOrdinaryMoment 2)
      (realMultiplicativeMoment 1) (realMultiplicativeMoment 2)
      sixteenPivot
      (realOrdinaryMoment_pos 1) (realOrdinaryMoment_pos 2)
      stageFour_multiplicative_lt_sixteen_pivot
      stageThree_multiplicative_gt_sixteen_pivot
  exact cofactorZero_pos_of_ratio_order
    ⟨realOrdinaryMoment_pos 1, realOrdinaryMoment_pos 2⟩ hratio

/-- This is the real-number representation of the previously
constructed exceptional weight, not a new independent measurement. -/
noncomputable def realExceptionalWeight : ℝ :=
  -(twoTentMomentDeterminant / realFirstCofactor)

/-- The real exceptional weight is strictly negative. -/
theorem realExceptionalWeight_neg : realExceptionalWeight < 0 := by
  unfold realExceptionalWeight
  have hpositive : 0 < twoTentMomentDeterminant / realFirstCofactor :=
    div_pos twoTentMomentDeterminant_pos realFirstCofactor_pos
  linarith

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightSign
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1df46db18856a3ed6a7530ffe6ca9cb918d7e4313819ff2fe4075845947078ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentExceptionalWeightSign.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
