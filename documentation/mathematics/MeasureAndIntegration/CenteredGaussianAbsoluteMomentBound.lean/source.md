# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.CenteredGaussianAbsoluteMomentBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6612a35282f87cfcda95a3708fa5b6c3d2406079` · SHA-256 `0a0f97fc4a861767c0fd69fdbaa325f8119183efdf2f79579cabbb973fed4553`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Centered Gaussian absolute-moment upper bound
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The source statements remain centered at mean zero and quantified over every nonnegative variance parameter, including zero. Only the displayed first/second moments and absolute-moment upper bound are retained; no general moment formula or new probabilistic limit theorem is asserted.
-/
import Mathlib.Probability.Distributions.Gaussian.Real
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.CenteredGaussianPolynomialMoments

open MeasureTheory ProbabilityTheory
open scoped ENNReal NNReal

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.CenteredGaussian

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


end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.CenteredGaussian
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86f8a1c5f29b2bb63f130569bb15291a2a3e31cf9d274c73231a36d9320a4438 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/CenteredGaussianAbsoluteMomentBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
