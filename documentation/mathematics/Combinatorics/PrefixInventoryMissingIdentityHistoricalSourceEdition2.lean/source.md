# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.PrefixInventoryMissingIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00e443ab24b076683f1628c079d180b9a5b1c1d2` · SHA-256 `b87f549dc5d0675d9139cab69bdd7fd1c8d21486510741e73e7fa915e0012d90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixInventory

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory.Checks.Positive

/- Equal endpoints cannot supply the missing equality of complete actual histories. -/
example : falseOccurrence = trueOccurrence :=
  parallel_same_endpoint
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4ee5ed62d97eacb99b45a0ab4ff4eeffe0ee6e2ad9d65b7e35ab5218bdf8a87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixInventoryMissingIdentity__SourceOccurrencec7224c27b91d570345e860ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
