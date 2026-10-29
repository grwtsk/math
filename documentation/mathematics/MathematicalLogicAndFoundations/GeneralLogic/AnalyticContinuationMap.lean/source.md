# Analytic Continuation Map — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32b004267a7351ea9185e9b84d54e176fa0706e5` · SHA-256 `24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.RodgersTaoHeat
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.CanonicalPath.AnalyticContinuationMap

Radiation role: research-boundary
BinaryMatrix spine: This module records analytic continuation maps, not BinaryMatrix heat.
Ontology: canonical.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure AnalyticContinuationMap where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  sourceComplex : DerivedSheaf.SectionComplex
  targetComplex : DerivedSheaf.SectionComplex
  chainMapData : Type
  respectsDifferential : Prop
  respectsDifferential_certified : respectsDifferential
  compactnessFredholmEstimates : Prop
  compactnessFredholmEstimates_certified : compactnessFredholmEstimates
  sourceLabel : String

theorem continuation_map_respects_differential
    (C : AnalyticContinuationMap) :
    C.respectsDifferential :=
  C.respectsDifferential_certified

theorem continuation_map_has_estimates
    (C : AnalyticContinuationMap) :
    C.compactnessFredholmEstimates :=
  C.compactnessFredholmEstimates_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=959c5940e1b42273ad38b66b2cef5ac32755abf752aded0db3d744b753ed86c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variant24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
