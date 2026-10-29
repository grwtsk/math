-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionRule.Variant2fd01efce9f13ea9a6a8feaf30a9c5ad751773b5ed82ff1ebb24fe8d554d9ea9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fd01efce9f13ea9a6a8feaf30a9c5ad751773b5ed82ff1ebb24fe8d554d9ea9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProjectionRule.Variant2fd01efce9f13ea9a6a8feaf30a9c5ad751773b5ed82ff1ebb24fe8d554d9ea9","mathematical_subject":"Computation.DataStructures","original_sha256":"2fd01efce9f13ea9a6a8feaf30a9c5ad751773b5ed82ff1ebb24fe8d554d9ea9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Projection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Graph


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionRule.Variant2fd01efce9f13ea9a6a8feaf30a9c5ad751773b5ed82ff1ebb24fe8d554d9ea9

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure ProjectionRule where
  rawRegion : String
  canonicalFiber : CanonicalFiber
  canonicalNode : String
  action : String
deriving DecidableEq, Repr

def canonicalFiberName : CanonicalFiber -> String
  | .pipelineCenter => "Pipeline.Center"
  | .pipelinePhase => "Pipeline.PhaseTable"
  | .poleFamily => "PoleFamily"
  | .residueAlgebra => "ResidueAlgebra"
  | .sourceTreeGeometry => "SourceTreeGeometry"
  | .targetBoundary => "TargetBoundary"
  | .finiteWitness => "TargetWitness"
  | .modularCarrier => "ModularCarrier"
  | .researchCorpus => "ResearchCorpus"
  | .validationShell => "ValidationShell"
  | .braidConformance => "BraidConformance"
  | .buildShell => "BuildShell"

def projectionRules : List ProjectionRule :=
  [ { rawRegion := "Think/Pipeline/Center/*"
      canonicalFiber := .pipelineCenter
      canonicalNode := "Think/Pipeline/Center"
      action := "retain center-weighted control files" }
  , { rawRegion := "Think/Pipeline/Phases/PhaseNN_*.lean"
      canonicalFiber := .pipelinePhase
      canonicalNode := "Think/Pipeline/Phases/PhaseTable.lean"
      action := "fold into indexed phase records" }
  , { rawRegion := "Think/Poles/*Pole/*.lean"
      canonicalFiber := .poleFamily
      canonicalNode := "Think/Poles/<Family>.lean"
      action := "merge pole leaves into one family module" }
  , { rawRegion := "Think/Residues/*.lean"
      canonicalFiber := .residueAlgebra
      canonicalNode := "Think/Residues"
      action := "retain residue algebra modules" }
  , { rawRegion := "Think/SourceTree/*.lean"
      canonicalFiber := .sourceTreeGeometry
      canonicalNode := "Think/SourceTree"
      action := "retain source-tree geometry and Rado projection" }
  , { rawRegion := "Think/Targets/*.lean"
      canonicalFiber := .targetBoundary
      canonicalNode := "Think/Targets"
      action := "retain target boundary layer" }
  , { rawRegion := "Think/FiniteWitnessResidue/Targets/*.lean"
      canonicalFiber := .finiteWitness
      canonicalNode := "Think/FiniteWitnessResidue/Targets/WitnessBridge.lean"
      action := "record as witness-bridge target fiber" }
  , { rawRegion := "Think/ModularWave/*.lean"
      canonicalFiber := .modularCarrier
      canonicalNode := "Think/ModularWave"
      action := "retain arithmetic carrier shell" }
  , { rawRegion := "Think/ResearchSurvey/<topic>.lean"
      canonicalFiber := .researchCorpus
      canonicalNode := "Think/ResearchSurvey/Corpus.lean"
      action := "convert topic files into corpus entries" }
  , { rawRegion := "Think/Validation/*.lean"
      canonicalFiber := .validationShell
      canonicalNode := "Think/Validation"
      action := "retain validation shell" }
  , { rawRegion := "Think/Pipeline/Center/Braid*"
      canonicalFiber := .braidConformance
      canonicalNode := "Think/Pipeline/Center/Braid"
      action := "merge braid law and validation families" }
  , { rawRegion := ".lake"
      canonicalFiber := .buildShell
      canonicalNode := "excluded"
      action := "exclude build artifact shell" }
  ]

theorem projectionRules_count :
    projectionRules.length = 12 := by
  rfl

end Think.RadoProjectedModularHeatflow
