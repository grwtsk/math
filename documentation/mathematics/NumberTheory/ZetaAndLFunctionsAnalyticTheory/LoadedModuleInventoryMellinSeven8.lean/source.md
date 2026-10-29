# Loaded Module Inventory Mellin Seven8 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6590bc50e26924230d02b44b11904ed6b48f86d4` · SHA-256 `f7acdf9cc0f9a9e59a8c8fae1fbff957130f91602fb81e8d1d2322356fccbf11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiMellinSeven
set_option linter.style.header false
set_option linter.hashCommand false
set_option linter.style.setOption false
open Lean in
run_cmd do
  let names := (← getEnv).header.moduleNames
  for n in names do
    logInfo m!"RH16_LOADED {n}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60eb83f63bdf1c0079f3f9389881aedcee42195613a25a8c86470ac188fb43ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LoadedModuleInventoryMellinSeven8/Variantf7acdf9cc0f9a9e59a8c8fae1fbff957130f91602fb81e8d1d2322356fccbf11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
