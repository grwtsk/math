# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianLogWindowMissingBox

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e06e34bed38de60eda0a94c1a16875bbfe08f9ad` · SHA-256 `36c5ccf9a7d71c3fa32de16d5c834dcb7ce883b44828e22230fd0f05ac3c1b40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: the actual nonzero window does not have a zero support box. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianLogWindow
open GRWTSK.Analysis.MellinTransform.GaussianLogWindow
open GRWTSK.Analysis.MellinTransform.GaussianLogWindow.Checks
example : ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
    (∫t : ℝ,(1+‖t‖)^0*‖gaussianJointDensity exampleWindow exampleWindow_compact R t‖)≤C*R^(-(1:ℝ)) :=
  gaussianLogWindow_fourier_moment exampleWindow exampleWindow_compact 0 (le_refl (0:ℝ)) (le_refl (0:ℝ)) 1 0
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=690906925d2406765fdceb82b61957638c4b6ed0c4a526c14db1df102cd7b296 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/GaussianLogWindowMissingBox.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
