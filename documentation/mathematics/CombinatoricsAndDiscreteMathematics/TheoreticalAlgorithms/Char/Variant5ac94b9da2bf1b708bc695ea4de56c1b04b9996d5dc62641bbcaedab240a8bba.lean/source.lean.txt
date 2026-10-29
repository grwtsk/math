-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pred.Variant0e75ae85634186de7b5648cd5fcecee488d5215d942909dd9ea1abf745d5d008","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e75ae85634186de7b5648cd5fcecee488d5215d942909dd9ea1abf745d5d008","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Pred.Variant0e75ae85634186de7b5648cd5fcecee488d5215d942909dd9ea1abf745d5d008","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0e75ae85634186de7b5648cd5fcecee488d5215d942909dd9ea1abf745d5d008","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Pattern/Char.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Markus Himmel
-/
module

prelude
public import Init.Data.String.Pattern.Pred


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pred.Variant0e75ae85634186de7b5648cd5fcecee488d5215d942909dd9ea1abf745d5d008

set_option doc.verso true

/-!
This module defines the necessary instances to register {name}`Char` with the pattern framework.
-/

public section

namespace String.Slice.Pattern

namespace Char

instance {c : Char} : ForwardPattern c where
  skipPrefixOfNonempty? s h := ForwardPattern.skipPrefixOfNonempty? (· == c) s h
  skipPrefix? s := ForwardPattern.skipPrefix? (· == c) s
  startsWith s := ForwardPattern.startsWith (· == c) s

instance {c : Char} : StrictForwardPattern c where
  ne_startPos h q := StrictForwardPattern.ne_startPos (pat := (· == c)) h q

instance {c : Char} : LawfulForwardPattern c where
  skipPrefixOfNonempty?_eq h := LawfulForwardPattern.skipPrefixOfNonempty?_eq (pat := (· == c)) h
  startsWith_eq s := LawfulForwardPattern.startsWith_eq (pat := (· == c)) s

instance {c : Char} : ToForwardSearcher c (ToForwardSearcher.DefaultForwardSearcher (· == c)) where
  toSearcher s := ToForwardSearcher.toSearcher (· == c) s

instance {c : Char} : BackwardPattern c where
  skipSuffixOfNonempty? s h := BackwardPattern.skipSuffixOfNonempty? (· == c) s h
  skipSuffix? s := BackwardPattern.skipSuffix? (· == c) s
  endsWith s := BackwardPattern.endsWith (· == c) s

instance {c : Char} : StrictBackwardPattern c where
  ne_endPos h q := StrictBackwardPattern.ne_endPos (pat := (· == c)) h q

instance {c : Char} : LawfulBackwardPattern c where
  skipSuffixOfNonempty?_eq h := LawfulBackwardPattern.skipSuffixOfNonempty?_eq (pat := (· == c)) h
  endsWith_eq s := LawfulBackwardPattern.endsWith_eq (pat := (· == c)) s

instance {c : Char} : ToBackwardSearcher c (ToBackwardSearcher.DefaultBackwardSearcher (· == c)) where
  toSearcher s := ToBackwardSearcher.toSearcher (· == c) s

end Char

end String.Slice.Pattern
