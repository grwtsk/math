# Complete source: GRWTSK.Analysis.ComplexAnalysis.FiniteExternalInputs.Variantee836637d424494227aae3e1af92432a35d9ce8a5e52e734dea72823ec9c1d71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c0a089e8be8cb73194b2b41085ab2949a8f1713` · SHA-256 `ee836637d424494227aae3e1af92432a35d9ce8a5e52e734dea72823ec9c1d71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.CountBudget
import scratch.common_mean_20261004.FiveModeFiniteExternal
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
Final finite literal-source theorem with only the two published external inputs
left explicit. Actual multiplicity counting, strict Stieltjes convergence,
endpoint subtraction, the corrected count-integral budget and source adapters
are proved; the literature inputs have no accepted Lean instances in this lane.
The result is finite, conditional, and does not supply an all-scale arithmetic
witness or an unconditional RH theorem.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Complete-height and literal corrected counting inputs are named hypotheses;
all adapter and rational-bound premises of the finite source result are proved. -/
theorem actual_finite_bounds_with_external_literature_inputs
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (hBW : CorrectedBellottiWongCount) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply actual_finite_bounds_of_verified_height_and_sixth_tail hverified
    (actual_positive_sixth_summable 3000000000000 (by norm_num))
  exact actual_positive_sixth_count_bound 3000000000000
    (Real.exp_one_lt_three.le.trans (by norm_num)) hBW

end CommonMeanStieltjes
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e2a4284d6606dc812f0a9c233f599d77358a3242cd9d90db422e0253a984c16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/FiniteExternalInputs/Variantee836637d424494227aae3e1af92432a35d9ce8a5e52e734dea72823ec9c1d71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
