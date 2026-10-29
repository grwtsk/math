import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure ParentResidue where
  canonicalNode : String
  residueClass : String
  selfContribution : String
  childContribution : String
  lateralContribution : String
  boundaryCorrected : Prop
deriving Repr

def phaseTableResidue : ParentResidue :=
  { canonicalNode := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    residueClass := "Pipeline.PhaseTable"
    selfContribution := "indexed phase records"
    childContribution := "mirror phase entries"
    lateralContribution := "pole-family placements"
    boundaryCorrected := True }

end Think.RadoProjectedModularHeatflow
