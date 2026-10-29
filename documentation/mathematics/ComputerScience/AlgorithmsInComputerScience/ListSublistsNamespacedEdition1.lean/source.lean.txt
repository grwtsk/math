-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantfbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.List.Variantfbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15","mathematical_subject":"Computation.DataStructures","original_sha256":"fbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/list_sublists.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Data.List.Basic

-- this times out with `sublistsFast`

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantfbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15

set_option maxRecDepth 561 in
example : [1, 2, 3].sublists.sublists.length = 256 := rfl

-- TODO(std4#307): until we have the `csimp` lemma in std, this is a sanity check that these two
-- are equal.
example : ([] : List Nat).sublists = [].sublistsFast := rfl
example : [1, 2, 3].sublists = [1, 2, 3].sublistsFast := rfl
