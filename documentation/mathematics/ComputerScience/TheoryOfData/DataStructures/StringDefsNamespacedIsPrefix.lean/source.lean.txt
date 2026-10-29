-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Leftpad.Variantbc9b574e4cecee034debd30035f4f8ab536b3ddb07118a23cc78d14586c9e36a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc9b574e4cecee034debd30035f4f8ab536b3ddb07118a23cc78d14586c9e36a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Leftpad.Variantbc9b574e4cecee034debd30035f4f8ab536b3ddb07118a23cc78d14586c9e36a","mathematical_subject":"Computation.DataStructures","original_sha256":"bc9b574e4cecee034debd30035f4f8ab536b3ddb07118a23cc78d14586c9e36a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/String/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Keeley Hoek, Floris van Doorn, Chris Bailey
-/
import Std.Data.List.Basic
import Mathlib.Mathport.Rename


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Leftpad.Variantbc9b574e4cecee034debd30035f4f8ab536b3ddb07118a23cc78d14586c9e36a

#align_import data.string.defs from "leanprover-community/mathlib"@"e7131068d9696deec51e6cd7668b6d9ac69af6a4"

/-!
# Definitions for `String`

This file defines a bunch of functions for the `String` datatype.
-/

namespace String

#align string.split_on String.splitOn
#align string.is_prefix_of String.isPrefixOf
#align string.starts_with String.startsWith
#align string.ends_with String.endsWith
#align string.is_nat String.isNat

/-- Pad `s : String` with repeated occurrences of `c : Char` until it's of length `n`.
  If `s` is initially larger than `n`, just return `s`. -/
def leftpad (n : Nat) (c : Char) (s : String) : String :=
  ⟨List.leftpad n c s.data⟩

/-- Construct the string consisting of `n` copies of the character `c`. -/
def replicate (n : Nat) (c : Char) : String :=
  ⟨List.replicate n c⟩

/-- `s.isPrefix t` checks if the string `s` is a prefix of the string `t`. -/
def isPrefix : String → String → Prop
  | ⟨d1⟩, ⟨d2⟩ => List.isPrefix d1 d2

/-- `s.isSuffix t` checks if the string `s` is a suffix of the string `t`. -/
def isSuffix : String → String → Prop
  | ⟨d1⟩, ⟨d2⟩ => List.isSuffix d1 d2

/-- `String.mapTokens c f s` tokenizes `s : string` on `c : char`, maps `f` over each token, and
then reassembles the string by intercalating the separator token `c` over the mapped tokens. -/
def mapTokens (c : Char) (f : String → String) : String → String :=
  intercalate (singleton c) ∘ List.map f ∘ (·.split (· = c))
#align string.map_tokens String.mapTokens

/-- `getRest s t` returns `some r` if `s = t ++ r`.
If `t` is not a prefix of `s`, it returns `none`. -/
def getRest (s t : String) : Option String :=
  List.asString <$> s.toList.getRest t.toList
#align string.get_rest String.getRest

#align string.popn String.drop

/-- Produce the head character from the string `s`, if `s` is not empty, otherwise `'A'`. -/
def head (s : String) : Char :=
  s.iter.curr
#align string.head String.head

end String
