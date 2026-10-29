# Count Occurrences Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c91c121c9c2dc59baa056d7d1c737cbdf0e2d014` · SHA-256 `e4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.CountOccurrences
#print CommonMeanStieltjes.PositiveOccurrenceWindow
#print CommonMeanStieltjes.PositiveCountFibres
#check CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#print axioms CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#check CommonMeanStieltjes.positive_occurrence_window_finite
#print axioms CommonMeanStieltjes.positive_occurrence_window_finite
#check CommonMeanStieltjes.positive_occurrence_window_card_eq_count
#print axioms CommonMeanStieltjes.positive_occurrence_window_card_eq_count
open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21e9f8f6ade2360c9ea2694657ea62f2df8e0226c311dcc3177c74d15f76e2c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountOccurrencesAudit/Variante4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
