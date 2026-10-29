
/- source-tree-label: STL1|L|addr=01011110|role=proof_code_atom|slug=pipeline-center-compactcentercontrol|owner=canonical_owner|core=Pipeline/Center/CompactCenterControl.lean|leaf=M506970656c696e652f43656e7465722f436f6d7061637443656e746572436f6e74726f6c2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

structure CompactCenterControl where
  hasSpine : Bool
  hasRoundtripStabilizer : Bool
  hasRadoHeatflow : Bool
  hasMemoryCentroid : Bool
  hasInnerOuterHeatflow : Bool
deriving Repr

def compactCenterControl : CompactCenterControl :=
  { hasSpine := true
    hasRoundtripStabilizer := true
    hasRadoHeatflow := true
    hasMemoryCentroid := true
    hasInnerOuterHeatflow := true }

theorem compactCenterControl_complete :
    compactCenterControl.hasSpine = true ∧
    compactCenterControl.hasRoundtripStabilizer = true ∧
    compactCenterControl.hasRadoHeatflow = true ∧
    compactCenterControl.hasMemoryCentroid = true ∧
    compactCenterControl.hasInnerOuterHeatflow = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

end Think.Compact
