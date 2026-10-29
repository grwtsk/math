/-
OctahedralDirectionShadowData — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7
Organized SHA-256: 97a4dad0defab0ab44eb7cbac2ebdcea9c4e8e8289f04c46de4994c246ebea2d
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole exact DirectionFrame and complete SphereShadow record value, every label/hash/finiteSound field and final stored dimension equality retained. No geometric realization or hash authority. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

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

def octahedralDirectionIndex : OctahedralVertex → Nat
  | .x .positive => 0
  | .y .positive => 1
  | .z .positive => 2
  | .x .negative => 3
  | .y .negative => 4
  | .z .negative => 5

def octahedralOpposite : OctahedralVertex → OctahedralVertex
  | .x .positive => .x .negative
  | .x .negative => .x .positive
  | .y .positive => .y .negative
  | .y .negative => .y .positive
  | .z .positive => .z .negative
  | .z .negative => .z .positive

def octahedralPolarity : OctahedralVertex → Int
  | .x sign | .y sign | .z sign => octahedralSignWeight sign

def octahedralPhaseNumerator : OctahedralVertex → Int
  | .x .positive => 0
  | .y .positive => 1
  | .z .positive => 2
  | .x .negative => 3
  | .y .negative => 4
  | .z .negative => 5

def OctahedralDirectionIndexSound : Prop :=
  ∀ direction, octahedralDirectionIndex direction < 6

theorem octahedralDirectionIndexSoundProof :
    OctahedralDirectionIndexSound := by
  intro direction
  cases direction with
  | x sign => cases sign <;> decide
  | y sign => cases sign <;> decide
  | z sign => cases sign <;> decide

/-- Six exact phase directions with antipodes separated by three sixth-turns. -/
def octahedralDirectionFrame : DirectionFrame where
  dim := 3
  Direction := OctahedralVertex
  directionIndex := octahedralDirectionIndex
  directionIndexSound := OctahedralDirectionIndexSound
  directionIndexProof := octahedralDirectionIndexSoundProof
  nullLabel := "octahedral null center"
  opposite := octahedralOpposite
  opposite_involutive := by
    intro direction
    cases direction with
    | x sign => cases sign <;> rfl
    | y sign => cases sign <;> rfl
    | z sign => cases sign <;> rfl
  polarity := octahedralPolarity
  fullTurnDenominator := 6
  fullTurnPositive := by decide
  phaseNumerator := octahedralPhaseNumerator

/-- Concrete two-sphere shadow centered at the octahedral null point. -/
def octahedralSphereShadow : NullCenteredSphereShadow where
  dim := 2
  directionFrame := octahedralDirectionFrame
  complex := octahedralCellComplex
  sphereChain := octahedralSphereChain
  sphereClosed := octahedralClosedSphereChain
  radiusLabel := "unit combinatorial radius"
  angularCoordinateHash := 6012008
  finiteSound :=
    OctahedralFiniteSound ∧
      OctahedralBoundarySquaredZero ∧
      OctahedralSphereClosed
  finiteSoundProof :=
    ⟨octahedralFiniteSoundProof,
     octahedralBoundarySquaredZeroProof,
     octahedralSphereClosedProof⟩

/-! ## Exact north/south ratio charts -/

/-- The coordinate frame is three-dimensional around an intrinsic 2-sphere. -/
theorem octahedralAmbientDimensionSound :
    octahedralSphereShadow.directionFrame.dim =
      octahedralSphereShadow.dim + 1 := by
  rfl

end PrismaticGeometry
end Cube
end Boolean
