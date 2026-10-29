-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourcePrimitive.Variant0ca5968e2f6836e112211ff58e48863469dbd6f7c68251b844176aa1ed24248e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ca5968e2f6836e112211ff58e48863469dbd6f7c68251b844176aa1ed24248e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourcePrimitive.Variant0ca5968e2f6836e112211ff58e48863469dbd6f7c68251b844176aa1ed24248e","mathematical_subject":"Computation.DataStructures","original_sha256":"0ca5968e2f6836e112211ff58e48863469dbd6f7c68251b844176aa1ed24248e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Memory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.All
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Canonical


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourcePrimitive.Variant0ca5968e2f6836e112211ff58e48863469dbd6f7c68251b844176aa1ed24248e

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
