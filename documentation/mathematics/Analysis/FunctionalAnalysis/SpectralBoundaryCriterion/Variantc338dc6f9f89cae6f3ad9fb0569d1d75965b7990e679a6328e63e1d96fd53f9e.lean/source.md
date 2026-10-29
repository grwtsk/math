# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralBoundaryCriterion.Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1de52bb070d7a1d2883d91700e7d70e203f54808` · SHA-256 `c338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.IndexSpectralTraceIdentity

/-!
# Folder.CanonicalPath.SpectralBoundaryCriterion

Radiation role: research-boundary
BinaryMatrix spine: This module records the decisive spectral-boundary criterion.
Ontology: canonical.spectral_boundary_criterion
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure PositivitySelfAdjointnessData where
  OperatorData : Type
  selfAdjoint : Prop
  positivity : Prop
  noOffCriticalResonances : Prop
  noOffCriticalResonances_certified : noOffCriticalResonances
  sourceLabel : String

structure SpectralBoundaryCriterion where
  traceIdentity : IndexSpectralTraceIdentity
  positivityData : PositivitySelfAdjointnessData
  boundaryAlignment : Prop
  boundaryAlignment_certified : boundaryAlignment
  sourceLabel : String

theorem positivity_rules_out_offcritical_resonances
    (P : PositivitySelfAdjointnessData) :
    P.noOffCriticalResonances :=
  P.noOffCriticalResonances_certified

theorem spectral_boundary_alignment_if_supplied
    (B : SpectralBoundaryCriterion) :
    B.boundaryAlignment :=
  B.boundaryAlignment_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50b33c5ccc9d63fe22e767ac8d573567a36bbdc9c7ca595342d13587fceb5bd9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SpectralBoundaryCriterion/Variantc338dc6f9f89cae6f3ad9fb0569d1d75965b7990e679a6328e63e1d96fd53f9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
