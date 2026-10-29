# Util Public Cnstr — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95f66949dbddf4841dfef4a92cc046161bdae7e7` · SHA-256 `b84628e78dcec84762cb6a8dc67c36f4e17d7c70ad3637a1d78c00d75d7f7aae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Order.OrderM
import Lean.Meta.Tactic.Grind.Arith.Util
public section
namespace Lean.Meta.Grind.Order

def Cnstr.pp (c : Cnstr NodeId) : OrderM MessageData := do
  let u ← getExpr c.u
  let v ← getExpr c.v
  let op := match c.kind with
    | .le => "≤"
    | .lt => "<"
  if c.k != 0 then
    return m!"{Arith.quoteIfArithTerm u} {op} {Arith.quoteIfArithTerm v} + {c.k}"
  else
    return m!"{Arith.quoteIfArithTerm u} {op} {Arith.quoteIfArithTerm v}"

def Weight.compare (a b : Weight) : Ordering :=
  if a.k < b.k then
    .lt
  else if a.k > b.k then
    .gt
  else if a.strict == b.strict then
    .eq
  else if a.strict && !b.strict then
    /-
    **Note**: Recall that we view a constraint of the
    form `x < y + k` as `x ≤ y + (k - ε)` where `ε` is
    an "infinitesimal" positive value.
    Thus, `k - ε < k`
    -/
    .lt
  else
    .gt

instance : Ord Weight where
  compare := Weight.compare

instance : LE Weight where
  le a b := compare a b ≠ .gt

instance : LT Weight where
  lt a b := compare a b = .lt

instance : DecidableLE Weight :=
  fun a b => inferInstanceAs (Decidable (compare a b ≠ .gt))

instance : DecidableLT Weight :=
  fun a b => inferInstanceAs (Decidable (compare a b = .lt))

def Weight.add (a b : Weight) : Weight :=
  { k := a.k + b.k, strict := a.strict || b.strict }

instance : Add Weight where
  add := Weight.add

def Weight.isNeg (a : Weight) : Bool :=
  a.k < 0 || (a.k == 0 && a.strict)

def Weight.isZero (a : Weight) : Bool :=
  a.k == 0 && !a.strict

instance : ToString Weight where
  toString a := if a.strict then s!"{a.k}-ε" else s!"{a.k}"

def ToPropagate.pp (todo : ToPropagate) : OrderM MessageData := do
  match todo with
  | .eqTrue _ e u v k k' => return m!"eqTrue: {e}, {← getExpr u}, {← getExpr v}, {k}, {k'}"
  | .eqFalse _ e u v k k' => return m!"eqFalse: {e}, {← getExpr u}, {← getExpr v}, {k}, {k'}"
  | .eq u v => return m!"eq: {← getExpr u}, {← getExpr v}"

def Cnstr.getWeight (c : Cnstr α) : Weight :=
  match c.kind with
  | .le => { k := c.k }
  | .lt => { k := c.k, strict := true }

end Lean.Meta.Grind.Order
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4eaebeb13fffc1d3e27b58ee64b80af0ef7de5733efff8b6245702f3c95356dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb84628e78dcec84762cb6a8dc67c36f4e17d7c70ad3637a1d78c00d75d7f7aae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
