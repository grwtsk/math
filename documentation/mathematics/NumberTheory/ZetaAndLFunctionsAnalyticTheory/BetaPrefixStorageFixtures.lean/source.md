# Beta Prefix Storage Fixtures — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc40020a5d2da4cbf098429cd5ec7e5b8148bf01` · SHA-256 `d94f32d465acac424a43bd2c5b79cdad326547c87a73e2659f1ff418580b6411`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceBetaPrefixStorage

/-! UNCOMPILED hostile fixtures: cyclic wrap, nonzero mean, and necessary lower endpoint. -/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.BetaPrefixStorageFixtures

open ArithmeticFunction SourceBetaPrefixStorage

noncomputable section

theorem wraparound_difference_is_not_zero :
    divisorStorage 2 2 - divisorStorage 2 1 = (1 / 4 : ℝ) := by
  norm_num [divisorStorage]

theorem actual_signed_prefix_mean_two_nonzero :
    centeredPrefixMean 2 = -(1 / 4 : ℝ) := by
  norm_num [centeredPrefixMean, divisorMean,
    show Finset.Icc 1 2 = {1, 2} by decide, moebius_apply_prime Nat.prime_two]

theorem mean_cannot_be_erased_from_divisor_prefix :
    divisorPrefix 2 2 3 ≠ divisorStorage 2 4 - divisorStorage 2 3 := by
  norm_num [divisorPrefix, divisorStorage]

theorem lower_abel_endpoint_cannot_be_erased :
    (∑ k ∈ Finset.Ico 3 4, divisorPrefix 2 2 k * (1 : ℝ)) ≠
      divisorMean 2 2 * (∑ k ∈ Finset.Ico 3 4, (1 : ℝ)) +
        divisorStorage 2 4 * (1 : ℝ) -
        ∑ k ∈ Finset.Ico 3 4, divisorStorage 2 (k + 1) * ((1 : ℝ) - 1) := by
  norm_num [show Finset.Ico 3 4 = {3} by decide,
    divisorPrefix, divisorMean, divisorStorage]

end
end FormalResearch.RiemannHypothesis.BetaPrefixStorageFixtures
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56992aeec721b13a07e95406e6da10f223084267a1be55092eab79b297f33340 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BetaPrefixStorageFixtures/Variantd94f32d465acac424a43bd2c5b79cdad326547c87a73e2659f1ff418580b6411.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
