# Date Public Date — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfdff75d75f59894d0f2463a776256af22250917` · SHA-256 `8a12d2a913f0e08cdad72b4560dfd0fe809418817a6626b19ebc861e257b73bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.Ord.Basic
public import Lean.Data.Json
import Lake.Util.String
import Init.Data.String.Search
import Init.Data.Iterators.Consumers.Collect
import Init.Data.ToString.Macro

/-!
#  Date

A year-mont-day date. Used by Lake's TOML parser and its toolchain version
parser (for nightlies).
-/

open Lean (Json FromJson ToJson fromJson? toJson)

namespace Lake

/-- A date (year-month-day). -/
public structure Date where
  year : Nat
  month : Nat
  day : Nat
  deriving Inhabited, DecidableEq, Ord, Repr

namespace Date

public instance : LT Date := ltOfOrd
public instance : LE Date := leOfOrd
public instance : Min Date := minOfLe
public instance : Max Date := maxOfLe

public abbrev IsLeapYear (y : Nat) : Prop :=
  y % 4 = 0 ∧ (y % 100 ≠ 0 ∨ y % 400 = 0)

public abbrev IsValidMonth (m : Nat) : Prop :=
  m ≥ 1 ∧ m ≤ 12

public def maxDay (y m : Nat) :  Nat :=
  if m = 2 then
    if IsLeapYear y then 29 else 28
  else if m ≤ 7 then
    30 + (m % 2)
  else
    31 - (m % 2)

public abbrev IsValidDay (y m d : Nat) : Prop :=
  d ≥ 1 ∧ d ≤ maxDay y m

public def ofValid? (year month day : Nat) : Option Date := do
  guard (IsValidMonth month ∧ IsValidDay year month day)
  return {year, month, day}

public def ofString? (t : String) : Option Date := do
  match t.split '-' |>.toList with
  | [y,m,d] =>
    ofValid? (← y.toNat?) (← m.toNat?) (← d.toNat?)
  | _ => none

public protected def fromJson? (j : Json) : Except String Date := do
  let .str s := j
    | throw "expected date"
  let some d := ofString? s
    | throw "expected date"
  return d

public instance : FromJson Date := ⟨Date.fromJson?⟩

public protected def toString (d : Date) : String :=
  s!"{zpad d.year 4}-{zpad d.month 2}-{zpad d.day 2}"

public instance : ToString Date := ⟨Date.toString⟩

@[inline] public protected def toJson (d : Date) : Json :=
  d.toString

public instance : ToJson Date := ⟨Date.toJson⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4415e2c377085314cfde004e55c64c318cb377135223208482c3e8462bcd3f72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Date/Variant8a12d2a913f0e08cdad72b4560dfd0fe809418817a6626b19ebc861e257b73bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
