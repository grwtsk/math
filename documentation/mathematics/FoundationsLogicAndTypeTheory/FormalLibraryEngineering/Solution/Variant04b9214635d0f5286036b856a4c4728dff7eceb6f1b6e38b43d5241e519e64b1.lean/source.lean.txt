-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.N.Variantc90008c42c1b34c03dc17c4f8207e51fe40d21b30ccb13f2e8d928cf027fcf4c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c90008c42c1b34c03dc17c4f8207e51fe40d21b30ccb13f2e8d928cf027fcf4c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.N.Variantc90008c42c1b34c03dc17c4f8207e51fe40d21b30ccb13f2e8d928cf027fcf4c","mathematical_subject":"Foundations.Unclassified","original_sha256":"c90008c42c1b34c03dc17c4f8207e51fe40d21b30ccb13f2e8d928cf027fcf4c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/def_hole_type_mismatch/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- Solution's hole has a different type; should be rejected even though the
-- theorem body is `sorry`.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.N.Variantc90008c42c1b34c03dc17c4f8207e51fe40d21b30ccb13f2e8d928cf027fcf4c

def n : Int := 17

theorem foo : 17 + 17 = 34 := sorry
