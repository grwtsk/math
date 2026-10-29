/-
OctahedralFaceIncidence — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7
Organized SHA-256: 97a4dad0defab0ab44eb7cbac2ebdcea9c4e8e8289f04c46de4994c246ebea2d
PMD: 510.4.070.010 simplicial complexes (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole finite face-edge/vertex membership predicates and oriented vertex lists, unchanged original octahedral provider import. No export-record field narrowing. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Cube.PrismaticGeometry.OctahedralChain

/-!
# A concrete octahedral ratio-sphere extension

The exact finite cells, incidence data, fundamental two-chain, and closedness
proof live in `Boolean.Cube.PrismaticGeometry.OctahedralChain`. This module
extends that lower-level substrate with a null-centered direction frame, exact
north/south ratio charts, and runtime-facing export records.

The export records contain only stable identifiers, dimensions, integer
incidence coefficients, exact angle ratios, and chart membership. They are
intended as the runtime serialization boundary and supply no analytic or
prismatic-comparison authority.
-/

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-! ## Null-centered frame -/

def octahedralFaceContainsEdge
    (face : OctahedralFace) (edge : OctahedralEdge) : Bool :=
  (octahedralFaceBoundary face).any
    (fun term => if term.2 = edge then true else false)

def octahedralFaceContainsVertex
    (face : OctahedralFace) (vertex : OctahedralVertex) : Bool :=
  if vertex = .x face.xSign then true else
  if vertex = .y face.ySign then true else
  if vertex = .z face.zSign then true else false

/-- Runtime-oriented vertex order.  Negative fundamental coefficients reverse
the canonical `(x,y,z)` orientation to `(y,x,z)`. -/
def octahedralOrientedFaceVertices :
    OctahedralFace → List OctahedralVertex
  | ⟨.positive, .positive, .positive⟩ =>
      [.x .positive, .y .positive, .z .positive]
  | ⟨.negative, .positive, .positive⟩ =>
      [.y .positive, .x .negative, .z .positive]
  | ⟨.negative, .negative, .positive⟩ =>
      [.x .negative, .y .negative, .z .positive]
  | ⟨.positive, .negative, .positive⟩ =>
      [.y .negative, .x .positive, .z .positive]
  | ⟨.positive, .positive, .negative⟩ =>
      [.y .positive, .x .positive, .z .negative]
  | ⟨.negative, .positive, .negative⟩ =>
      [.x .negative, .y .positive, .z .negative]
  | ⟨.negative, .negative, .negative⟩ =>
      [.y .negative, .x .negative, .z .negative]
  | ⟨.positive, .negative, .negative⟩ =>
      [.x .positive, .y .negative, .z .negative]

end PrismaticGeometry
end Cube
end Boolean
