# Cubic Semantics Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1409d14976a2b8e9943739405f3a09609a6a222f` · SHA-256 `9ee1857fba145f19dd66fad7bbcbe0fabaa7f344ae8a76cdb5368717700e51c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CubicCellSemantics.Variant063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CubicCellSemantics.Variant063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5","mathematical_subject":"Analysis.Integration","original_sha256":"063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Analysis/CubicSemantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Analysis.CubicIntegration

/-!
# Folder.Analysis.CubicSemantics

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic_semantics
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.Analysis.RealAnalysis.Integration.CubicCellSemantics.Variant063515532f1beec882cd8118f9010f37476761b88002b23ea82bb9b4064e79a5

namespace Folder
namespace Analysis

structure CubicCellSemantics where
  cubic : Cubic
  lo : ℝ
  hi : ℝ
  value : ℝ
  value_eq_integral : value = cubic.integral lo hi

theorem CubicCellSemantics.correct
    (S : CubicCellSemantics) :
    S.value = S.cubic.integral S.lo S.hi :=
  S.value_eq_integral

end Analysis
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b5f5f4479cefe4a83fd0b0d80441144994a72f7303ae8a72130de5698825173 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CubicSemantics/Variant299b6e1534f84c98658c317bfe2621b2f9a264f72c16933fad9c91aba0ab00c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
