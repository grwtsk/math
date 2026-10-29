-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant8bcd4dba5c36de4cbe9b304edcc3866d309490fa5d00741ee50dfc3354008c91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bcd4dba5c36de4cbe9b304edcc3866d309490fa5d00741ee50dfc3354008c91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant8bcd4dba5c36de4cbe9b304edcc3866d309490fa5d00741ee50dfc3354008c91","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"8bcd4dba5c36de4cbe9b304edcc3866d309490fa5d00741ee50dfc3354008c91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant8bcd4dba5c36de4cbe9b304edcc3866d309490fa5d00741ee50dfc3354008c91

open Lake DSL

package SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "fead16e91f8b84c43b5c78e60d90fffc4e93cc5d"

@[default_target]
lean_lib SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"

lean_exe spectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"
  root := `SpectralProof.Main
