# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mode.Variant2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a1524f484afeb3c45d27a789f6004580ff907e2` · SHA-256 `2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Objective

/-!
# Traversal mode semantics

The support relation is intentionally closed: mode names do not imply support
for objectives not represented by a constructor.
-/

namespace Mathematics.GraphAccess

inductive TraversalMode
  | bfs
  | dijkstra
  | astar
  | rotor
  | universalSequence
  | debruijn
  | lowDiscrepancy
  | recaman
  | obstruction
  | cylinder
deriving DecidableEq, Repr

def TraversalMode.productKind :
    TraversalMode → AccessProductKind
  | .bfs => .path
  | .dijkstra => .path
  | .astar => .path
  | .rotor => .coverage
  | .universalSequence => .coverage
  | .debruijn => .coverage
  | .lowDiscrepancy => .sample
  | .recaman => .proposal
  | .obstruction => .obstruction
  | .cylinder => .coverage

inductive Supports :
    TraversalMode → AccessObjective → Prop
  | bfs :
      Supports .bfs .minimumHop
  | dijkstra :
      Supports .dijkstra .minimumCost
  | dijkstraGoalFallback :
      Supports .dijkstra .goalDirectedCost
  | astar :
      Supports .astar .goalDirectedCost
  | rotor :
      Supports .rotor .fairExploration
  | universalSequence :
      Supports .universalSequence .universalCoverage
  | debruijn :
      Supports .debruijn .finitePatternCoverage
  | lowDiscrepancy :
      Supports .lowDiscrepancy .invariantSampling
  | recaman :
      Supports .recaman .multiscaleDiversification
  | obstruction :
      Supports .obstruction .primitiveObstruction
  | cylinder :
      Supports .cylinder .limitCylinderAccess

theorem Supports.productKind_eq
    {mode : TraversalMode}
    {objective : AccessObjective}
    (support : Supports mode objective) :
    mode.productKind = objective.productKind := by
  cases support <;> rfl

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ae98180d4274cc86993b8258b876d05e7d21658adc5e7e4fc5b4baee43a3b4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mode/Variant2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
