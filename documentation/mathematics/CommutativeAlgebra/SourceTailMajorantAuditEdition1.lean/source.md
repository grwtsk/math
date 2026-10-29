# Source Tail Majorant Audit Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a55ceca7afe460cbc4db0894cb36d96da261bab1` · SHA-256 `017102e2322d696a7579ae3dcf8fbceebd5070ce4bcc24c215aa32d95b5b45f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_20261004.FiveModeSourceTailMajorant

#check CommonMeanScratch.transform_polynomial_sharp_budget
#print axioms CommonMeanScratch.transform_polynomial_sharp_budget
#check CommonMeanScratch.actual_bilateral_sharp_tail_bound
#print axioms CommonMeanScratch.actual_bilateral_sharp_tail_bound
#check CommonMeanScratch.actual_source_absolute_tail_majorant
#print axioms CommonMeanScratch.actual_source_absolute_tail_majorant

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4d9d34f5c46919a2958e8fcc1957b0ed2db07fcb14ce605efef3821edc85a59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SourceTailMajorantAudit/Variant017102e2322d696a7579ae3dcf8fbceebd5070ce4bcc24c215aa32d95b5b45f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
