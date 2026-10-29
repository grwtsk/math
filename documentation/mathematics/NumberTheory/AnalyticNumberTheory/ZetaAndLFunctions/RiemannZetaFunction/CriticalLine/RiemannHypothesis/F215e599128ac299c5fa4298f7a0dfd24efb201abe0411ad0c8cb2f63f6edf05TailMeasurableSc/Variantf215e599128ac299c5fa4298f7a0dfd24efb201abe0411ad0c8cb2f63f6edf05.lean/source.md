# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.F215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05TailMeasurableSc.Variantf215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16d39e456c2b6de94be7319b2deed0affbefde9a` · SHA-256 `f215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.MeasureTheory.Integral.Prod

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set
noncomputable section

theorem stronglyMeasurable_thetaTail_scratch (q : ℕ) : StronglyMeasurable (thetaTail q) := by
  cases q with
  | zero => exact continuous_thetaPhi.stronglyMeasurable
  | succ q =>
    let F : ℝ × ℝ → ℝ := fun p =>
      thetaPhi p.2 * (p.2 - p.1) ^ q / (q.factorial : ℝ)
    have hF : StronglyMeasurable F :=
      (((continuous_thetaPhi.comp continuous_snd).mul
        ((continuous_snd.sub continuous_fst).pow q)).div_const _).stronglyMeasurable
    have hS : MeasurableSet {p : ℝ × ℝ | p.1 ≤ p.2} :=
      measurableSet_le measurable_fst measurable_snd
    have hi := (hF.indicator hS).integral_prod_right' (ν := volume)
    have he (t : ℝ) :
        (fun u => ({p : ℝ × ℝ | p.1 ≤ p.2}.indicator F) (t, u)) =
          (Ici t).indicator (fun u => thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)) := rfl
    simpa only [he, integral_indicator measurableSet_Ici, thetaTail] using hi

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55dd4bee706cdb4ec3d477897fffcc327bd3642c72040d772bee4553b8c41667 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05TailMeasurableSc/Variantf215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
