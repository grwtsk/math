# Source Reduced Off Axis Estimate Consumer — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d55b23c3a509d467b5d8200d86b33960c5d27db2` · SHA-256 `c28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualReducedZeroHeight
import SourceResidualBudget
import SourceLeadingCesaroPropagation

/-!
Complete the original all-real and sharp leading consumers of the genuine
reduced-height off-axis head. The signed arithmetic J witness remains explicit.
Only the actual omitted all-zero tail and archimedean allowance are paid.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceReducedOffAxisEstimateConsumer
open SourceActualReducedZeroHeight SourceActualCriticalZeroHead SourceActualZeroTailBudget
open SourceLeadingCesaroPropagation SourceLeadingTailBudget SourcePairing RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

def reducedOffAxisAllowance (A0 A : ℝ) : ℝ :=
  (18 * (162826 / 7623 : ℝ)) / (2 * A^2) + actualReducedZeroEnvelope A0 A / 2

def reducedOffAxisResidualBudget (A0 J S : ℝ) : ℝ :=
  (archimedeanMultiplier 0 + J) / 2 + reducedOffAxisAllowance A0 S

theorem reducedOffAxisAllowance_le_at_radius {A0 S A : ℝ}
    (hA0 : 1 ≤ A0) (hS : 200 ≤ S) (hA : S ≤ A) :
    reducedOffAxisAllowance A0 A ≤ reducedOffAxisAllowance A0 S := by
  have hSp : 0 < S := by linarith
  have hAp : 0 < A := by linarith
  have hc : 0 ≤ actualZeroTailWeightConstant := by
    unfold actualZeroTailWeightConstant
    positivity
  unfold reducedOffAxisAllowance actualReducedZeroEnvelope
  gcongr

theorem residual_tail_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R ≤ A →
      mertensResidual A ≤ reducedOffAxisResidualBudget A0 J (max 200 R) := by
  obtain ⟨A0, hA0, hb⟩ := actualResidual_reducedOffAxisHead_upper
  refine ⟨A0, hA0, fun A hA => ?_⟩
  have h200 : 200 ≤ A := (le_max_left _ _).trans hA
  have hr := hb A h200
  have hh := hhead A ((le_max_right _ _).trans hA)
  have he := reducedOffAxisAllowance_le_at_radius hA0 (le_max_left 200 R) hA
  unfold reducedOffAxisResidualBudget reducedOffAxisAllowance at *
  linarith

theorem all_real_lower_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (max 200 R))
        (archimedeanMultiplier 0 -
          2 * reducedOffAxisResidualBudget A0 J (max 200 R)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨A0, hA0, hb⟩ := residual_tail_of_reduced_offAxis_lower J R hhead
  refine ⟨A0, hA0, ?_⟩
  exact all_real_source_lower_of_residual_tail _ _
    (by linarith [le_max_left (200 : ℝ) R]) hb

theorem estimate_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨A0, _, hb⟩ := all_real_lower_of_reduced_offAxis_lower J R hhead
  exact ⟨min (originalPrefixLower (max 200 R))
    (archimedeanMultiplier 0 - 2 * reducedOffAxisResidualBudget A0 J (max 200 R)), hb⟩

theorem leading_tail_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, max 25600 (max 200 R) ≤ A →
      actualLeadingRenormalizedTail A ≤ reducedOffAxisResidualBudget A0 J (max 200 R) -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  obtain ⟨A0, hA0, hb⟩ := residual_tail_of_reduced_offAxis_lower J R hhead
  refine ⟨A0, hA0, fun A hA => ?_⟩
  exact actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
    (hb A ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceReducedOffAxisEstimateConsumer
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44318d03cea47983c1399355e49cf1d7115f93fd65b1ff8341a30d4e0fb86768 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
