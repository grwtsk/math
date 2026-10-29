# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BoundaryTest.Varianta98dc59b147f492118c93f4e37c1c05bcd63e87df692123fa1b7920a8f240577

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c7ad13a6a3a30ad9dceb4d0dbe7157478171404` · SHA-256 `a98dc59b147f492118c93f4e37c1c05bcd63e87df692123fa1b7920a8f240577`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SmallDivisorBudget

open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

example (x : ℝ) (hx : 0 ≤ x) :
    |∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius n : ℝ)| ≤ x := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, |(ArithmeticFunction.moebius n : ℝ)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _n ∈ Finset.Icc 1 ⌊x⌋₊, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro n _
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
    _ = (⌊x⌋₊ : ℝ) := by simp
    _ ≤ x := Nat.floor_le hx

example (A : ℝ) (hA : 1 ≤ A) (m : ℝ) (hm : |m| ≤ A ^ 2) :
    |m * SourceSampling.sourceSamplingKernel A (A ^ 2)| ≤
      8 * A + 4 * Real.sqrt (65 / 3) := by
  have hA0 : 0 < A := by linarith
  have hp : |SourceSampling.sourceSamplingKernel A (A ^ 2)| ≤
      (8 + 4 * Real.sqrt (65 / 3) / A) / A := by
    simpa only [Real.sqrt_sq hA0.le] using
      SourceSampling.sourceSamplingKernel_abs_le A (A ^ 2) hA (sq_pos_of_pos hA0)
  rw [abs_mul]
  calc
    _ ≤ A ^ 2 * ((8 + 4 * Real.sqrt (65 / 3) / A) / A) :=
      mul_le_mul hm hp (abs_nonneg _) (sq_nonneg A)
    _ = _ := by field_simp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9978099d68c53e8b0a3b43cba078b84fdceb0d7dbc83cfec49cd3465b0e9334 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryTest/Varianta98dc59b147f492118c93f4e37c1c05bcd63e87df692123fa1b7920a8f240577.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
