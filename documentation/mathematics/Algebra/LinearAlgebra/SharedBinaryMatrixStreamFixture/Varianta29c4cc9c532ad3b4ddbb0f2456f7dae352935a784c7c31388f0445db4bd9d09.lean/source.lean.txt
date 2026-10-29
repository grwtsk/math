import Surface.Core.SharedBinaryMatrixStream

namespace Generated.SharedBinaryMatrixStream_b2acb562bea7a583

open Surface.Core.SharedBinaryMatrixStream

def generatedLayout : LayoutDescriptor 3 :=
  predictiveLayoutGenerator 3

theorem generatedLayout_valid : generatedLayout.Valid :=
  predictiveLayoutGenerator_sound 3

def generatedFrame : BinaryMatrixFrame 3 5 :=
  predictiveFrameGenerator 3 5 19 24

theorem generatedFrame_predicted :
    generatedFrame.PredictedBy 19 24 :=
  predictiveFrameGenerator_sound 3 5 19 24

def generatedEdit : MatrixCellEdit 3 5 where
  row := ⟨0, by decide⟩
  column := ⟨0, by decide⟩
  value := predictedBit 19 5 0 0

theorem generatedEdit_valid : generatedEdit.ValidFor 19 := by
  rfl

theorem generatedEdit_preserves_prediction :
    (generatedFrame.applyCellEdit generatedEdit).PredictedBy 19 24 :=
  generatedFrame.applyCellEdit_predictedBy generatedEdit
    generatedFrame_predicted generatedEdit_valid

example : streamBufferBytes 3 = 160 := by decide
example : eventWordCount = 8 := by decide

/-! Finite tension-routing and CIE XYZ examples.  These declarations exercise
the executable contract only; they do not certify a runtime transport. -/

def generatedHostNetwork : HostFiberNetwork 3 3 where
  fibers := fun _source ↦ ![
    { target := ⟨1, by decide⟩, tension := 7, enabled := true },
    { target := ⟨2, by decide⟩, tension := 12, enabled := true },
    { target := ⟨0, by decide⟩, tension := 12, enabled := true }
  ]

theorem generatedHostNetwork_valid : generatedHostNetwork.Valid := by
  native_decide

/-- Equal maximum tensions in slots one and two are resolved by the smaller
target host index, so slot two is selected. -/
theorem generatedHostNetwork_selection :
    generatedHostNetwork.selectOutgoingSlot ⟨0, by decide⟩ =
      some ⟨2, by decide⟩ := by
  native_decide

def generatedColorState : CieXyzState where
  revision := 24
  color := {
    xScaled := 950_470
    yScaled := 1_000_000
    zScaled := 1_088_830
  }

theorem generatedColorState_bounded : generatedColorState.color.Bounded := by
  native_decide

def generatedColorProposal : CieXyzProposal where
  baseRevision := 24
  color := {
    xScaled := 412_456
    yScaled := 212_673
    zScaled := 19_334
  }

theorem generatedColorProposal_valid :
    generatedColorProposal.ValidFor generatedColorState := by
  native_decide

theorem generatedColorProposal_preserves_bounds :
    (generatedColorState.applyProposal generatedColorProposal).color.Bounded :=
  generatedColorState.applyProposal_bounded generatedColorProposal
    generatedColorProposal_valid

def generatedColorEdit : CieXyzEdit where
  sourceRevision := 24
  expected := generatedColorState.color
  channel := .z
  value := 900_000

theorem generatedColorEdit_valid :
    generatedColorEdit.ValidFor generatedColorState := by
  native_decide

theorem generatedColorEdit_preserves_bounds :
    (generatedColorState.applyEdit generatedColorEdit).color.Bounded :=
  generatedColorState.applyEdit_bounded generatedColorEdit
    generatedColorEdit_valid

def generatedStaleColorEdit : CieXyzEdit :=
  { generatedColorEdit with sourceRevision := 23 }

example : verifyCieXyzEdit generatedColorState generatedStaleColorEdit = false := by
  native_decide

end Generated.SharedBinaryMatrixStream_b2acb562bea7a583
