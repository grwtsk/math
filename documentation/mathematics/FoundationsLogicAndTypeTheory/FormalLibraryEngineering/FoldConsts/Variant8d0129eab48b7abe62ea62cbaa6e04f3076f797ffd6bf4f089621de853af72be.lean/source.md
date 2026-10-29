# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldConsts.Variant8d0129eab48b7abe62ea62cbaa6e04f3076f797ffd6bf4f089621de853af72be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bb5be3893dc1daca2e14a6434244920b9784316` · SHA-256 `8d0129eab48b7abe62ea62cbaa6e04f3076f797ffd6bf4f089621de853af72be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.PtrSet
public import Lean.Declaration

public section

namespace Lean
namespace Expr
namespace FoldConstsImpl

unsafe structure State where
 visited       : PtrSet Expr := mkPtrSet
 visitedConsts : NameHashSet := {}

unsafe abbrev FoldM := StateM State

unsafe def fold {α : Type} (f : Name → α → α) (e : Expr) (acc : α) : FoldM α :=
  let rec visit (e : Expr) (acc : α) : FoldM α := do
    if (← get).visited.contains e then
      return acc
    modify fun s => { s with visited := s.visited.insert e }
    match e with
    | .forallE _ d b _   => visit b (← visit d acc)
    | .lam _ d b _       => visit b (← visit d acc)
    | .mdata _ b         => visit b acc
    | .letE _ t v b _    => visit b (← visit v (← visit t acc))
    | .app f a           => visit a (← visit f acc)
    | .proj _ _ b        => visit b acc
    | .const c _         =>
      if (← get).visitedConsts.contains c then
        return acc
      else
        modify fun s => { s with visitedConsts := s.visitedConsts.insert c };
        return f c acc
    | _ => return acc
  visit e acc

@[inline] unsafe def foldUnsafe {α : Type} (e : Expr) (init : α) (f : Name → α → α) : α :=
  (fold f e init).run' {}

end FoldConstsImpl

/-- Apply `f` to every constant occurring in `e` once. -/
@[implemented_by FoldConstsImpl.foldUnsafe]
opaque foldConsts {α : Type} (e : Expr) (init : α) (f : Name → α → α) : α := init

def getUsedConstants (e : Expr) : Array Name :=
  e.foldConsts #[] fun c cs => cs.push c

/-- Like `Expr.getUsedConstants`, but produce a `NameSet`. -/
def getUsedConstantsAsSet (e : Expr) : NameSet :=
  e.foldConsts {} fun c cs => cs.insert c

end Expr

namespace ConstantInfo

/-- Return all names appearing in the type or value of a `ConstantInfo`. -/
def getUsedConstantsAsSet (c : ConstantInfo) : NameSet :=
  c.type.getUsedConstantsAsSet ++ match c.value? (allowOpaque := true) with
  | some v => v.getUsedConstantsAsSet
  | none => match c with
    | .inductInfo val => .ofList val.ctors
    | .ctorInfo val => ({} : NameSet).insert val.name
    | .recInfo val => .ofList val.all
    | _ => {}

end ConstantInfo
end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2af46d48bcc9308fb0eb8da4f9bb02c8f3dbedb4564fb93c4c24411a233c8df8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldConsts/Variant8d0129eab48b7abe62ea62cbaa6e04f3076f797ffd6bf4f089621de853af72be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
