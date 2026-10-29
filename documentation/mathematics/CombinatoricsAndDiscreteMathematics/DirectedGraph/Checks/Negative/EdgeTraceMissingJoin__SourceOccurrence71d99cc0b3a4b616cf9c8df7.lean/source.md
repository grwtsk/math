# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.EdgeTraceMissingJoin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cb59abc196da51145e91c33af9ff96f437b90e1` · SHA-256 `af55cc73c2afeb9ae349272d5129d24ad7aefa149f7f36dae6ae09e035759ac6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.EdgeTrace

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.EdgeTrace

namespace GRWTSK.Combinatorics.DirectedGraph.EdgeTrace.Checks.Negative

local instance : Quiver Bool := ⟨fun _ _ => Bool⟩

def firstEdge : TotalEdge Bool := ⟨false, true, false⟩

def brokenEdge : TotalEdge Bool := ⟨false, false, true⟩

theorem valid_initial : ValidFrom false [firstEdge] := ⟨rfl, trivial⟩

theorem broken_join_rejected : ¬ ValidFrom false [firstEdge, brokenEdge] :=
  broken_join_not_valid false _ _ [] (by decide)

/- A valid initial edge does not prove the missing join for the full trace. -/
noncomputable example : PathStar false := decode false [firstEdge, brokenEdge] valid_initial

end GRWTSK.Combinatorics.DirectedGraph.EdgeTrace.Checks.Negative
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cee4875cd3a05f499981bfdf93e87af9d6939b2b5c2a2d458ba26643065f518a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
