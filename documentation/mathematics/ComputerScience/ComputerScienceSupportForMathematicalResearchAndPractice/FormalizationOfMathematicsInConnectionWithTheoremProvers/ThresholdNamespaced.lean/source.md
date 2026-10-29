# Threshold Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cf37eb7e728f38a9d39c4743d7e6d9e4e6fe91e` · SHA-256 `fd6657433f8441bc318f35cc3bb827543b4fb9a86f80293e9d06e7a936a792dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=644c244c1896d70ec5e2b535c2e3e1a036bac6467e458046065fc4d65fa44f0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Threshold/Variant7a184b206d5203f46552170ef0939cd18690a423625f0a5536ea1c54e3b7cb88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
