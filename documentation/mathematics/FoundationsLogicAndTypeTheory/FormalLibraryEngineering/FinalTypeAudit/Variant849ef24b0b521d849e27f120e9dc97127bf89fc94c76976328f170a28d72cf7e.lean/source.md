# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinalTypeAudit.Variant849ef24b0b521d849e27f120e9dc97127bf89fc94c76976328f170a28d72cf7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a80dd9715fda2bac0249a0f35f9cdc3423fe5f91` · SHA-256 `849ef24b0b521d849e27f120e9dc97127bf89fc94c76976328f170a28d72cf7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.FiniteExternalInputs

#check CommonMeanStieltjes.actual_finite_bounds_with_external_literature_inputs
#print axioms CommonMeanStieltjes.actual_finite_bounds_with_external_literature_inputs
#print CommonMeanScratch.CompletePositiveVerifiedHeight
#print CommonMeanScratch.CorrectedBellottiWongCount
#print CommonMeanScratch.zeroCountMain
#print CommonMeanScratch.correctedBellottiWongError

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0b8237218d67b7c72e5b168f5237d66f7b38760ca7fa172e84cd69d527d1c03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinalTypeAudit/Variant849ef24b0b521d849e27f120e9dc97127bf89fc94c76976328f170a28d72cf7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
