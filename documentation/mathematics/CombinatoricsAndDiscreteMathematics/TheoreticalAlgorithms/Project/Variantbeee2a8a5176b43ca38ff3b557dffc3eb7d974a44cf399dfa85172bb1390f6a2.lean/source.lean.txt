-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationKind.Variantf4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclarationKind.Variantf4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24","mathematical_subject":"Computation.DataStructures","original_sha256":"f4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Project.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Artifact
public import Surface.Core.Transport.Revision
public import Surface.Refactor.Syntax.Reference

/-! # Finite project snapshots -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationKind.Variantf4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24

public section

namespace Surface.Refactor

open Lean Surface.Core
open Surface.Core.Transport Surface.Refactor.Syntax

@[surface_novel]
inductive DeclarationKind where
  | theorem
  | definition
  | opaqueDeclaration
  | inductiveType
  | structureType
  | instance
  | other
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive ProofObservation where
  | checked
  | declarationOnly
  | unavailable
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure EnvironmentFingerprint where
  project : ContentHash256
  imports : ContentHash256
  toolchain : ToolchainFingerprint
deriving DecidableEq, Repr

@[surface_novel]
structure FileSnapshot where
  path : ProjectRelativePath
  root : AllowedRoot
  contentHash : ContentHash256
  byteLength : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure ModuleSnapshot where
  moduleName : LeanModulePath
  sourcePath : ProjectRelativePath
  imports : List LeanModulePath
  sourceHash : ContentHash256
  moduleFingerprint : ContentHash256
  canonical : Bool
  generated : Bool
  legacy : Bool
deriving DecidableEq, Repr

@[surface_novel]
structure ImportEdge where
  importer : LeanModulePath
  imported : LeanModulePath
deriving DecidableEq, Repr

@[surface_novel]
structure DeclarationSnapshot where
  declarationName : Name
  moduleName : LeanModulePath
  sourcePath : ProjectRelativePath
  declarationRange : SourceByteRange
  selectionRange : SourceByteRange
  kind : DeclarationKind
  normalizedType : String
  structuralExpressionHash : ContentHash256
  typeHash : ContentHash256
  sourceHash : ContentHash256
  proofStatus : ProofObservation
  classificationTags : List Name
  directDependencies : List Name
  projectDependencies : List Name
  importedDependencies : List Name
  axiomClosure : List Name
  docstring? : Option String
  publiclyVisible : Bool
deriving DecidableEq, Repr

@[surface_novel]
structure ProjectPolicy where
  allowedRoots : List AllowedRoot
  canonicalRoot : AllowedRoot
  generatedRoot : AllowedRoot
  legacyRoot : AllowedRoot
  allowMoveDeclaration : Bool := false
deriving DecidableEq, Repr

/-- Content-addressed structural observation for one existing project file.
The parser fingerprint states observation authority; it is not a kernel
receipt. -/
@[surface_novel]
structure StructuralFileSnapshot where
  file : SourceFileIdentity
  source : SourceSnapshotId
  parser : ParserFingerprint
  structuralPacketHash : Hash256
deriving DecidableEq, Repr

@[expose] def StructuralFileSnapshot.Valid
    (file : StructuralFileSnapshot) : Prop :=
  file.file.normalizedRelativePathHash.Valid ∧
    file.source.sourceHash.Valid ∧
    file.parser.Valid ∧
    file.parser.language = file.file.language ∧
    file.structuralPacketHash.Valid ∧
    file.source.sourceByteLength < 2 ^ 64

instance (file : StructuralFileSnapshot) : Decidable file.Valid := by
  unfold StructuralFileSnapshot.Valid
  infer_instance

@[surface_novel]
structure BuildTargetSnapshot where
  identity : BuildTargetIdentity
  sourceFiles : List SourceFileIdentity
  directDependencies : List BuildTargetIdentity
deriving DecidableEq, Repr

@[expose] def BuildTargetSnapshot.Valid (target : BuildTargetSnapshot) : Prop :=
  target.identity.targetNameHash.Valid ∧
    target.sourceFiles.Nodup ∧ target.directDependencies.Nodup ∧
    (∀ file ∈ target.sourceFiles, file.normalizedRelativePathHash.Valid) ∧
    (∀ dependency ∈ target.directDependencies,
      dependency.targetNameHash.Valid)

