-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RatAddSound.Variantdaa90042086fb75e433b9e9f72fa7fb7c1db1e7ab449bf7a85eb00d13c3847d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"daa90042086fb75e433b9e9f72fa7fb7c1db1e7ab449bf7a85eb00d13c3847d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RatAddSound.Variantdaa90042086fb75e433b9e9f72fa7fb7c1db1e7ab449bf7a85eb00d13c3847d2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"daa90042086fb75e433b9e9f72fa7fb7c1db1e7ab449bf7a85eb00d13c3847d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/Formula/Instance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RatAddSound


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RatAddSound.Variantdaa90042086fb75e433b9e9f72fa7fb7c1db1e7ab449bf7a85eb00d13c3847d2

@[expose] public section

/-!
This module couples the default LRAT implementation to the `Formula` typeclass.
-/

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

namespace DefaultFormula

instance {n : Nat} : Formula (PosFin n) (DefaultClause n) (DefaultFormula n) where
  toList := toList
  ReadyForRupAdd := ReadyForRupAdd
  ReadyForRatAdd := ReadyForRatAdd
  ofArray := ofArray
  readyForRupAdd_ofArray := readyForRupAdd_ofArray
  readyForRatAdd_ofArray := readyForRatAdd_ofArray
  insert := insert
  insert_iff := insert_iff
  readyForRupAdd_insert := readyForRupAdd_insert
  readyForRatAdd_insert := readyForRatAdd_insert
  delete := delete
  readyForRupAdd_delete := readyForRupAdd_delete
  readyForRatAdd_delete := readyForRatAdd_delete
  delete_subset := delete_subset
  formulaEntails_def := formulaEntails_def
  performRupAdd := performRupAdd
  rupAdd_result := rupAdd_result
  rupAdd_sound := rupAdd_sound
  performRatAdd := performRatAdd
  ratAdd_result := ratAdd_result
  ratAdd_sound := ratAdd_sound

end DefaultFormula

end Internal
end LRAT
end Std.Tactic.BVDecide
