/-!
Mathlib topology patch boundary.

This marker records local topology patches without importing the patch corpus.
-/

namespace Formal.Patches.Mathlib.Topology

def conceptualSubdirectories : List String :=
  [ "MetricSpace"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 1 := by
  rfl

end Formal.Patches.Mathlib.Topology