instance (target : BuildTargetSnapshot) : Decidable target.Valid := by
  unfold BuildTargetSnapshot.Valid
  infer_instance

@[surface_novel]
structure SymbolReferenceSnapshot where
  identity : ReferenceIdentity
  sourceFile : SourceFileIdentity
  targetDeclaration : Option Name
  resolution : ReferenceResolution
deriving DecidableEq, Repr

@[expose] def SymbolReferenceSnapshot.Valid
    (reference : SymbolReferenceSnapshot) : Prop :=
  reference.identity.snapshotHash.Valid ∧
    reference.sourceFile.normalizedRelativePathHash.Valid

instance (reference : SymbolReferenceSnapshot) : Decidable reference.Valid := by
  unfold SymbolReferenceSnapshot.Valid
  infer_instance

@[surface_novel]
structure ProjectSnapshot where
  schema : String
  fingerprint : EnvironmentFingerprint
  policy : ProjectPolicy
  files : List FileSnapshot
  modules : List ModuleSnapshot
  importEdges : List ImportEdge
  declarations : List DeclarationSnapshot
  repositoryRevision : Surface.Core.Transport.Revision :=
    ⟨0, by simp [Surface.Core.Transport.revisionModulus]⟩
  structuralFiles : List StructuralFileSnapshot := []
  symbolReferences : List SymbolReferenceSnapshot := []
  buildTargets : List BuildTargetSnapshot := []
deriving Repr

@[expose] def verifyFileSnapshotInPolicy
    (policy : ProjectPolicy) (file : FileSnapshot) : Bool :=
  verifyProjectRelativePath file.path &&
    (file.path.raw == file.root.path.raw ||
      file.path.raw.startsWith (file.root.path.raw ++ "/")) &&
    policy.allowedRoots.contains file.root

@[expose] def verifyDeclarationSnapshotInFiles
    (files : List FileSnapshot) (decl : DeclarationSnapshot) : Bool :=
  verifySourceByteRange decl.declarationRange &&
    verifySourceByteRange decl.selectionRange &&
    (files.map (fun file => file.path)).contains decl.sourcePath

@[expose] def ProjectSnapshot.Valid (snapshot : ProjectSnapshot) : Prop :=
  snapshot.schema = "surface.project-snapshot.v1" ∧
    (snapshot.files.map (fun file => file.path)).Nodup ∧
    (snapshot.modules.map (fun module => module.moduleName)).Nodup ∧
    (snapshot.declarations.map (fun decl => decl.declarationName)).Nodup ∧
    (snapshot.structuralFiles.map (fun file ↦ file.file)).Nodup ∧
    (snapshot.symbolReferences.map (fun reference ↦ reference.identity)).Nodup ∧
    (snapshot.buildTargets.map (fun target ↦ target.identity)).Nodup ∧
    snapshot.files.all (verifyFileSnapshotInPolicy snapshot.policy) = true ∧
    snapshot.declarations.all
      (verifyDeclarationSnapshotInFiles snapshot.files) = true ∧
    (∀ file ∈ snapshot.structuralFiles, file.Valid) ∧
    (∀ reference ∈ snapshot.symbolReferences, reference.Valid) ∧
    (∀ target ∈ snapshot.buildTargets, target.Valid)

instance (snapshot : ProjectSnapshot) : Decidable snapshot.Valid := by
  unfold ProjectSnapshot.Valid
  infer_instance

@[expose] def verifyProjectSnapshot (snapshot : ProjectSnapshot) : Bool :=
  decide snapshot.Valid

@[surface_novel, surface_published]
theorem verifyProjectSnapshot_sound (snapshot : ProjectSnapshot)
    (h : verifyProjectSnapshot snapshot = true) : snapshot.Valid := by
  exact of_decide_eq_true h

@[expose] def projectSnapshotAuthority (_snapshot : ProjectSnapshot) :
    RefactorAuthority := .environmentObserved

@[surface_novel, surface_published]
theorem project_snapshot_is_environment_observation (snapshot : ProjectSnapshot) :
    projectSnapshotAuthority snapshot = .environmentObserved :=
  rfl

end Surface.Refactor
