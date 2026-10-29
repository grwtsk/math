-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BuildArtifactKind.Variantba3213fb76102bdef168413591cffb70e9409d51f2f6a5227c321e803c600951","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba3213fb76102bdef168413591cffb70e9409d51f2f6a5227c321e803c600951","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BuildArtifactKind.Variantba3213fb76102bdef168413591cffb70e9409d51f2f6a5227c321e803c600951","mathematical_subject":"Computation.DataStructures","original_sha256":"ba3213fb76102bdef168413591cffb70e9409d51f2f6a5227c321e803c600951","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Build.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Module

/-!
# Build-system and artifact receipt boundary

These records carry build-system evidence. They never override declaration
facts recovered from the compiled Lean environment.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BuildArtifactKind.Variantba3213fb76102bdef168413591cffb70e9409d51f2f6a5227c321e803c600951

namespace Mathematics.Extractor

open Mathematics

inductive BuildArtifactKind
  | source
  | olean
  | library
  | executable
  | lakefile
  | lakeManifest
  | leanToolchain
  | other
  deriving DecidableEq, Repr, Inhabited

structure BuildArtifactRecord where
  kind : BuildArtifactKind
  path : Option CanonicalPath
  digest : Option Digest
  required : Bool
  present : Bool
  authority : ExtractionAuthority := .buildSystem
  deriving DecidableEq, Repr, Inhabited

structure ModuleBuildReceipt where
  moduleName : Lean.Name
  packageId : PackageId
  ownership : OwnershipClass
  source : BuildArtifactRecord
  olean : BuildArtifactRecord
  deriving DecidableEq, Repr, Inhabited

structure BuildReceipt where
  schemaVersion : String
  projectId : ProjectId
  leanVersion : Option String
  lakeVersion : Option String
  leanGitRevision : Option String
  modules : Array ModuleBuildReceipt
  projectArtifacts : Array BuildArtifactRecord
  missingArtifacts : Array String
  authority : ExtractionAuthority := .buildSystem
  deriving DecidableEq, Repr, Inhabited

namespace BuildArtifactRecord

/-- A required artifact is complete exactly when it is present. -/
def Complete (artifact : BuildArtifactRecord) : Prop :=
  artifact.required = true → artifact.present = true

end BuildArtifactRecord

namespace ModuleBuildReceipt

/-- A module receipt accounts for both its source and compiled artifact. -/
def Complete (receipt : ModuleBuildReceipt) : Prop :=
  receipt.source.Complete ∧ receipt.olean.Complete

end ModuleBuildReceipt

namespace BuildReceipt

/--
An authoritative receipt has no recorded missing artifact, every module source
and `.olean` requirement is present, and every required project artifact is
present. This is build-system evidence only; it does not override the compiled
environment.
-/
def Complete (receipt : BuildReceipt) : Prop :=
  receipt.missingArtifacts.isEmpty = true ∧
  (∀ moduleReceipt ∈ receipt.modules, moduleReceipt.Complete) ∧
  (∀ artifact ∈ receipt.projectArtifacts, artifact.Complete)

end BuildReceipt

end Mathematics.Extractor
