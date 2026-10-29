# Trace — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09a9353088abccda6d866b00181c3e5a3519bbe6` · SHA-256 `90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Trace

example : True := by
  trace 2 + 2 + 3
  trivial

example : True := by
  trace "hello" ++ " world"
  trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f1d891efd61ae24263ee2ba91d8d60487f5f6a663b4dfc6c832714a0abdc7fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
