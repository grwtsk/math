-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LpadAscii.Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.LpadAscii.Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/String.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.ToString.Basic
import Init.Data.UInt.Lemmas
import Init.Data.String.Basic
import Init.Data.Nat.Fold
import Init.Data.String.Length


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LpadAscii.Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5

namespace Lake

public def lpadAscii (s : String) (c : Char) (len : Nat) : String :=
  "".pushn c (len - s.lengthAssumingAscii) ++ s

public def rpadAscii (s : String) (c : Char) (len : Nat) : String :=
  s.pushn c (len - s.lengthAssumingAscii)

public def zpad (n : Nat) (len : Nat) : String :=
  lpadAscii (toString n) '0' len

/-- Returns whether a string is composed of only hexadecimal digits. -/
public def isHex (s : String) : Bool :=
  s.utf8ByteSize.all fun i h =>
    let c := s.getUTF8Byte ⟨i⟩ h
    if c ≤ 57 then -- '9'
      48 ≤ c -- '0'
    else if c ≤ 102 then -- 'f'
      97 ≤ c -- 'a'
    else if c ≤ 70 then -- 'F'
      65 ≤ c -- 'A'
    else
      false

def lowerHexByte (n : UInt8) : UInt8 :=
  if n ≤ 9 then
    n + 48 -- + '0'
  else
    n + 87 -- + ('a' - 10)

theorem isValidChar_of_lt_256 (h : n < 256) : isValidChar n :=
  Or.inl <| Nat.lt_trans h (by decide)

def lowerHexChar (n : UInt8) : Char :=
  ⟨lowerHexByte n |>.toUInt32, isValidChar_of_lt_256 <|
     UInt32.lt_iff_toNat_lt.mpr <| (lowerHexByte n).toNat_lt⟩

public def lowerHexUInt64 (n : UInt64) : String :=
  String.ofByteArray (ByteArray.emptyWithCapacity 16) ByteArray.isValidUTF8_empty
  |>.push (lowerHexChar (n >>> 60 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 56 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 52 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 48 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 44 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 40 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 36 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 32 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 28 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 24 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 20 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 16 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 12 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 8 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 4 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n &&& 0xf).toUInt8)

-- sanity check
example : "0123456789abcdef" = lowerHexUInt64 0x0123456789abcdef := by decide
