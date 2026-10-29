-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AngleRatio.Variant75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AngleRatio.Variant75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f","mathematical_subject":"Foundations.Unclassified","original_sha256":"75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/PrismaticGeometry/AngleRatio.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.PrismaticGeometry.DirectionFrame

/-!
# Angles as ratios around the null point

Angles are finite ratios: an integer numerator over a positive denominator
of arcs in one full turn around the null point. No complex analytic theorem
is asserted here; an "e^{πi}-style" interpretation is a `PhaseRealization`
certificate, never a built-in theorem. Finite geometry syntax is not
prismatic theorem authority.

Object index: `AngleRatio`, `AngleRatio.fullTurn`, `AngleRatio.zero`,
`DirectionFrame.angleOf`, `DirectionFrame.orientedAngle`,
`binary_zeroToOne_to_oneToZero_half_turn`, `PhaseRealization`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AngleRatio.Variant75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f

universe u

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-- A finite angle ratio around the null point. -/
structure AngleRatio where
  numerator : Int
  denominator : Nat
  denominatorPositive : denominator > 0
deriving Repr

/-- One full turn, expressed with denominator `d`. -/
def AngleRatio.fullTurn (d : Nat) (h : d > 0) : AngleRatio :=
  { numerator := Int.ofNat d
    denominator := d
    denominatorPositive := h }

/-- The zero angle, expressed with denominator `d`. -/
def AngleRatio.zero (d : Nat) (h : d > 0) : AngleRatio :=
  { numerator := 0
    denominator := d
    denominatorPositive := h }

/-- The angle coordinate of a direction in its frame. -/
def DirectionFrame.angleOf
    (F : DirectionFrame)
    (d : F.Direction) : AngleRatio :=
  { numerator := F.phaseNumerator d
    denominator := F.fullTurnDenominator
    denominatorPositive := F.fullTurnPositive }

/-- The oriented angle from one direction to another. -/
def DirectionFrame.orientedAngle
    (F : DirectionFrame)
    (a b : F.Direction) : AngleRatio :=
  { numerator := F.phaseNumerator b - F.phaseNumerator a
    denominator := F.fullTurnDenominator
    denominatorPositive := F.fullTurnPositive }

/-- In the binary frame, the oriented angle from `[0,1]` to `[1,0]` is
measured in half-turns. -/
theorem binary_zeroToOne_to_oneToZero_half_turn :
    (binaryDirectionFrame.orientedAngle
      BinaryDirection.zeroToOne
      BinaryDirection.oneToZero).denominator = 2 :=
  rfl

/--
A phase realization of a direction frame into a target carrier. Unit-circle
membership, full-turn periodicity, and the opposite-is-half-turn property
are explicit proof fields; nothing analytic is built in.
-/
structure PhaseRealization (F : DirectionFrame) (Target : Type u) where
  phase : F.Direction → Target
  unitCircleSound : Prop
  unitCircleProof : unitCircleSound
  fullTurnSound : Prop
  fullTurnProof : fullTurnSound
  oppositeIsHalfTurn : Prop
  oppositeIsHalfTurnProof : oppositeIsHalfTurn

end PrismaticGeometry
end Cube
end Boolean
