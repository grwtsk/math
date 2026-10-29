# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianWindowMissingRootFactor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f95e6e193fa81e740b8a25c70c7468c539993fb` · SHA-256 `ce09a5a803778f75a2da288d554bef9f11f8c112414e42f2325c29e202a1c6b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentional omitted-root-factor control. Apache-2.0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.CompactGaussianWindow
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow.Checks

-- Intended rejection: the normalized-window equality cannot supply the omitted-factor equality.
example : rootWeight unnormalizedWindow (3/4) =
    dyadicAnnulus (3/4)*gaussianMellinProfile (3/4) :=
  correctWindow_normalizes
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b42486a31fb67956dfa212cba2f6b58da1f9f750cdc98e2759c806a55776394 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/GaussianWindowMissingRootFactor.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
