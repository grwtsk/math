module

public import Surface.Refactor.Syntax.Node

/-! # Language-neutral declarations and explicit observation authority -/

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
