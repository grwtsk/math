-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayMap.Variantfb947d621c1c8f330647bd595ca15c19cb8f22538b1ef95e65f295f818632814","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb947d621c1c8f330647bd595ca15c19cb8f22538b1ef95e65f295f818632814","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArrayMap.Variantfb947d621c1c8f330647bd595ca15c19cb8f22538b1ef95e65f295f818632814","mathematical_subject":"Computation.DataStructures","original_sha256":"fb947d621c1c8f330647bd595ca15c19cb8f22538b1ef95e65f295f818632814","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/ArrayMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.List.ArrayMap


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayMap.Variantfb947d621c1c8f330647bd595ca15c19cb8f22538b1ef95e65f295f818632814

open List

/-- info: #[3, 4, 5, 6] -/
#guard_msgs in
#eval List.toArrayMap [0, 1, 2, 3] (fun n => n + 3)

/-- info: #[7, 9, 15, 25] -/
#guard_msgs in
#eval toArrayMap [0, 1, 2, 3] (fun n => 2 * n ^ 2 + 7)
