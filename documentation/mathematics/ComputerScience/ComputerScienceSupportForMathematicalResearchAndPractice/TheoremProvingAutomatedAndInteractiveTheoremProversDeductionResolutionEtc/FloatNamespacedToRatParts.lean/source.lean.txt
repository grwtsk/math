-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToRatParts.Variant3e9aacfd51fd2175bcccbb6ae0c1007453b0b5337da8bf9f4ec9ce7fe2d80fb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e9aacfd51fd2175bcccbb6ae0c1007453b0b5337da8bf9f4ec9ce7fe2d80fb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ToRatParts.Variant3e9aacfd51fd2175bcccbb6ae0c1007453b0b5337da8bf9f4ec9ce7fe2d80fb8","mathematical_subject":"Foundations.Unclassified","original_sha256":"3e9aacfd51fd2175bcccbb6ae0c1007453b0b5337da8bf9f4ec9ce7fe2d80fb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Float.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
 Copyright (c) 2023 Mario Carneiro. All rights reserved.
 Released under Apache 2.0 license as described in the file LICENSE.
 Authors: Mario Carneiro
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToRatParts.Variant3e9aacfd51fd2175bcccbb6ae0c1007453b0b5337da8bf9f4ec9ce7fe2d80fb8

namespace Float

/-- Returns `v, exp` integers such that `f = v * 2^exp`.
(`e` is not minimal, but `v.abs` will be at most `2^53 - 1`.)
Returns `none` when `f` is not finite (i.e. `inf`, `-inf` or a `nan`). -/
def toRatParts (f : Float) : Option (Int × Int) :=
  if f.isFinite then
    let (f', exp) := f.frExp
    let x := (2^53:Nat).toFloat * f'
    let v := if x < 0 then
      (-(-x).floor.toUInt64.toNat : Int)
    else
      (x.floor.toUInt64.toNat : Int)
    some (v, exp - 53)
  else none

/-- Returns `v, exp` integers such that `f = v * 2^exp`.
Like `toRatParts`, but `e` is guaranteed to be minimal (`n` is always odd), unless `n = 0`.
`n.abs` will be at most `2^53 - 1` because `Float` has 53 bits of precision.
Returns `none` when `f` is not finite (i.e. `inf`, `-inf` or a `nan`). -/
partial def toRatParts' (f : Float) : Option (Int × Int) :=
  f.toRatParts.map fun (n, e) =>
    if n == 0 then (0, 0) else
      let neg : Bool := n < 0
      let v := n.natAbs.toUInt64
      let c := trailingZeros v 0
      let v := (v >>> c.toUInt64).toNat
      (if neg then -v else v, e + c.toNat)
where
  /-- Calculates the number of trailing bits in a `UInt64`. Requires `v ≠ 0`. -/
  -- Note: it's a bit dumb to be using a loop here, but it is hopefully written
  -- such that LLVM can tell we are computing trailing bits and do good things to it
  -- TODO: prove termination under suitable assumptions (only relevant if `Float` is not opaque)
  trailingZeros (v : UInt64) (c : UInt8) :=
    if v &&& 1 == 0 then trailingZeros (v >>> 1) (c + 1) else c

/-- Converts `f` to a string, including all decimal digits. -/
def toStringFull (f : Float) : String :=
  if let some (v, exp) := toRatParts f then
    let v' := v.natAbs
    let s := if exp ≥ 0 then
      Nat.repr (v' * (2^exp.toNat:Nat))
    else
      let e := (-exp).toNat
      let intPart := v' / 2^e
      let rem := v' % 2^e
      if rem == 0 then
        Nat.repr intPart
      else
        let rem := Nat.repr ((2^e + v' % 2^e) * 5^e)
        let rem := rem.dropRightWhile (· == '0')
        s!"{intPart}.{rem.extract ⟨1⟩ rem.endPos}"
    if v < 0 then s!"-{s}" else s
  else f.toString -- inf, -inf, nan
