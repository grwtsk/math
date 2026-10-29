-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Real.Variant4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Real.Variant4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/NormNum/Abs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.NormNum


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Real.Variant4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8

example : |(4 : ℤ)| = 4 := by norm_num1
example : |(4 : ℚ)| = 4 := by norm_num1
example : |(4 : ℝ)| = 4 := by norm_num1
example : |(-11 : ℤ)| = 11 := by norm_num1
example : |(3 : ℚ) / 7| = 3 / 7 := by norm_num1
example : |(1 : ℚ) / 5| < 1 / 3 := by norm_num1
example : |-(2 : ℚ) / 7| = 2 / 7 := by norm_num1
