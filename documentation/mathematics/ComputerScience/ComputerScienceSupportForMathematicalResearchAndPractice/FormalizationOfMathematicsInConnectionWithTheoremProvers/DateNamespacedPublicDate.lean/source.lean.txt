-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Date.Variant8a12d2a913f0e08cdad72b4560dfd0fe809418817a6626b19ebc861e257b73bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a12d2a913f0e08cdad72b4560dfd0fe809418817a6626b19ebc861e257b73bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Date.Variant8a12d2a913f0e08cdad72b4560dfd0fe809418817a6626b19ebc861e257b73bc","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"8a12d2a913f0e08cdad72b4560dfd0fe809418817a6626b19ebc861e257b73bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Date.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Date.Variant8a12d2a913f0e08cdad72b4560dfd0fe809418817a6626b19ebc861e257b73bc

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
