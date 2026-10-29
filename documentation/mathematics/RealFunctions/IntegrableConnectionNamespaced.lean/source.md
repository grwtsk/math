# Integrable Connection Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c84755ac62e68dba854cc4bdde2e843f9853dfdb` · SHA-256 `7b13d0dac74b7e980aaab2d570bbe1fcf0d833945bed193ea461e5c9aa0ab26a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ConnectionFlat.Variant0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ConnectionFlat.Variant0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d","mathematical_subject":"Analysis.Integration","original_sha256":"0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineTensor/IntegrableConnection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.Theorem.CrystallineTensor.IntegrableConnection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports integrable-connection contract exposure facts.
Ontology: proof.crystalline.integrable_connection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ConnectionFlat.Variant0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace IntegrableConnection

theorem connection_flat
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (nabla : Folder.CrystallineTensor.Connection F) :
    nabla.flat :=
  Folder.CrystallineTensor.connection_flat nabla

theorem connection_integrable
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (nabla : Folder.CrystallineTensor.Connection F) :
    nabla.integrable :=
  Folder.CrystallineTensor.connection_integrable nabla

theorem horizontal_section_is_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {X : C.Site.Obj}
    (s : Folder.CrystallineTensor.HorizontalSection nabla X) :
    nabla.horizontal X s.value :=
  Folder.CrystallineTensor.horizontal_section_is_horizontal s

end IntegrableConnection
end CrystallineTensor
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f975bfa74d5e94b3f70858c5bf0581c065976b7d939d1e61be9b3490e501a28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/IntegrableConnection/Variantfedc93c852972ac93e30f62c932221f081e456694fd70a928ae8145bb8abce60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
