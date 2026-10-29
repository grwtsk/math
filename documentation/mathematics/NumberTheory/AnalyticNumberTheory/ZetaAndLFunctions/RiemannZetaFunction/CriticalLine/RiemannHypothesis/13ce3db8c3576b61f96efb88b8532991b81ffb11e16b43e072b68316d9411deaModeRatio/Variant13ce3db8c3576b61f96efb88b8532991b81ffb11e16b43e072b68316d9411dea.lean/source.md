# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411deaModeRatio.Variant13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `552a2c821556b17b41acb049f22ada2a05caf00c` · SHA-256 `13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

theorem scalar_mode_ratio_bound {A : ℝ} (hA : 3 ≤ A) (n : ℝ) :
    n ^ 2 * (2 * A * n ^ 2 - 3) / (2 * A - 3) ≤ 2 * n ^ 4 := by
  apply (div_le_iff₀ (by linarith : (0 : ℝ) < 2 * A - 3)).mpr
  have h : 0 ≤ 2 * (A - 3) * n ^ 4 + 3 * n ^ 2 := by
    positivity
  nlinarith only [h]

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1415e7788e4982dc1d644ae45657440e9f7060e83357b7d8179ba4e4d4faa687 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411deaModeRatio/Variant13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411dea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
