import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure HeatGraphPolicy where
  usesTreeEdges : Bool
  usesPhasePoleEdges : Bool
  usesTargetWitnessEdges : Bool
  usesAggregatorEdges : Bool
deriving DecidableEq, Repr

def selectedHeatGraph : HeatGraphPolicy :=
  { usesTreeEdges := true
    usesPhasePoleEdges := true
    usesTargetWitnessEdges := true
    usesAggregatorEdges := true }

def dominantHeatCluster : List String :=
  [ "formal/Think/Pipeline"
  , "formal/Think/Pipeline/Center"
  , "formal/Think/Pipeline/Phases"
  , "formal/Think/Poles"
  , "formal/Think/Residues"
  , "formal/Think/SourceTree"
  ]

theorem dominantHeatCluster_count :
    dominantHeatCluster.length = 6 := by
  rfl

end Think.RadoProjectedModularHeatflow
