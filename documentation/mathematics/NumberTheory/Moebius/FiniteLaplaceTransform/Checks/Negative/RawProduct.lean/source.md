# Complete source: GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform.Checks.Negative.RawProduct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c0001d07aa566e374035f9c117556b49a2d0474` · SHA-256 `c9562ad4c53e5d88d319ce6ae42e1dbfd323c15a91dbbd338aa75f80ccb69cff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
open GRWTSK.RiemannHypothesis.CCC
example (s : ℂ) : pickupDirichletPrefix 3 s =
    (1-Complex.exp (-s*Real.log 2))*(1-Complex.exp (-s*Real.log 3)) := by
  exact cutoff_three_not_raw_product s
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d0965e691c1d2258fe5b8f948dfefb13ba53e67166836bdf7965827569baf64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform/Checks/Negative/RawProduct.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
