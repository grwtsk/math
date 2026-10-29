# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Varianta382077fe2a2db25fe591192a597082ce3620059e7402b1b0bcccd23816fdb96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c45e91681b7090c6b41bdcf5a372a303081cb3c` · SHA-256 `a382077fe2a2db25fe591192a597082ce3620059e7402b1b0bcccd23816fdb96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-! Test that `simp` can prove some lemmas about derivatives. -/

open Real

example (x : ℝ) : deriv (fun x => cos x + 2 * sin x) x = -sin x + 2 * cos x := by
  simp

example (x : ℝ) :
    deriv (fun x ↦ cos (sin x) * exp x) x = (cos (sin x) - sin (sin x) * cos x) * exp x := by
  simp; ring

/- for more complicated examples (with more nested functions) you need to increase the
`maxDischargeDepth`. -/

example (x : ℝ) :
    deriv (fun x ↦ sin (sin (sin x)) + sin x) x =
    cos (sin (sin x)) * (cos (sin x) * cos x) + cos x := by
  simp (maxDischargeDepth := 3)

example (x : ℝ) :
    deriv (fun x ↦ sin (sin (sin x)) ^ 10 + sin x) x =
    10 * sin (sin (sin x)) ^ 9 * (cos (sin (sin x)) * (cos (sin x) * cos x)) + cos x := by
  simp (maxDischargeDepth := 4)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c70fbbbba61a113c875eda6253bc6a6cff5ade1a20acba83815e876d71948b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta382077fe2a2db25fe591192a597082ce3620059e7402b1b0bcccd23816fdb96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
