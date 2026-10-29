# Signed Weighted Abel Endpoints — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3ee41513b1e682b5db3c2ed32dc19a079d0e0e5` · SHA-256 `725101b05ebcb3ff96b7faf4297141ca200e0f3458569d6a337d61679a92b704`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.WeightedPrimeAbel

open FormalResearch.RiemannHypothesis.WeightedPrimeAbel
open scoped BigOperators Interval

set_option autoImplicit false

-- A prime exactly at the upper endpoint contributes its original atom.
example (F : ℝ → ℝ) :
    primeLogWindow 0 (Real.log 2) F = Real.log 2 / 2 * F (Real.log 2) := by
  rw [primeLogWindow_eq_interval_sum 0 (Real.log 2) (Real.log_nonneg (by norm_num)) F]
  norm_num [Real.exp_log (by norm_num : (0 : ℝ) < 2), Finset.filter_singleton]
  simp [Nat.prime_two]

-- A prime exactly at the lower endpoint is excluded, while the next upper prime is included.
example (F : ℝ → ℝ) :
    primeLogWindow (Real.log 2) (Real.log 3) F = Real.log 3 / 3 * F (Real.log 3) := by
  rw [primeLogWindow_eq_interval_sum (Real.log 2) (Real.log 3)
    (Real.log_le_log (by norm_num) (by norm_num)) F]
  norm_num [Real.exp_log (by norm_num : (0 : ℝ) < 2),
    Real.exp_log (by norm_num : (0 : ℝ) < 3), Finset.filter_singleton]
  simp [Nat.prime_three]

-- Equal endpoint inventories cancel, even when that endpoint itself is a prime threshold.
example (F : ℝ → ℝ) : primeLogWindow (Real.log 2) (Real.log 2) F = 0 := by
  simp [primeLogWindow]

-- The unit atom has no prime contribution.
example (F : ℝ → ℝ) : primeLogSum 0 F = 0 := by
  norm_num [primeLogSum, primeLogInventory, Finset.filter_singleton]
  simp [Nat.not_prime_one]

-- Constant tests recover the signed difference of the actual closed prefixes.
example (a b : ℝ) :
    primeLogWindow a b (fun _ => (1 : ℝ)) = primeLogPrefix b - primeLogPrefix a := by
  simp [primeLogWindow, primeLogSum, primeLogPrefix_eq_sum]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=394bb508254e81f358c6c7c18971e6876d6fdf7b9f0f2ce97e1c3fcb50722d7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWeightedAbelEndpoints/Variant725101b05ebcb3ff96b7faf4297141ca200e0f3458569d6a337d61679a92b704.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
