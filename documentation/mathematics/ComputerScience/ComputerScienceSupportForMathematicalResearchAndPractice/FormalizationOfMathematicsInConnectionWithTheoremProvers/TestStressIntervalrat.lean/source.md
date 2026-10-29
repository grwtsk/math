# Test Stress Intervalrat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eba17d6962c45336727c62176f6e50814aecee48` · SHA-256 `7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Core.IntervalRat.Taylor

open LeanCert.Core

-- Raw interval computations (debug-style).
#eval
  let I := IntervalRat.expPointComputable (1 / 2) 15
  dbg_trace "exp(1/2): [{I.lo}, {I.hi}]"
  pure ()

#eval
  let I := IntervalRat.sinhPointComputable (1 / 2) 15
  dbg_trace "sinh(1/2): [{I.lo}, {I.hi}]"
  pure ()

#eval
  let I := IntervalRat.atanhPointComputable (1 / 3) 15
  dbg_trace "atanh(1/3): [{I.lo}, {I.hi}]"
  pure ()
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e5bb0c6f73a5dc30805edcdbb0a0f986d15aced3883f7ac0901189c88d77a24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestStressIntervalrat/Variant7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
