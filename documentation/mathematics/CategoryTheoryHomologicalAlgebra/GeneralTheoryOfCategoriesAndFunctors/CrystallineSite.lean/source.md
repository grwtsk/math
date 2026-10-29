# Crystalline Site — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b99803ead3141f635003349c1a30604654ceb81` · SHA-256 `d3e2f481dac998db3b270b42dbee9e0b38cca4771279312e226fa88467c1f1e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=309649442383eea5d60f11880fb3d53e02abe9ff28f93fb06bde88e20a722ecf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CrystallineSite/Variantd3e2f481dac998db3b270b42dbee9e0b38cca4771279312e226fa88467c1f1e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
