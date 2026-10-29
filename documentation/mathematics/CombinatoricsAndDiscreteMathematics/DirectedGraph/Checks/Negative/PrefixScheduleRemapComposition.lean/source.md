# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixScheduleRemapComposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8a1ca3ce990348e9e3ed260f1e2464b0c218a53` · SHA-256 `bfa4b4dff8615c1fb7cd79fbfa5c5807cc7f7edc127ed01459f586378456e296`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableSchedule

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule.Checks.Positive

/-- Actual direct final lookup cannot supply the image lost by partial remap composition. -/
example : composedLookup = some 2 := direct_lookup_some
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3326e5f6bb0836a22959c28cdfaa49b5ba2ef2102f8d30694fd225870e610c4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixScheduleRemapComposition.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
