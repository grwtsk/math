# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RestateAxiom.Variant2e8222e807ef763166087a36c24e3ad737684fb2980f300f85fded54e7fab5c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b124e8d5e7de238bb870554d9fd78d7d437c4ed1` · SHA-256 `2e8222e807ef763166087a36c24e3ad737684fb2980f300f85fded54e7fab5c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2017 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Lean
import Lean.Data

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
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b53eed8ea29d0c4b1c10b316659a46549d60663450bb8d91f9e2e0945df4b80b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RestateAxiom/Variant2e8222e807ef763166087a36c24e3ad737684fb2980f300f85fded54e7fab5c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
