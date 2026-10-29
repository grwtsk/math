# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.GaussianMoments.Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e17a4ba4323af0860aa6ad1fc6164b22ce52d35` · SHA-256 `686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Probability.Distributions.Gaussian.Real
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

open MeasureTheory ProbabilityTheory
open scoped ENNReal NNReal

namespace GaussianCenteredMoments

theorem integrable_id (v : ℝ≥0) :
    Integrable (fun x : ℝ => x) (gaussianReal 0 v) := by
  exact ((memLp_id_gaussianReal' (μ := 0) (v := v) 1 (by norm_num)).integrable
    (by norm_num)).congr (ae_of_all _ (fun x => id_eq x))

theorem integrable_square (v : ℝ≥0) :
    Integrable (fun x : ℝ => x ^ 2) (gaussianReal 0 v) := by
  simpa only [id] using (memLp_id_gaussianReal (μ := 0) (v := v) 2).integrable_sq

theorem integral_id_zero (v : ℝ≥0) :
    (∫ x : ℝ, x ∂gaussianReal 0 v) = 0 := by
  exact integral_id_gaussianReal

theorem integral_square (v : ℝ≥0) :
    (∫ x : ℝ, x ^ 2 ∂gaussianReal 0 v) = (v : ℝ) := by
  have h := variance_fun_id_gaussianReal (μ := 0) (v := v)
  rw [variance_eq_integral measurable_id'.aemeasurable] at h
  simpa using h

theorem integrable_abs (v : ℝ≥0) :
    Integrable (fun x : ℝ => |x|) (gaussianReal 0 v) := by
  exact (integrable_id v).abs

theorem integral_abs_le_sqrt (v : ℝ≥0) :
    (∫ x : ℝ, |x| ∂gaussianReal 0 v) ≤ Real.sqrt (v : ℝ) := by
  have habs : MemLp (fun x : ℝ => |x|) 2 (gaussianReal 0 v) := by
    exact (memLp_id_gaussianReal' (μ := 0) (v := v) 2 (by norm_num)).abs.ae_eq
      (ae_of_all _ (fun x => by simp only [Pi.abs_apply, id_eq]))
  have hnonneg := variance_nonneg (fun x : ℝ => |x|) (gaussianReal 0 v)
  rw [variance_eq_sub habs] at hnonneg
  simp only [Pi.pow_apply, sq_abs] at hnonneg
  rw [integral_square v] at hnonneg
  exact Real.le_sqrt_of_sq_le (by linarith)


end GaussianCenteredMoments
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab8d350943e270187311dac37cc31392ff1f39ab03639d3a44cc5c88fa47d4c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
