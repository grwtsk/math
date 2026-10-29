# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ZeroFlowODE.Variantdbe13135839f0ead0d0bf17ee154eee43f49f778af751248692919612e24c743

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e848c0101523d302d0863ee9f4e720f651925af` · SHA-256 `dbe13135839f0ead0d0bf17ee154eee43f49f778af751248692919612e24c743`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.ZeroFlowODE

/-!
# Folder.Theorem.ResearchTopos.ZeroFlowODE

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports finite toy zero-flow facts.
Ontology: proof.research_topos.zero_flow_ode
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace ZeroFlowODE

theorem finite_zero_config_ordered
    (X : Folder.ResearchTopos.FiniteZeroConfiguration)
    {i j : Fin X.n}
    (h : i.val < j.val) :
    X.pos i < X.pos j :=
  Folder.ResearchTopos.finite_zero_config_ordered X h

end ZeroFlowODE
end ResearchTopos
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4930206acf116ff090b1e71e31b42c2fb14e5e438c27ee55a0ad20d26dc5a3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroFlowODE/Variantdbe13135839f0ead0d0bf17ee154eee43f49f778af751248692919612e24c743.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
