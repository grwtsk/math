-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DepthFirst.Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DepthFirst.Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56","mathematical_subject":"Computation.DataStructures","original_sha256":"593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/search/DepthFirst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.MLList.DepthFirst

-- We perform a depth first search of the "proper divisors in descending order" tree.

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DepthFirst.Variant593420f2c0261ee2283c4175d900ab952f051393973c6d4f60c8c2658ec9fa56

#eval show Lean.MetaM Unit from do
  let r := depthFirstRemovingDuplicates' (fun n => List.range n |>.filter (n % · = 0) |>.reverse) 24
  guard $ r = [24, 12, 6, 3, 1, 2, 4, 8]
