/-
OctahedralIntegerDirections — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7
Organized SHA-256: 97a4dad0defab0ab44eb7cbac2ebdcea9c4e8e8289f04c46de4994c246ebea2d
PMD: 510.7.100.010.010 integer lattices (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole three-Int tuple record, exact axis coordinates, norm-square/negation and actual unit/opposite finite-case proof; integer-data navigation only, no lattice axioms. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Cube.PrismaticGeometry.OctahedralChain
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SourceComponents.Varianta39bd7ea7b0bed5f.OctahedralDirectionShadowData

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

structure OctahedralExactVectorExport where
  x : Int
  y : Int
  z : Int
deriving Repr, DecidableEq

def octahedralExactDirection :
    OctahedralVertex → OctahedralExactVectorExport
  | .x .positive => ⟨1, 0, 0⟩
  | .x .negative => ⟨-1, 0, 0⟩
  | .y .positive => ⟨0, 1, 0⟩
  | .y .negative => ⟨0, -1, 0⟩
  | .z .positive => ⟨0, 0, 1⟩
  | .z .negative => ⟨0, 0, -1⟩

def octahedralExactNormSquared
    (vector : OctahedralExactVectorExport) : Int :=
  vector.x * vector.x + vector.y * vector.y + vector.z * vector.z

def octahedralNegateExactVector
    (vector : OctahedralExactVectorExport) : OctahedralExactVectorExport :=
  ⟨-vector.x, -vector.y, -vector.z⟩

def OctahedralExactDirectionSound : Prop :=
  ∀ direction : OctahedralVertex,
    octahedralExactNormSquared (octahedralExactDirection direction) = 1 ∧
    octahedralExactDirection (octahedralOpposite direction) =
      octahedralNegateExactVector (octahedralExactDirection direction)

theorem octahedralExactDirectionSoundProof :
    OctahedralExactDirectionSound := by
  intro direction
  cases direction with
  | x sign => cases sign <;> exact ⟨rfl, rfl⟩
  | y sign => cases sign <;> exact ⟨rfl, rfl⟩
  | z sign => cases sign <;> exact ⟨rfl, rfl⟩

end PrismaticGeometry
end Cube
end Boolean
