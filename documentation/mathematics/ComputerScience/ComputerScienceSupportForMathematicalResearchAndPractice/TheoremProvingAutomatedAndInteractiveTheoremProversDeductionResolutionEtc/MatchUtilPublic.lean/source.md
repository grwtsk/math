# Match Util Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5a3566031324b6a0ed0bf14d865994dcf90c11e` · SHA-256 `5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.Recognizers
public import Lean.Meta.CtorRecognizer

public section

namespace Lean.Meta

@[inline] def testHelper (e : Expr) (p : Expr → MetaM Bool) : MetaM Bool := do
  if (← p e) then
    return true
  else
    p (← whnf e)

@[inline] def matchHelper? (e : Expr) (p? : Expr → MetaM (Option α)) : MetaM (Option α) := do
  match (← p? e) with
  | none => p? (← whnf e)
  | s    => return s

/-- Matches `e` with `lhs = (rhs : α)` and returns `(α, lhs, rhs)`. -/
def matchEq? (e : Expr) : MetaM (Option (Expr × Expr × Expr)) :=
  matchHelper? e fun e => return Expr.eq? e

def matchHEq? (e : Expr) : MetaM (Option (Expr × Expr × Expr × Expr)) :=
  matchHelper? e fun e => return Expr.heq? e

/--
  Return `some (α, lhs, rhs)` if `e` is of the form `@Eq α lhs rhs` or `@HEq α lhs α rhs`
-/
def matchEqHEq? (e : Expr) : MetaM (Option (Expr × Expr × Expr)) := do
  if let some r ← matchEq? e then
    return some r
  else if let some (α, lhs, β, rhs) ← matchHEq? e then
    if (← isDefEq α β) then
      return some (α, lhs, rhs)
    return none
  else
    return none

/--
  Return `some (α, lhs)` if `e` is of the form `@Eq α lhs rhs` or `@HEq α lhs β rhs`
-/
def matchEqHEqLHS? (e : Expr) : MetaM (Option (Expr × Expr)) := do
  if let some (α, lhs, _rhs) ← matchEq? e then
    return some (α, lhs)
  else if let some (α, lhs, _β, _rhs) ← matchHEq? e then
    return some (α, lhs)
  else
    return none


def matchFalse (e : Expr) : MetaM Bool := do
  testHelper e fun e => return e.isFalse

def matchNot? (e : Expr) : MetaM (Option Expr) :=
  matchHelper? e fun e => do
    if let some e := e.not? then
      return e
    else if let some (a, b) := e.arrow? then
      if (← matchFalse b) then return some a else return none
    else
      return none

def matchNe? (e : Expr) : MetaM (Option (Expr × Expr × Expr)) :=
  matchHelper? e fun e => do
    if let some r := e.ne? then
      return r
    else if let some e ← matchNot? e then
      matchEq? e
    else
      return none

def matchConstructorApp? (e : Expr) : MetaM (Option ConstructorVal) := do
  matchHelper? e isConstructorApp?

end Lean.Meta
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6814cd078d36a5a3ef7259e8f514b9065aa15e4f893c3a84875976b9cc137590 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
