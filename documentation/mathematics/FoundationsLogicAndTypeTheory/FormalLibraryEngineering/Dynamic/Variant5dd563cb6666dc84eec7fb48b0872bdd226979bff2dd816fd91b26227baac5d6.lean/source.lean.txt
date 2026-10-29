-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeName.Variant6b504b5313bfee8a7d1ec4e8d06ce731af49f987724350de09b7b7f39db484b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b504b5313bfee8a7d1ec4e8d06ce731af49f987724350de09b7b7f39db484b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TypeName.Variant6b504b5313bfee8a7d1ec4e8d06ce731af49f987724350de09b7b7f39db484b2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6b504b5313bfee8a7d1ec4e8d06ce731af49f987724350de09b7b7f39db484b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Dynamic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Gabriel Ebner
-/
module

prelude
public import Init.Prelude
import Init.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeName.Variant6b504b5313bfee8a7d1ec4e8d06ce731af49f987724350de09b7b7f39db484b2

public section

open Lean

-- Implementation detail of TypeName, since classes cannot be opaque
-- TODO: should be private; #10098
opaque TypeNameData (α : Type u) : NonemptyType.{0} :=
  ⟨Name, inferInstance⟩

/--
Dynamic type name information.
Types with an instance of `TypeName` can be stored in an `Dynamic`.
The type class contains the declaration name of the type,
which must not have any universe parameters
and be of type `Sort ..` (i.e., monomorphic).

The preferred way to declare instances of this type is using the derive
handler, which will internally use the unsafe `TypeName.mk` function.

Morally, this is the same as:
```lean
class TypeName (α : Type) where unsafe mk ::
  typeName : Name
```
-/
@[nospecialize]
class TypeName (α : Type u) where private mk' ::
  private data : (TypeNameData α).type

instance : Nonempty (TypeName α) := by exact (TypeNameData α).property.elim (⟨⟨·⟩⟩)

/--
Creates a `TypeName` instance.

For safety, it is required that the constant `typeName` is definitionally equal
to `α`.
-/
@[instance_reducible]
unsafe def TypeName.mk (α : Type u) (typeName : Name) : TypeName α :=
  ⟨unsafeCast typeName⟩

private unsafe def TypeName.typeNameImpl (α) [TypeName α] : Name :=
  unsafeCast (@TypeName.data α _)

/--
Returns a declaration name of the type.
-/
@[implemented_by TypeName.typeNameImpl]
opaque TypeName.typeName (α) [TypeName α] : Name

private opaque DynamicPointed : NonemptyType.{0} :=
  ⟨Name × NonScalar, inferInstance⟩

/--
A type-tagged union that can store any type with a `TypeName` instance.

This is roughly equivalent to `(α : Type) × TypeName α × α`, but without the universe bump. Use
`Dynamic.mk` to inject a value into `Dynamic` from another type, and `Dynamic.get?` to extract a
value from `Dynamic` if it has some expected type.
-/
def Dynamic : Type := DynamicPointed.type

instance : Nonempty Dynamic := by exact DynamicPointed.property

private unsafe def Dynamic.typeNameImpl (any : Dynamic) : Name :=
  (unsafeCast any : Name × NonScalar).1

/--
The name of the type of the value stored in the `Dynamic`.
-/
@[implemented_by Dynamic.typeNameImpl]
opaque Dynamic.typeName (any : Dynamic) : Name

private unsafe def Dynamic.get?Impl (α) (any : Dynamic) [TypeName α] : Option α :=
  let ((typeName, obj) : Name × NonScalar) := unsafeCast any
  if typeName == TypeName.typeName α then
    some (unsafeCast obj)
  else
    none

/--
Retrieves the value stored in the `Dynamic`.
Returns `some a` if the value has the right type, and `none` otherwise.
-/
@[implemented_by Dynamic.get?Impl]
opaque Dynamic.get? (α) (any : Dynamic) [TypeName α] : Option α

private unsafe def Dynamic.mkImpl [TypeName α] (obj : α) : Dynamic :=
  unsafeCast (TypeName.typeName α, (unsafeCast obj : NonScalar))

/--
Stores the provided value in a `Dynamic`.

Use `Dynamic.get? α` to retrieve it.
-/
@[implemented_by Dynamic.mkImpl]
opaque Dynamic.mk [TypeName α] (obj : α) : Dynamic
