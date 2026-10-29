# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeBounds.Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d53a93a5b11d2c7b7ce7e1211e0d68e21d0cba0` · SHA-256 `778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.IntervalAuto

open LeanCert.Core

def Icc01 : Set ℝ := Set.Icc (0:ℝ) 1

theorem edge_bound_def_seticc : ∀ x ∈ Icc01, x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_neg_interval : ∀ x ∈ Set.Icc (-2:ℝ) 2, x * x ≤ (4 : ℚ) := by
  interval_bound

theorem edge_bound_abs_interval : ∀ x ∈ Set.Icc (-1:ℝ) 1, abs x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_sqrt_upper : ∀ x ∈ Set.Icc (0:ℝ) 4, Real.sqrt x ≤ (2 : ℚ) := by
  interval_bound

theorem edge_bound_rpow_half : ∀ x ∈ Set.Icc (0:ℝ) 4, x ^ ((1:ℝ) / 2) ≤ (2 : ℚ) := by
  interval_bound

theorem edge_bound_rpow_inv_two : ∀ x ∈ Set.Icc (0:ℝ) 4, x ^ ((2:ℝ)⁻¹) ≤ (2 : ℚ) := by
  interval_bound

theorem edge_bound_rpow_three_halves :
    ∀ x ∈ Set.Icc (0:ℝ) 1, x ^ ((3:ℝ) / 2) ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_rpow_one_point_five :
    ∀ x ∈ Set.Icc (0:ℝ) 1, x ^ (1.5:ℝ) ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_sinh_upper : ∀ x ∈ Set.Icc (0:ℝ) 2, Real.sinh x ≤ (4 : ℚ) := by
  interval_bound 15

theorem edge_bound_cosh_lower : ∀ x ∈ Set.Icc (-1:ℝ) 1, (1 : ℚ) ≤ Real.cosh x := by
  interval_bound

theorem edge_bound_tanh_upper : ∀ x ∈ Set.Icc (-2:ℝ) 2, Real.tanh x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_tanh_lower : ∀ x ∈ Set.Icc (-2:ℝ) 2, (-1 : ℚ) ≤ Real.tanh x := by
  interval_bound

theorem edge_bound_pi_shift : ∀ x ∈ Icc01, x + Real.pi ≤ (5 : ℚ) := by
  interval_bound

theorem edge_bound_strict : ∀ x ∈ Icc01, x * x < (2 : ℚ) := by
  interval_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9a166905ef2f5c90d70d5107f44704f7e1098d743459d0b6d2bbe5855ccc1ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
