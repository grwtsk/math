# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CrystallineSite.Variant15aca331220967decb13a49f558025980c80ff61ac53d2e6a2bbb1414c3318b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `770176a9c5dd50f4bbf0aeb29bfec9f2b3ae7f4d` · SHA-256 `b9753515dc53e57bc6a090cbac154e30d791f83ef50be5d9eacf902c6d140093`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CrystallineSite.Variantd3e2f481dac998db3b270b42dbee9e0b38cca4771279312e226fa88467c1f1e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3e2f481dac998db3b270b42dbee9e0b38cca4771279312e226fa88467c1f1e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineSite.Variantd3e2f481dac998db3b270b42dbee9e0b38cca4771279312e226fa88467c1f1e8","mathematical_subject":"Foundations.Unclassified","original_sha256":"d3e2f481dac998db3b270b42dbee9e0b38cca4771279312e226fa88467c1f1e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/CrystallineSite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.InfinitesimalThickening
import Folder.ResearchTopos.GrothendieckTopology

/-!
# Folder.CrystallineTensor.CrystallineSite

Radiation role: research-boundary
BinaryMatrix spine: This module supplies an abstract site boundary, not a BinaryMatrix descent theorem.
Ontology: crystalline.site
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CrystallineSite.Variantd3e2f481dac998db3b270b42dbee9e0b38cca4771279312e226fa88467c1f1e8

namespace Folder
namespace CrystallineTensor

/--
Crystalline-site-inspired metadata over an abstract site.

The intended base label may mention `M_ell`, but no actual crystalline site of
`M_ell` is constructed here.
-/
structure CrystallineSite where
  Site : ResearchTopos.SiteCategory
  topology : ResearchTopos.GrothendieckTopology Site
  thickeningOf : Site.Obj → Option InfinitesimalThickening
  baseLabel : String
  intendedBaseStack : String := "M_ell"

structure CrystallineCover
    (C : CrystallineSite)
    (X : C.Site.Obj) where
  cover : ResearchTopos.Cover C.Site X
  crystallineCompatible : C.topology.IsCover X cover

theorem crystalline_cover_is_cover
    {C : CrystallineSite}
    {X : C.Site.Obj}
    (U : CrystallineCover C X) :
    C.topology.IsCover X U.cover :=
  U.crystallineCompatible

end CrystallineTensor
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e712fc0f43740276936bf13c380cbf836b883072a885aead3f283f6dbb24f0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CrystallineSite/Variant15aca331220967decb13a49f558025980c80ff61ac53d2e6a2bbb1414c3318b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
