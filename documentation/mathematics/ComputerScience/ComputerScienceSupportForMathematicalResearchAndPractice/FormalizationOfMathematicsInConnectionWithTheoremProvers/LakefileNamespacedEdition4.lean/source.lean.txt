-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant9adaafba337dca0fdc2efe671ce6fdd3d05a5ff02ea2402c4cbfbd17a0eefacd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9adaafba337dca0fdc2efe671ce6fdd3d05a5ff02ea2402c4cbfbd17a0eefacd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant9adaafba337dca0fdc2efe671ce6fdd3d05a5ff02ea2402c4cbfbd17a0eefacd","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"9adaafba337dca0fdc2efe671ce6fdd3d05a5ff02ea2402c4cbfbd17a0eefacd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/adapt/lake/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant9adaafba337dca0fdc2efe671ce6fdd3d05a5ff02ea2402c4cbfbd17a0eefacd

open Lake DSL

package think where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

lean_lib Think where
  srcDir := "lib/rendering/shader/core/lean"
  roots := #[`Think]
