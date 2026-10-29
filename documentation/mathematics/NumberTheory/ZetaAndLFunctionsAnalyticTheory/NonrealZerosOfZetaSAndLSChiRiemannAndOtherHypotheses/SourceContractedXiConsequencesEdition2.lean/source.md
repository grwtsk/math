# Source Contracted Xi Consequences Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f368b9dcbbbe3d1355591e618d3644b4ac5532d` · SHA-256 `b5c329225df5f19c3bbc149c435beb32de0204712be49c8e4827b24097b83ca4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFullXiOuterContraction
import SourceLeadingCesaroPropagation
import SourceResidualBudget

/-!
Propagate the exact complete finite Xi contraction to the original residual,
an explicit original all-real lower constant, and the sharp leading readout.
The joint signed arithmetic lower witness remains an explicit input.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceContractedXiConsequences
open MeasureTheory
open SourceFullXiOuterContraction SourceLeadingCesaroPropagation
open SourceActualPsiInverseSquare SourcePositiveSampling SourcePairing
open RH16ActualPsiNegativeBlock
open SourceFirstAtomSignedWork RH16ResumeBudget
open RH16ResumeApplication SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem residual_upper_of_contracted_Xi (J A : ℝ) (hA : 91 ≤ A)
    (hJ : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    mertensResidual A ≤ J - 3 / 8 + criticalBaselineCorrection 91 := by
  exact residual_upper_of_remaining_signed_lower J 91 A (by norm_num) hA
    (remaining_lower_of_contracted_pairing J A hA hJ)

theorem all_real_lower_of_contracted_Xi (J : ℝ)
    (hJ : ∀ A : ℝ, 91 ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 * (J - 3 / 8 + criticalBaselineCorrection 91)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (J - 3 / 8 + criticalBaselineCorrection 91) 91 (by norm_num)
  intro A hA
  exact residual_upper_of_contracted_Xi J A hA (hJ A hA)

theorem actual_leading_upper_of_contracted_Xi (J A : ℝ) (hA : 25600 ≤ A)
    (hJ : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection 91 -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ hA
  exact residual_upper_of_contracted_Xi J A (by linarith) hJ

end
end FormalResearch.RiemannHypothesis.SourceContractedXiConsequences
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c126e84ed9f65415384a709babe20f54f5a506debd6f8722bd9b947feff20ef2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceContractedXiConsequences/Variantb5c329225df5f19c3bbc149c435beb32de0204712be49c8e4827b24097b83ca4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
