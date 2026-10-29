# Complete source: GRWTSK.Analysis.FunctionalAnalysis.GlobalAlignmentComposition.Variant9811dd0cf459b2d7bcf9346107b6c51d2c5005331df52644074f372132ced4fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f2f07c857b12725bd6f8083ab3fa6efc132fd25` · SHA-256 `9811dd0cf459b2d7bcf9346107b6c51d2c5005331df52644074f372132ced4fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.SpectralBoundaryCriterion

/-!
# Folder.CanonicalPath.GlobalAlignmentComposition

Radiation role: research-boundary
BinaryMatrix spine: This module composes supplied global-alignment contracts.
Ontology: canonical.path
Pivot role: dual
Zero typology: l-function
Contract boundary: contract-composition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Final alignment composition is contract composition only.

This theorem is intentionally not named `riemann_hypothesis`.
-/
structure CanonicalPathGlobalAlignmentContract where
  familiesIndex : Type
  transportInvariance : Type
  traceIdentity : IndexSpectralTraceIdentity
  spectralBoundaryCriterion : SpectralBoundaryCriterion
  allZerosOnCriticalLine : Prop
  allZerosOnCriticalLine_certified : allZerosOnCriticalLine
  sourceLabel : String

theorem canonical_path_global_alignment_if_supplied
    (C : CanonicalPathGlobalAlignmentContract) :
    C.allZerosOnCriticalLine :=
  C.allZerosOnCriticalLine_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=702a598efec846740f427e2e8fc3bbe2ab278ac3ef0af5b2c46e9127fbd48264 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/GlobalAlignmentComposition/Variant9811dd0cf459b2d7bcf9346107b6c51d2c5005331df52644074f372132ced4fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
