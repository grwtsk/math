# Complete source: GRWTSK.Analysis.ErrorBounds.SublinearUnbounded

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `546753f8854ed37946c88d533f622f3e39f97d24` · SHA-256 `8e61d153c895360468d904adda0d75b192c3b808d2064eaab65e920ed6a097cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Tactic

/-! Rate separation for S3 of the status manuscript and its Axiom 5/Resolution
candidates. This is an assistant-proposed counterexample, not an arithmetic error
sequence from the papers. Sublinear growth does not imply a uniform bound. -/
namespace GRWTSK.Analysis.ErrorBounds

/-- √n is eventually below every positive linear budget. -/
theorem sqrt_eventually_le_linear (ε : ℝ) (hε : 0 < ε) :
    ∃ N : ℕ, ∀ n : ℕ, N ≤ n → Real.sqrt (n : ℝ) ≤ ε * n := by
  obtain ⟨N, hN⟩ := exists_nat_gt ((1 / ε) ^ 2)
  refine ⟨N, fun n hn => ?_⟩
  have hnn : (N : ℝ) ≤ n := by exact_mod_cast hn
  have hs := Real.sq_sqrt (show 0 ≤ (n : ℝ) by positivity)
  have hp := Real.sqrt_nonneg (n : ℝ)
  have hi : 0 < 1 / ε := one_div_pos.mpr hε
  have hr : 1 / ε < Real.sqrt (n : ℝ) := by nlinarith
  have he : 1 < ε * Real.sqrt (n : ℝ) := by
    have := (mul_lt_mul_of_pos_left hr hε)
    simpa [ne_of_gt hε] using this
  nlinarith [mul_nonneg (le_of_lt (sub_pos.mpr he)) hp]

/-- The same sublinear sequence exceeds every fixed real bound. -/
theorem sqrt_not_uniformly_bounded :
    ¬ ∃ C : ℝ, ∀ n : ℕ, Real.sqrt (n : ℝ) ≤ C := by
  rintro ⟨C, hC⟩
  obtain ⟨N, hN⟩ := exists_nat_gt ((max C 0 + 1) ^ 2)
  have hs := Real.sq_sqrt (show 0 ≤ (N : ℝ) by positivity)
  have hp := Real.sqrt_nonneg (N : ℝ)
  have hc := hC N
  have hm := le_max_left C 0
  have hm0 := le_max_right C 0
  nlinarith
end GRWTSK.Analysis.ErrorBounds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e8c48b450dabe7947d394fdc4d06ef373e42215d9a617466d8d1b9a5eade381 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/SublinearUnbounded.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
