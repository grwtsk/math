-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantf8ca82300a8fe0b8111a82daf7420e2d0068bb7988ac66c3774b595bb3743fd8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8ca82300a8fe0b8111a82daf7420e2d0068bb7988ac66c3774b595bb3743fd8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantf8ca82300a8fe0b8111a82daf7420e2d0068bb7988ac66c3774b595bb3743fd8","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f8ca82300a8fe0b8111a82daf7420e2d0068bb7988ac66c3774b595bb3743fd8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-of-RH/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantf8ca82300a8fe0b8111a82daf7420e2d0068bb7988ac66c3774b595bb3743fd8

open Lake DSL

package SpectralProof where
  srcDir := "lean"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
