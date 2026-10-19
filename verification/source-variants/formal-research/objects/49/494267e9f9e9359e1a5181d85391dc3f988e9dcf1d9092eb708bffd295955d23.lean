import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.ModularWeight

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PrunedWitness where
  oldPath : String
  newPath : String
  oldWeight : Nat
  newWeight : Nat
  sameWeight : oldWeight = newWeight
  residueClass : String
  reason : String

def phase37Witness : PrunedWitness :=
  { oldPath := "formal/Think/Pipeline/Phases/Phase37_WeightScoring.lean"
    newPath := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "phase-table contraction preserving mirror Phase23" }

def classifierWeightScoreWitness : PrunedWitness :=
  { oldPath := "formal/Think/Poles/ClassifierPole/WeightScore.lean"
    newPath := "formal/Think/Poles/Classifier.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "pole-family contraction preserving classifier scoring residue" }

theorem phase37Witness_preservesWeight :
    phase37Witness.oldWeight = phase37Witness.newWeight :=
  phase37Witness.sameWeight

end Think.RadoProjectedModularHeatflow
