# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualHighLagMixedSignFixtures.Variant002d5170b8296337e0e38343181a55e91225686ff74c525a8ba0827d2e0b5211

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92b9000b341de354e4e0d070065ea1dd2ed15485` · SHA-256 `002d5170b8296337e0e38343181a55e91225686ff74c525a8ba0827d2e0b5211`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualHighLagMixedSign

/-!
UNCOMPILED hostile fixtures. The actual source sign is the sole target here;
literal high-cell membership and a corrected arithmetic-operator representation
are separate obligations. No actual RH estimate or arithmetic refutation follows.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualHighLagMixedSignFixtures

open SourceActualHighLagMixedSign SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem exact_actual_negative_value :
    -deriv (deriv (sourceCorrelation explicitSecondDerivative 10)) 19 +
        sourceCorrelation explicitSecondDerivative 10 19 / 4 =
      -(134860219395915291461 / 548111646720000000000000 : ℝ) :=
  actual_mixed_kernel_ten_nineteen

theorem actual_mixed_atom_is_not_nonnegative :
    ¬ 0 ≤ -deriv (deriv (sourceCorrelation explicitSecondDerivative 10)) 19 +
      sourceCorrelation explicitSecondDerivative 10 19 / 4 :=
  not_le_of_gt actual_mixed_kernel_ten_nineteen_neg

theorem positive_correlation_does_not_make_mixed_atom_positive :
    0 < sourceCorrelation explicitSecondDerivative 10 19 ∧
      -deriv (deriv (sourceCorrelation explicitSecondDerivative 10)) 19 +
        sourceCorrelation explicitSecondDerivative 10 19 / 4 < 0 :=
  ⟨actual_correlation_ten_nineteen_pos, actual_mixed_kernel_ten_nineteen_neg⟩

theorem sign_uses_plus_derivative_pairing :
    (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative 10) x *
      deriv (normalizedTest explicitSecondDerivative 10) (x - 19)) +
    (∫ x : ℝ, normalizedTest explicitSecondDerivative 10 x *
      normalizedTest explicitSecondDerivative 10 (x - 19)) / 4 < 0 :=
  actual_shifted_plus_quarter_pairing_neg

theorem universal_atom_positivity_is_not_available :
    ¬ ∀ t : ℝ, 0 ≤ -deriv (deriv (sourceCorrelation explicitSecondDerivative 10)) t +
      sourceCorrelation explicitSecondDerivative 10 t / 4 :=
  not_all_actual_mixed_atoms_nonneg

end FormalResearch.RiemannHypothesis.ActualHighLagMixedSignFixtures
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df2b321317dc6483504e4cd916f438f9c9c7fcfaa2d61e2f663c505887eba62a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHighLagMixedSignFixtures/Variant002d5170b8296337e0e38343181a55e91225686ff74c525a8ba0827d2e0b5211.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
