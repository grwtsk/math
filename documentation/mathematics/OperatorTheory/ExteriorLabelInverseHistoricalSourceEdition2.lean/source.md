# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.ExteriorLabelInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8389e78f681604792f9db67ff2ad628629fee12a` · SHA-256 `e4ec7b0839759059f42d153e12f9c5eabf0a22c061407991baca9b04dd5b2914`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.FreeIDS

-- The right inverse cut is false at exterior label zero: N0(-3)=0 but -2>-3.
example : freeEnergy 0 ≤ (-3:ℝ) := by
  norm_num [freeEnergy]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c94104e1a45bb8ea170406a61d47ae4f50880e867d87725d4ba79054039e1c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/ExteriorLabelInverse__SourceOccurrencedbb8a945bec1963e50815e45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
