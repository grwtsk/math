# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToposStackBridge.Variant0917ec89c978165c05ff9817da594d302716d3c8672b1e3792c3c0df79bd64be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `176a4b9ec0cfea02fbedc434fd4ee8dfefa7323a` · SHA-256 `0917ec89c978165c05ff9817da594d302716d3c8672b1e3792c3c0df79bd64be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.CompositeStack
import Folder.Stack.Composite
import Folder.ResearchTopos.SheafGluing
import Folder.ResearchTopos.StableSphereSite

/-!
# Folder.ResearchTopos.ToposStackBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges composite-stack presheaves to a stable-sphere site by supplied sheaf data.
Ontology: research_topos.topos_stack_bridge
Pivot role: dual
Zero typology: none
Contract boundary: contract
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure CompositeStackPresheaf
    (C : SiteCategory) where
  presheaf : Presheaf C
  stackRole : String
  representsCompositeStack : Prop

structure ToposStackBridge where
  site : StableSphereSite
  compositePresheaf : CompositeStackPresheaf site.category
  sheafCondition :
    SheafCondition site.topology compositePresheaf.presheaf
  globalSection : Prop
  localToGlobal :
    sheafCondition.localCompatible → globalSection

theorem topos_stack_global_section
    (B : ToposStackBridge)
    (h : B.sheafCondition.localCompatible) :
    B.globalSection :=
  B.localToGlobal h

end ResearchTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbf148f3b8237cf93bf3c1f5f97ceec834ff7aa6ba7d169ef362b11719b97595 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variant0917ec89c978165c05ff9817da594d302716d3c8672b1e3792c3c0df79bd64be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
