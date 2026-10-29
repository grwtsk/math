# Tactic Label Attr — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `527ddf08e6924cfd979cd70698b156e0159fe67a` · SHA-256 `a1236522a4a69fc055c16ec1576512ccd5ef3c7c386c2c1629b6b6b9667e6361`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Lean

/-!
# "Label" attributes

Allow creating attributes using `register_label_attr`,
and retrieving the array of `Name`s of declarations which have been tagged with such an attribute.

These differ slightly from the built-in "tag attributes" which can be initialized with the syntax:
```
initialize someName : TagAttribute ← registerTagAttribute `tagName "description"
```
in that a "tag attribute" can only be put on a declaration at the moment it is declared,
and can not be modified by scoping commands.
The "label attributes" constructed here adding (or locally removing) the attribute
either at the moment of declaration, or later.

-/

namespace Mathlib.Tactic.LabelAttr

open Lean

/-- An environment extension that just tracks an array of names. -/
abbrev LabelExtension := SimpleScopedEnvExtension Name (Array Name)

/-- The collection of all current `LabelExtension`s, indexed by name. -/
abbrev LabelExtensionMap := HashMap Name LabelExtension

/-- Store the current `LabelExtension`s. -/
initialize labelExtensionMapRef : IO.Ref LabelExtensionMap ← IO.mkRef {}

/-- Helper function for `registerLabelAttr`. -/
def mkLabelExt (name : Name := by exact decl_name%) : IO LabelExtension :=
  registerSimpleScopedEnvExtension {
    name     := name
    initial  := #[]
    addEntry := fun d e => d.push e
  }

/-- Helper function for `registerLabelAttr`. -/
def mkLabelAttr (attrName : Name) (attrDescr : String) (ext : LabelExtension)
  (ref : Name := by exact decl_name%) : IO Unit :=
registerBuiltinAttribute {
  ref   := ref
  name  := attrName
  descr := attrDescr
  applicationTime := AttributeApplicationTime.afterCompilation
  add   := fun declName _ _ =>
    ext.add declName
  erase := fun declName => do
    let s := ext.getState (← getEnv)
    modifyEnv fun env => ext.modifyState env fun _ => s.erase declName
}

/--
Construct a new "label attribute",
which does nothing except keep track of the names of the declarations with that attribute.

Users will generally use the `register_label_attr` macro defined below.
-/
def registerLabelAttr (attrName : Name) (attrDescr : String)
    (ref : Name := by exact decl_name%) : IO LabelExtension := do
  let ext ← mkLabelExt ref
  mkLabelAttr attrName attrDescr ext ref
  labelExtensionMapRef.modify fun map => map.insert attrName ext
  return ext

/--
Initialize a new "label" attribute.
Declarations tagged with the attribute can be retrieved using `Mathlib.Tactic.LabelAttr.labelled`.
-/
macro (name := _root_.Lean.Parser.Command.registerLabelAttr) doc:(docComment)?
  "register_label_attr " id:ident : command => do
  let str := id.getId.toString
  let idParser := mkIdentFrom id (`Parser.Attr ++ id.getId)
  let descr := quote (removeLeadingSpaces
    (doc.map (·.getDocString) |>.getD s!"labelled declarations for {id.getId.toString}"))
  `($[$doc:docComment]? initialize ext : LabelExtension ←
      registerLabelAttr $(quote id.getId) $descr $(quote id.getId)
    $[$doc:docComment]? syntax (name := $idParser:ident) $(quote str):str : attr)

/-- When `attrName` is an attribute created using `register_labelled_attr`,
return the names of all declarations labelled using that attribute. -/
def labelled (attrName : Name) : MetaM (Array Name) := do
  match (← labelExtensionMapRef.get).find? attrName with
  | none => throwError "No extension named {attrName}"
  | some ext => pure <| ext.getState (← getEnv)
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8401ab251751094312c242a20a675be003080d1adec6c94b5a7174ce3be1bc5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Varianta1236522a4a69fc055c16ec1576512ccd5ef3c7c386c2c1629b6b6b9667e6361.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
