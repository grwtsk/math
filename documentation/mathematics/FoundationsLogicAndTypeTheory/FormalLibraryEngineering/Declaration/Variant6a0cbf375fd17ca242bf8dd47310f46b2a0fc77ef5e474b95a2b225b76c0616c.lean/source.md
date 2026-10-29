# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declaration.Variant6a0cbf375fd17ca242bf8dd47310f46b2a0fc77ef5e474b95a2b225b76c0616c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d4d2336dace9df40743a8a9987f22bf925fc673` · SHA-256 `6a0cbf375fd17ca242bf8dd47310f46b2a0fc77ef5e474b95a2b225b76c0616c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5fc4266cd19b3e3da374eeac573b4cfa6ca0babb449f8e75ed4a649d470b07f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variant6a0cbf375fd17ca242bf8dd47310f46b2a0fc77ef5e474b95a2b225b76c0616c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
