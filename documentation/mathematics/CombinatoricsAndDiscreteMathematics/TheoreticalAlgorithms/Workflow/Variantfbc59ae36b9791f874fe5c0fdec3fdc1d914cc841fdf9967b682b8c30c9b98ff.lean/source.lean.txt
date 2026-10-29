import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.TemporalKG

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure WorkflowStepRecord where
  stepVertex : MemoryVertex
  observation : String
  action : String
  summary : String
  stepIsWorkflow : stepVertex.kind = MemoryKind.workflowStep

structure WorkflowCompiler where
  currentTrajectory : List WorkflowStepRecord
  compiledPattern : String
  similarWorkflowKeys : List String
  nextStepSuggestion : Option String

def WorkflowCompiler.hasSuggestion (c : WorkflowCompiler) : Bool :=
  c.nextStepSuggestion.isSome

end Think.RadoProjectedModularHeatflow.MemoryCore
