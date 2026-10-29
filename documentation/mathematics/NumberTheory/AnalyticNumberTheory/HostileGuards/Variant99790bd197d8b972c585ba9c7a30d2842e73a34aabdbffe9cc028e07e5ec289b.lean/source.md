# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.HostileGuards.Variant99790bd197d8b972c585ba9c7a30d2842e73a34aabdbffe9cc028e07e5ec289b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8439dbd006f5ec45c9b6bbfbd182cdffb736347c` · SHA-256 `99790bd197d8b972c585ba9c7a30d2842e73a34aabdbffe9cc028e07e5ec289b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature

set_option autoImplicit false
noncomputable section
namespace IndependentPairedTailQuadratureGuards

open FormalResearch.RiemannHypothesis
open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedPrimeAverages
open SourceFirstPrimeAbel SourcePairedContrastResidual SourceDiagonalMainTerm
open WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

example : primeLogError 0 = 0 := by
  simp only [primeLogError, primeLogPrefix_zero, sub_self]

example {A : ℝ} (hA : 1 ≤ A) : negativeSurvival A 0 ≠ 0 := by
  rw [negativeSurvival_at_zero hA]
  norm_num

example {A : ℝ} (hA : 1 ≤ A) : pairedTailTest A (-(2 * A)) ≠ 0 := by
  have h := pairedTailTest_ge_one_left hA (le_refl (-(2 * A)))
  linarith

example {A : ℝ} (hA : 1 ≤ A) :
    primeLogSum (2 * A) (pairedTailTest A) ≠ pairedErrorContrast A := by
  have h := pairedErrorContrast_eq_prime_quadrature hA
  have hd := pairedTailTest_drift_pos hA
  linarith

example {A : ℝ} (hA : 1 ≤ A) :
    primeLogSum (2 * A) (pairedTailTest A) + criticalContinuousMoment A -
      negativeTimeMean A = pairedErrorContrast A := by
  have h := pairedErrorContrast_eq_prime_quadrature hA
  linarith

example {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A + primeLogSum (2 * A) (pairedTailTest A) -
      (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A) =
      pairedResidualRemainder A := by
  rw [mertensResidual_eq_paired_quadrature_remainder hA]
  ring

example : MertensResidualTailUpperBound ↔ PairedPrimeQuadratureTailLowerBound :=
  mertens_residual_tail_iff_pairedQuadrature_tail

end IndependentPairedTailQuadratureGuards
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbe9d92886a812f07f2f4989d42a01de78fe33b308399477c73b9a4b899c562b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/HostileGuards/Variant99790bd197d8b972c585ba9c7a30d2842e73a34aabdbffe9cc028e07e5ec289b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
