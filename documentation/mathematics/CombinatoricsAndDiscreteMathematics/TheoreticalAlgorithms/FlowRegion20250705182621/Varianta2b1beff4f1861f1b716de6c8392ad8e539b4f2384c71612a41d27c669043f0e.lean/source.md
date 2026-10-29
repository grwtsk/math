# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlowRegion20250705182621.Varianta2b1beff4f1861f1b716de6c8392ad8e539b4f2384c71612a41d27c669043f0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38e15f43e3246f9c53933980de85ec12632a8db1` · SHA-256 `a2b1beff4f1861f1b716de6c8392ad8e539b4f2384c71612a41d27c669043f0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- lean/cognition/Core/FlowRegion.lean

namespace Cognition.Core

/--
`FlowRegion` models cognitive workload zones:

- `underloaded`: the user has spare capacity.
- `optimal`: operating near ideal focus.
- `overloaded`: overwhelmed or cognitively saturated.
-/
inductive FlowRegion
  /-- Region A: spare capacity. -/
  | underloaded
  /-- Region B: optimal cognitive workload. -/
  | optimal
  /-- Region C: overwhelmed or overloaded. -/
  | overloaded
  deriving DecidableEq, Repr

namespace FlowRegion

/-- All known flow regions in order of increasing load. -/
def all : List FlowRegion :=
  [underloaded, optimal, overloaded]

/-- Render a `FlowRegion` as a human-readable string. -/
def toString : FlowRegion → String
  | underloaded => "Underloaded"
  | optimal     => "Optimal"
  | overloaded  => "Overloaded"

instance : ToString FlowRegion := ⟨toString⟩

end FlowRegion

end Cognition.Core
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3175ee1b3da00e9eedf00c4a56e0afd9dbf7acff158a2d27862a0195eaba409 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlowRegion20250705182621/Varianta2b1beff4f1861f1b716de6c8392ad8e539b4f2384c71612a41d27c669043f0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
