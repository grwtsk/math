# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianMissingNormalization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `baf6061f26e81b12e517390a29a4be995bec6be5` · SHA-256 `42e3e935998d40bea5b4bf8146e3f5f82dfc93d20102533f0aae0bafa6bc2abf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Omitting the actual normalization changes the Mellin value.
Mathematical direction grwtsk contributors; formal implementation OpenAI Codex.
Released under Apache-2.0; imported results retain their authorship and licenses. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian GaussianNormalizationControl

-- Intended rejection: the unnormalized profile is not the normalized profile.
example : mellin unnormalizedProfile 0 = 1 := by
  simpa using gaussianMellinProfile_mellin 0
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ce552b63ff34861ab1f95b08d12da0993269468f841a6fb0dda83cfc5ee41d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/GaussianMissingNormalization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
