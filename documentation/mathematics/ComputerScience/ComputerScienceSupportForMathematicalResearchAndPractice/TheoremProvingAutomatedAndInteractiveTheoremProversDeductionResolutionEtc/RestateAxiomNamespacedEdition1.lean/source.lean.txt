-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant2e8222e807ef763166087a36c24e3ad737684fb2980f300f85fded54e7fab5c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e8222e807ef763166087a36c24e3ad737684fb2980f300f85fded54e7fab5c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lean.Variant2e8222e807ef763166087a36c24e3ad737684fb2980f300f85fded54e7fab5c2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2e8222e807ef763166087a36c24e3ad737684fb2980f300f85fded54e7fab5c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/RestateAxiom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Lean
import Lean.Data


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant2e8222e807ef763166087a36c24e3ad737684fb2980f300f85fded54e7fab5c2

open Lean
open Lean.Elab
open Lean.Elab.Command

/--
__DEPRECATED__: `restate_axiom` was necessary in Lean 3 but is no longer needed for Lean 4.
It is still present for backwards compatibility but will probably be removed in the future.

# Original Docstring

`restate_axiom` makes a new copy of a structure field, first definitionally simplifying the type.
This is useful to remove `autoParam` or `optParam` from the statement.

As an example, we have:
```lean
structure A :=
  (x : ℕ)
  (a' : x = 1 . skip)

example (z : A) : z.x = 1 := by rw A.a' -- rewrite tactic failed, lemma is not an equality nor a iff

restate_axiom A.a'
example (z : A) : z.x = 1 := by rw A.a
```

By default, `restate_axiom` names the new lemma by removing a trailing `'`, or otherwise appending
`_lemma` if there is no trailing `'`. You can also give `restate_axiom` a second argument to
specify the new name, as in
```lean
restate_axiom A.a f
example (z : A) : z.x = 1 := by rw A.f
```
-/
elab "restate_axiom " oldName:ident newName:(ppSpace ident)? : command => do
  let oldName ← resolveGlobalConstNoOverloadWithInfo oldName
  let newName : Name :=
    match newName with
      | none =>
        match oldName with
        | Name.str n s =>
          if s.back = '\'' then
            Name.mkStr n $ s.extract 0 (s.endPos - ⟨1⟩)
          else
            Name.mkStr n $ s ++ "_lemma"
        | x => x
      | some n => Name.getPrefix oldName ++ n.getId
  liftCoreM do
    match ← getConstInfo oldName with
    | ConstantInfo.defnInfo info =>
      addAndCompile <| .defnDecl { info with name := newName }
    | ConstantInfo.thmInfo info =>
      addAndCompile <| .thmDecl { info with name := newName }
    | _ => throwError "Constant {oldName} is not a definition or theorem."
