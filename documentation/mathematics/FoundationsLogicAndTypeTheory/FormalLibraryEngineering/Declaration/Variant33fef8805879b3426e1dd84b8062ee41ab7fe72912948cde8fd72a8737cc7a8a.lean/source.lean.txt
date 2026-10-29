-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationIdentity.Variant6a0cbf375fd17ca242bf8dd47310f46b2a0fc77ef5e474b95a2b225b76c0616c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a0cbf375fd17ca242bf8dd47310f46b2a0fc77ef5e474b95a2b225b76c0616c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeclarationIdentity.Variant6a0cbf375fd17ca242bf8dd47310f46b2a0fc77ef5e474b95a2b225b76c0616c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6a0cbf375fd17ca242bf8dd47310f46b2a0fc77ef5e474b95a2b225b76c0616c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Syntax/Declaration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Syntax.Node

/-! # Language-neutral declarations and explicit observation authority -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationIdentity.Variant6a0cbf375fd17ca242bf8dd47310f46b2a0fc77ef5e474b95a2b225b76c0616c

public section

namespace Surface.Refactor.Syntax

open Surface.Core.Transport

@[surface_novel]
structure DeclarationIdentity where
  snapshotHash : Hash256
  stableCode : Nat
deriving DecidableEq, Repr

@[surface_novel]
inductive DeclarationKind where
  | function
  | method
  | class
  | structure
  | inductive
  | enumeration
  | component
  | module
  | namespace
  | importDeclaration
  | useDeclaration
  | typeAlias
  | interface
  | rustItem
  | implementationBlock
  | leanDeclaration
  | other
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive ClassificationTag where
  | surfaceAdapter
  | surfaceNovel
  | surfaceCandidate
  | surfacePublished
  | surfaceCertificate
  | surfaceInterface
  | languageSpecific (nameStringIndex : Nat)
deriving DecidableEq, Repr

@[surface_novel]
inductive DeclarationObservationAuthority where
  | syntacticObservation
  | loadedEnvironmentObservation
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure DeclarationRecord where
  identity : DeclarationIdentity
  kind : DeclarationKind
  nodeIndex : Nat
  nameStringIndex : Nat
  qualifiedNameStringIndex : Option Nat
  attributes : List ClassificationTag
  authority : DeclarationObservationAuthority
deriving DecidableEq, Repr

@[expose] def ClassificationTag.Valid (stringCount : Nat) : ClassificationTag → Prop
  | .languageSpecific index => index < stringCount
  | _ => True

@[expose] def DeclarationRecord.Valid
    (nodeCount stringCount : Nat) (declaration : DeclarationRecord) : Prop :=
  declaration.nodeIndex < nodeCount ∧
    declaration.nameStringIndex < stringCount ∧
    OptionalIndexValid stringCount declaration.qualifiedNameStringIndex ∧
    ∀ tag ∈ declaration.attributes, tag.Valid stringCount

@[surface_novel, surface_published]
theorem syntacticDeclaration_has_no_environment_authority
    (declaration : DeclarationRecord)
    (observed : declaration.authority = .syntacticObservation) :
    declaration.authority ≠ .loadedEnvironmentObservation := by
  simp [observed]

end Surface.Refactor.Syntax
