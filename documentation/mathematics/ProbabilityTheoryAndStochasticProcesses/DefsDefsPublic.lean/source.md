# Defs Defs Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `539cddaec231984390bff50d370eef7332909761` · SHA-256 `cef4f2743166aa4c5512852b0f5276f62a0e8fae8813a34a133d4e41ca2e6aa2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Probability.Combinatorics.BinomialRandomGraph.Defs

open MeasureTheory Measure ProbabilityTheory unitInterval

namespace SimpleGraph
variable {V : Type*} {p : I}

-- This should be restated as an equality of distributions now
-- https://github.com/leanprover-community/mathlib4/pull/28248 is in.
proof_wanted binomialRandom_map_ncard_edgeSet_singleton [Finite V] (n : ℕ) :
    G(V, p).map (fun G ↦ G.edgeSet.ncard) {n} = ((Nat.card V).choose 2).choose n * toNNReal p ^ n *
      toNNReal (σ p) ^ ((Nat.card V).choose 2 - n)

end SimpleGraph
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8310885d8b459d6612f4375c4e0a25b514d116d6062e37b3376de1babe166e8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variantcef4f2743166aa4c5512852b0f5276f62a0e8fae8813a34a133d4e41ca2e6aa2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
