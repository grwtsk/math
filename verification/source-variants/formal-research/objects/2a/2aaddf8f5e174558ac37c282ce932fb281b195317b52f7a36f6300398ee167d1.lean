import DAF.Universe.Manifest

/-!
# Hypercubic declaration cells
-/

namespace DAF.Universe

/-- Evidence for one obligation axis.  Validity is a proposition whose witness
is optional until the axis is discharged. -/
structure AxisEvidence (node : TerrainNode) (Axis : Type) (axis : Axis) where
  evidenceId : StableId
  sourceDigest : Digest
  Valid : Prop

/-- Full finite obligation cube associated with a terrain node. -/
structure HypercubicCell (node : TerrainNode) where
  Axis : Type
  instFintypeAxis : Fintype Axis
  instDecidableAxis : DecidableEq Axis
  required : Finset Axis
  discharged : Axis → Bool
  evidence : (axis : Axis) → AxisEvidence node Axis axis
  identityDigest : Digest
  statementDigest : Digest
  dependencyDigest : Digest
  evidenceSound :
    ∀ axis, discharged axis = true → (evidence axis).Valid

attribute [instance] HypercubicCell.instFintypeAxis
  HypercubicCell.instDecidableAxis

namespace HypercubicCell

/-- Every required face of the obligation cube is discharged. -/
def Closed {node : TerrainNode} (cell : HypercubicCell node) : Prop :=
  ∀ axis ∈ cell.required, cell.discharged axis = true

/-- Discharged evidence contains an actual proof witness. -/
theorem evidence_present
    {node : TerrainNode}
    (cell : HypercubicCell node)
    (axis : cell.Axis)
    (discharged : cell.discharged axis = true) :
    (cell.evidence axis).Valid :=
  cell.evidenceSound axis discharged

/-- A face transition may change evidence but not semantic identity. -/
structure FaceTransition {node : TerrainNode}
    (source target : HypercubicCell node) : Prop where
  identity_preserved : source.identityDigest = target.identityDigest
  statement_preserved : source.statementDigest = target.statementDigest
  dependencies_preserved : source.dependencyDigest = target.dependencyDigest

theorem FaceTransition.trans
    {node : TerrainNode}
    {first second third : HypercubicCell node}
    (left : FaceTransition first second)
    (right : FaceTransition second third) :
    FaceTransition first third where
  identity_preserved := left.identity_preserved.trans right.identity_preserved
  statement_preserved := left.statement_preserved.trans right.statement_preserved
  dependencies_preserved :=
    left.dependencies_preserved.trans right.dependencies_preserved

end HypercubicCell

/-- A theorem-bearing cell carries the theorem proof as data. -/
structure TheoremCell (theoremNode : TerrainNode) (statement : Prop)
    extends HypercubicCell theoremNode where
  proof : statement

end DAF.Universe
