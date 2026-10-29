-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToolchainFingerprint.Variant1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToolchainFingerprint.Variant1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84","mathematical_subject":"Computation.DataStructures","original_sha256":"1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Artifact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Path

/-! # Content-addressed operational artifacts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToolchainFingerprint.Variant1ef488c3ffd72d65ce9620ee8cc45ea98e81eca2b4a6dee254964ac233815e84

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel]
structure ToolchainFingerprint where
  leanVersion : String
  mathlibFingerprint : ContentHash256
deriving DecidableEq, Repr

@[surface_novel]
structure CompilerOptionsFingerprint where
  digest : ContentHash256
deriving DecidableEq, Repr

@[surface_novel]
structure ImportClosureFingerprint where
  orderedArtifactHashes : List ContentHash256
  digest : ContentHash256
deriving DecidableEq, Repr

@[surface_novel]
structure ArtifactKey where
  sourceContentHash : ContentHash256
  moduleIdentity : LeanModulePath
  imports : ImportClosureFingerprint
  toolchain : ToolchainFingerprint
  compilerOptions : CompilerOptionsFingerprint
  schemaVersion : String
  generatorVersion : String
deriving DecidableEq, Repr

@[surface_certificate]
structure ArtifactObservation where
  key : ArtifactKey
  artifactHash : ContentHash256
  observedPath : String
  authority : RefactorAuthority := .environmentObserved
deriving DecidableEq, Repr

@[surface_certificate]
structure ArtifactReuseEvidence where
  expectedKey : ArtifactKey
  observed : ArtifactObservation
  expectedArtifactHash : ContentHash256
deriving DecidableEq, Repr

@[expose] def ArtifactReuseEvidence.Valid (evidence : ArtifactReuseEvidence) : Prop :=
  evidence.observed.key = evidence.expectedKey ∧
    evidence.observed.artifactHash = evidence.expectedArtifactHash

instance (evidence : ArtifactReuseEvidence) : Decidable evidence.Valid := by
  unfold ArtifactReuseEvidence.Valid
  infer_instance

@[expose] def verifyArtifactReuse (evidence : ArtifactReuseEvidence) : Bool :=
  decide evidence.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyArtifactReuse_sound (evidence : ArtifactReuseEvidence)
    (h : verifyArtifactReuse evidence = true) : evidence.Valid := by
  exact of_decide_eq_true h

@[expose] def artifactReuseAuthority (_evidence : ArtifactReuseEvidence) :
    RefactorAuthority := .environmentObserved

@[surface_novel, surface_published]
theorem reuse_receipt_is_not_proof (evidence : ArtifactReuseEvidence) :
    artifactReuseAuthority evidence ≠ .leanKernelChecked := by
  intro h
  cases h

end Surface.Refactor
