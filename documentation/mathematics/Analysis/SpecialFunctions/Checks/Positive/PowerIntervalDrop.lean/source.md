# Complete source: GRWTSK.Analysis.SpecialFunctions.Checks.Positive.PowerIntervalDrop

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b23fa9920ab2a9f88aa1f4618c2c8c2802acc398` · SHA-256 `f6a3cc90616c09164ecd2ac37d41d4939b02cf48543398b8696b779dbd9d15a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

open GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

example {x a : ℝ} (hx : 0 < x) (ha : 0 ≤ a) :
    x ^ (-a) - (x + 1) ^ (-a) ≤ a * x ^ (-a - 1) :=
  rpow_sub_rpow_add_one_le hx ha

#print axioms GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop.rpow_sub_rpow_add_one_le
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94fcd0583bc149cba14491aee0a0ec41a90efb80160b7c35c8630d75fff28f98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Checks/Positive/PowerIntervalDrop.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
