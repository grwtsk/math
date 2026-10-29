import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.All
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Canonical

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

inductive SourcePrimitive where
  | zepGraphiti
  | graphGuidedRAG
  | workflowEpisodicMemory
  | hybridEpisodicProceduralMemory
  | remem
  | radoProjectedModularHeatflow
deriving DecidableEq, Repr

structure PrimitiveRole where
  primitive : SourcePrimitive
  role : String
  importedAsAuthority : Bool
deriving DecidableEq, Repr

def primitiveRoles : List PrimitiveRole :=
  [ { primitive := .zepGraphiti
      role := "temporal KG strata and bi-temporal memory fields"
      importedAsAuthority := false }
  , { primitive := .graphGuidedRAG
      role := "boundary recall operators over local graph neighborhoods"
      importedAsAuthority := false }
  , { primitive := .workflowEpisodicMemory
      role := "trajectory compilation and similar-workflow next-step hints"
      importedAsAuthority := false }
  , { primitive := .hybridEpisodicProceduralMemory
      role := "tool graph transitions with episodic edge summaries"
      importedAsAuthority := false }
  , { primitive := .remem
      role := "time-aware gists, facts, and agentic retrieval"
      importedAsAuthority := false }
  , { primitive := .radoProjectedModularHeatflow
      role := "witness graph, heat centroid, residues, and spectral anti-clumping"
      importedAsAuthority := false }
  ]

theorem primitiveRoles_count :
    primitiveRoles.length = 6 := by
  rfl

structure BoundaryMemoryInput where
  system : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryMemorySystem
  query : String
  activeEvent : String
  sourcePrimitives : List PrimitiveRole

def noPrimitiveImportsAuthority (I : BoundaryMemoryInput) : Prop :=
  ∀ p ∈ I.sourcePrimitives, p.importedAsAuthority = false

end Think.RadoProjectedModularHeatflow.BoundaryMemory
