# Sheaf Gluing — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adcfdbf2f005f8e1b2e628ceaf9cfc1e7f9a80f5` · SHA-256 `437ee8c1dbb1745ab9987ae48e8511d44aa3a9305acd8a022836185dabcc4701`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.SheafGluing

/-!
# Folder.Theorem.ResearchTopos.SheafGluing

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports sheaf-gluing contract exposure.
Ontology: proof.research_topos.sheaf_gluing
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace SheafGluing

theorem sheaf_glues_from_compatibility
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.ResearchTopos.Presheaf C}
    (S : Folder.ResearchTopos.SheafCondition J F)
    (h : S.localCompatible) :
    S.gluesUniquely h :=
  Folder.ResearchTopos.sheaf_glues_from_compatibility S h

end SheafGluing
end ResearchTopos
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a47dfa4d75f7f23239652f5d72eaaab6141ed6b55c89f0edff68bcbabfdd3007 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafGluing/Variant437ee8c1dbb1745ab9987ae48e8511d44aa3a9305acd8a022836185dabcc4701.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
