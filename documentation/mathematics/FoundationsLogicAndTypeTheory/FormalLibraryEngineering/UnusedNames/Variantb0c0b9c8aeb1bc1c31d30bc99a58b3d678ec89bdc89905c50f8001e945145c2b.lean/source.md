# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnusedNames.Variantb0c0b9c8aeb1bc1c31d30bc99a58b3d678ec89bdc89905c50f8001e945145c2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b63ba356a8dc90149bd6e2b7d0b82da255b208ff` · SHA-256 `b0c0b9c8aeb1bc1c31d30bc99a58b3d678ec89bdc89905c50f8001e945145c2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.LocalContext

public section

open Lean Lean.Meta

namespace Lean.Name

private def parseIndexSuffix (s : String.Slice) : Option Nat :=
  if s.isEmpty then
    none
  else if s.front == '_' then
    s.drop 1 |>.toNat?
  else
    none

/--
Result type of `Lean.Name.matchUpToIndexSuffix`. See there for details.
-/
inductive MatchUpToIndexSuffix
  /-- Exact match. -/
  |  exactMatch
  /-- No match. -/
  | noMatch
  /-- Match up to suffix. -/
  | suffixMatch (i : Nat)

/--
Succeeds if `n` is equal to `query`, except `n` may have an additional `_i`
suffix for some natural number `i`. More specifically:

- If `n = query`, the result is `exactMatch`.
- If `n = query ++ "_i"` for some natural number `i`, the result is
  `suffixMatch i`.
- Otherwise the result is `noMatch`.
-/
def matchUpToIndexSuffix (n : Name) (query : Name) :
    MatchUpToIndexSuffix :=
  match n, query with
  | .str pre₁ s₁, .str pre₂ s₂ =>
    if pre₁ != pre₂ then
      .noMatch
    else
      if let some suffix := s₁.dropPrefix? s₂ then
        if suffix.isEmpty then
          .exactMatch
        else
          if let some i := parseIndexSuffix suffix then
            .suffixMatch i
          else
            .noMatch
      else
        .noMatch
  | n, query => if n == query then .exactMatch else .noMatch

end Name


namespace LocalContext

/--
Obtain the least natural number `i` such that `suggestion ++ "_i"` is an unused
name in the given local context. If `suggestion` itself is unused, the result
is `none`.
-/
def getUnusedUserNameIndex (lctx : LocalContext) (suggestion : Name) :
    Option Nat := Id.run do
  let mut minSuffix := none
  for ldecl in lctx do
    let hypName := ldecl.userName
    if hypName.hasMacroScopes then
      continue
    match ldecl.userName.matchUpToIndexSuffix suggestion with
    | .exactMatch => minSuffix := updateMinSuffix minSuffix 1
    | .noMatch => continue
    | .suffixMatch i => minSuffix := updateMinSuffix minSuffix (i + 1)
  minSuffix
where
  /-- Auxiliary definition for `getUnusedUserNameIndex`. -/
  @[inline]
  updateMinSuffix : Option Nat → Nat → Option Nat
    | none, j => some j
    | some i, j => some $ i.max j

/--
Obtain a name `n` such that `n` is unused in the given local context and
`suggestion` is a prefix of `n`. This is similar to `getUnusedName` but uses
a different algorithm which may or may not be faster.
-/
def getUnusedUserName (lctx : LocalContext) (suggestion : Name) : Name :=
  let suggestion := suggestion.eraseMacroScopes
  match lctx.getUnusedUserNameIndex suggestion with
  | none => suggestion
  | some i => suggestion.appendIndexAfter i

/--
Obtain `n` distinct names such that each name is unused in the given local
context and `suggestion` is a prefix of each name.
-/
def getUnusedUserNames (lctx : LocalContext) (n : Nat) (suggestion : Name) :
    Array Name :=
  if n == 0 then
    #[]
  else
    let suggestion := suggestion.eraseMacroScopes
    let acc := Array.mkEmpty n
    match lctx.getUnusedUserNameIndex suggestion with
    | none => loop (acc.push suggestion) (n - 1) 1
    | some i => loop acc n i
where
  /-- Auxiliary definition for `getUnusedUserNames`. -/
  loop (acc : Array Name) (n i : Nat) : Array Name :=
    match n with
    | 0 => acc
    | n + 1 => loop (acc.push $ suggestion.appendIndexAfter i) n (i + 1)

end Lean.LocalContext


namespace Lean.Meta

/--
Obtain a name `n` such that `n` is unused in the current local context and
`suggestion` is a prefix of `n`.
-/
def getUnusedUserName [Monad m] [MonadLCtx m] (suggestion : Name) : m Name :=
  return (← getLCtx).getUnusedUserName suggestion

/--
Obtain `n` distinct names such that each name is unused in the current local
context and `suggestion` is a prefix of each name.
-/
def getUnusedUserNames [Monad m] [MonadLCtx m] (n : Nat) (suggestion : Name) :
    m (Array Name) :=
  return (← getLCtx).getUnusedUserNames n suggestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8bf64c80eef6bd5a1b4beb30b8a94e42ce14db1ded9118a65668e41112c5fd8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variantb0c0b9c8aeb1bc1c31d30bc99a58b3d678ec89bdc89905c50f8001e945145c2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
