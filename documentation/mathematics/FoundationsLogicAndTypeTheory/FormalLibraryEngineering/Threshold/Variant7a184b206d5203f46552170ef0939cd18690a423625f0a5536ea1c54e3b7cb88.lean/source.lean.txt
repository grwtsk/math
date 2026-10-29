-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThresholdQuantizer.Variant9556dd15c1d4b429923f348e729bbb04c8404b3afe2cc05cd80dadcd03ee8242","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9556dd15c1d4b429923f348e729bbb04c8404b3afe2cc05cd80dadcd03ee8242","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ThresholdQuantizer.Variant9556dd15c1d4b429923f348e729bbb04c8404b3afe2cc05cd80dadcd03ee8242","mathematical_subject":"Foundations.Unclassified","original_sha256":"9556dd15c1d4b429923f348e729bbb04c8404b3afe2cc05cd80dadcd03ee8242","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Threshold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.Bit

/-!
# Folder.Quantization.Threshold

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: quantization.threshold
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: residual
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThresholdQuantizer.Variant9556dd15c1d4b429923f348e729bbb04c8404b3afe2cc05cd80dadcd03ee8242

namespace Folder
namespace Quantization

open Carrier

structure ThresholdQuantizer where
  threshold : Real
  bitOf : Real → Bit
  bitOf_spec_zero : ∀ x, x < threshold → bitOf x = 0
  bitOf_spec_one : ∀ x, threshold ≤ x → bitOf x = 1

end Quantization
end Folder
