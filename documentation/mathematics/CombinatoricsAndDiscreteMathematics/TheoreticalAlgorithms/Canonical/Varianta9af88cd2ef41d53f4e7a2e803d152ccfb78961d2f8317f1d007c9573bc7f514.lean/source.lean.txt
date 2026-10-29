import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Prune

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

def idealPrunedTree : List String :=
  [ "formal/Think/Pipeline/Phases/PhaseTable.lean"
  , "formal/Think/Pipeline/Phases/PhaseSymmetry.lean"
  , "formal/Think/Pipeline/Phases/PhaseResidue.lean"
  , "formal/Think/Poles/Request.lean"
  , "formal/Think/Poles/Carrier.lean"
  , "formal/Think/Poles/Lowering.lean"
  , "formal/Think/Poles/Trace.lean"
  , "formal/Think/Poles/Compact.lean"
  , "formal/Think/Poles/Classifier.lean"
  , "formal/Think/Poles/Scheduler.lean"
  , "formal/Think/Poles/Cluster.lean"
  , "formal/Think/Poles/Boundary.lean"
  , "formal/Think/SourceTree/RadoProjected/Canonical.lean"
  ]

theorem idealPrunedTree_count :
    idealPrunedTree.length = 13 := by
  rfl

structure CompressionRule where
  originalPattern : String
  canonicalTarget : String
  action : String
deriving DecidableEq, Repr

def compressionRules : List CompressionRule :=
  [ { originalPattern := "Pipeline/Phases/PhaseNN_*.lean"
      canonicalTarget := "Pipeline/Phases/PhaseTable.lean"
      action := "fold into indexed phase records" }
  , { originalPattern := "Poles/*Pole/*.lean"
      canonicalTarget := "Poles/<Family>.lean"
      action := "merge family" }
  , { originalPattern := "ResearchSurvey/<topic>.lean"
      canonicalTarget := "ResearchSurvey/Corpus.lean"
      action := "convert to SurveyEntry" }
  , { originalPattern := "Think/FiniteWitnessResidue/Tests/*Smoke.lean"
      canonicalTarget := "Think/FiniteWitnessResidue/Tests/Smoke.lean"
      action := "merge smoke suites" }
  ]

theorem compressionRules_count :
    compressionRules.length = 4 := by
  rfl

end Think.RadoProjectedModularHeatflow
