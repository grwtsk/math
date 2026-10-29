# Mode Source Ratio — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db37997b070161344581325d18b89103230ffa4f` · SHA-256 `ceaad038d511c1898428d91e36ad637bed2a0164be5cfab0883dad5a9771de32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiModes
namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
example (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiTerm m t / thetaPhiTerm 0 t =
      ((m + 1 : ℕ) : ℝ)^2 * (2 * thetaModeA t * ((m + 1 : ℕ) : ℝ)^2 - 3) /
        (2 * thetaModeA t - 3) *
          Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ)^2 - 1)) := by
  have hA := thetaModeA_gt_three ht
  have hd : 2 * thetaModeA t - 3 ≠ 0 := by linarith
  rw [thetaPhiTerm_eq_mode, thetaPhiTerm_eq_mode]
  simp only [thetaModeY, Nat.cast_one, zero_add, one_pow, mul_one]
  have he : Real.exp (-(thetaModeA t * ((m + 1 : ℕ) : ℝ)^2)) =
      Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ)^2 - 1)) * Real.exp (-thetaModeA t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  field_simp [ne_of_gt Real.pi_pos, hd, Real.exp_ne_zero]
  <;> ring
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54026eba0135940e7d128a6c332243a9d9a340e3e60dafb14e7b18e595baf383 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ceaad038d511c1898428d91e36ad637bed2a0164be5cfab0883dad5a9771de32ModeSourceRatio/Variantceaad038d511c1898428d91e36ad637bed2a0164be5cfab0883dad5a9771de32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
