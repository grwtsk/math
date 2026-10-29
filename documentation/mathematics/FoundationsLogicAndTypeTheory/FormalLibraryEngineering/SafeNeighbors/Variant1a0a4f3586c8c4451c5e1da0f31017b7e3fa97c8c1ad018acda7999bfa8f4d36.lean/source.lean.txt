import Mathematics.SemiLocalDefect.ResidueDeflection.Graph
import Mathematics.GraphAccess.NeighborEnumeration

/-!
# Safe canonical neighbors

The existing complete neighbor enumeration is specialized by the certified
safe admissibility profile.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

def safeNeighborEnumeration
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (scope : RelationScope graph)
    (digest : ProfileDigest) :
    NeighborEnumeration
      graph scope cut.admissibility :=
  NeighborEnumeration.canonical
    graph scope cut.admissibility digest

theorem safeNeighbor_endpoints
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (scope : RelationScope graph)
    (digest : ProfileDigest)
    (node : graph.Node)
    (arc : Arc graph)
    (member :
      arc ∈
        (safeNeighborEnumeration
          cut scope digest).neighbors node) :
    (cut.residue arc.tail).Safe ∧
      (cut.residue arc.head).Safe := by
  have eligible :=
    (safeNeighborEnumeration
      cut scope digest).sound node arc member
  have safeArc :
      cut.safeArc arc = true :=
    (cut.admitted_arc_iff_safe arc).mp
      eligible.2.2
  exact cut.safeArc_endpoints arc safeArc

end Mathematics.SemiLocalDefect.ResidueDeflection
