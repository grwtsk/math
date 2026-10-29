# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixInventoryMissingIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0a009b6cad2ac8ce40600dad1c3a9efc6305dea` · SHA-256 `348537a1ba82e4430ee3f1b5d79df0e873619d1658b1a370588c9e6d94765cdf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixInventory

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory.Checks.Positive

/- Equal endpoints cannot supply the missing equality of complete actual histories. -/
example : falseOccurrence = trueOccurrence :=
  parallel_same_endpoint
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23a267738020ae83c0a216270536b79e3ed2a01def2cafee5b633a3e02dfb735 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixInventoryMissingIdentity__SourceOccurrence9ca3d7297960a0fa194df649.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
