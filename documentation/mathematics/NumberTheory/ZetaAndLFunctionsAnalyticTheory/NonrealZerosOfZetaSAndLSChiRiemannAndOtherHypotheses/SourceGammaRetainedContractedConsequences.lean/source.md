# Source Gamma Retained Contracted Consequences — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a628cc7db9fdc35a398a88663d67b46bdc2e1fa4` · SHA-256 `4c8f966fc7a7f26e9cc3a6084b9f708f6d11b51b43831ac13de2f40240773a6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceGammaRetainedMomentConsequences

/-!
Source-matched actual contracted-I consumers retain the same positive gamma
boundary. They use the exact native I=-closedMoment identity once, with no
additional arithmetic assumption, clipping, block gain or smoothing charge.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceGammaRetainedContractedConsequences
open MeasureTheory SourceActualClosedXiSignedMoment SourceLeadingTailBudget
open RH16ResumeBudget SourcePositiveSampling SourcePairing RH16ActualPsiNegativeBlock
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- Exact sign conversion of the actual contracted full-Xi integral. -/
theorem closed_moment_upper_of_contracted_lower (J A : ℝ) (hA : 1 ≤ A)
    (hI : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    actualClosedXiSignedMoment A ≤ J := by
  rw [actual_contracted_pairing_eq_neg_closed_moment A hA] at hI
  linarith only [hI]

theorem residual_upper_of_contracted_Xi (J R A : ℝ) (hR : 91 ≤ R) (hRA : R ≤ A)
    (hI : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    mertensResidual A ≤ J - 13 / 16 + criticalBaselineCorrection R :=
  SourceGammaRetainedMomentConsequences.residual_upper_of_closed_moment J R A hR hRA
    (closed_moment_upper_of_contracted_lower J A (by linarith) hI)

theorem all_real_lower_of_contracted_Xi (J R : ℝ) (hR : 91 ≤ R)
    (hI : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (J - 13 / 16 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply SourceGammaRetainedMomentConsequences.all_real_lower_of_closed_moment J R hR
  intro A hRA
  exact closed_moment_upper_of_contracted_lower J A (by linarith) (hI A hRA)

theorem estimate_of_contracted_Xi (J R : ℝ) (hR : 91 ≤ R)
    (hI : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceGammaRetainedMomentConsequences.estimate_of_closed_moment J R hR
  intro A hRA
  exact closed_moment_upper_of_contracted_lower J A (by linarith) (hI A hRA)

theorem leading_upper_of_contracted_Xi (J R A : ℝ) (hR : 91 ≤ R)
    (hA : max 25600 R ≤ A)
    (hI : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    actualLeadingRenormalizedTail A ≤ J - 13 / 16 + criticalBaselineCorrection R -
      (riemannZeta (1 / 2)).re + 3103 / 50 :=
  SourceGammaRetainedMomentConsequences.leading_upper_of_closed_moment J R A hR hA
    (closed_moment_upper_of_contracted_lower J A
      (by linarith [(le_max_right 25600 R).trans hA]) hI)

theorem leading_tail_of_contracted_Xi (J R : ℝ) (hR : 91 ≤ R)
    (hI : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ J - 13 / 16 + criticalBaselineCorrection R -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  exact leading_upper_of_contracted_Xi J R A hR hA
    (hI A ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceGammaRetainedContractedConsequences
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=638ee076e478a73fa69e01ed746ea528db6ac975ea8e3a8ab060fa8aa846deaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGammaRetainedContractedConsequences/Variant4c8f966fc7a7f26e9cc3a6084b9f708f6d11b51b43831ac13de2f40240773a6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
