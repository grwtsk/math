# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.B9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971DiagonalScaleAud.Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4b855796c7cda5607c1fdd1050916bb658b84c2` · SHA-256 `b9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanDiagonalArithmetic
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.mobiusDiagonal
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.mobiusDiagonal
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.mobiusDiagonal_one_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.mobiusDiagonal_one_le
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_nonneg
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_nonneg
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_harmonic_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_harmonic_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_log_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_log_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_source_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_source_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.diagonal_budget_source_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.diagonal_budget_source_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.no_diagonal_budget_tail_upper_bound
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.no_diagonal_budget_tail_upper_bound

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanDiagonalArithmetic EstimateVaughanSource EstimatePlainKernel
example (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : p.Prime)
    (hUp : vaughanCutoff A < p) :
    shortVaughanCoefficient (vaughanCutoff A) (p ^ 2) * sourcePlainWeight A (p ^ 2) +
      (ArithmeticFunction.vonMangoldt p * EstimateVaughanIdentity.beta (vaughanCutoff A) p) *
        sourcePlainWeight A (p ^ 2) = Real.log (p : ℝ) * sourcePlainWeight A (p ^ 2) :=
  prime_square_short_diagonal_remainder _ _ (vaughanCutoff_pos A hA) hp hUp _
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26f0bf1f789c2859210a38a9139d90f625e5ea32aa578ae3660facdad95db22a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/B9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971DiagonalScaleAud/Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
