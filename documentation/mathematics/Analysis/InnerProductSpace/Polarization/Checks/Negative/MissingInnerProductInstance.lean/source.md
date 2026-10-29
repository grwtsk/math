# Complete source: GRWTSK.Analysis.InnerProductSpace.Polarization.Checks.Negative.MissingInnerProductInstance

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a8e5b54f144fd527d3b20580b52b7972e948a44` · SHA-256 `9dfea39685cd8069833b92b8236659b26610012ec09681c50e1e250e7b39cf29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Polarization
open GRWTSK.Analysis.Polarization
open scoped InnerProductSpace
example {E : Type*} [NormedAddCommGroup E] (x y : E) : ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := real_inner_eq_signed_norm_square x y
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8fddd5763f466b3e0ab8adc373426d7246d44d36e59a40eba9981d4c582794e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/Polarization/Checks/Negative/MissingInnerProductInstance.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
