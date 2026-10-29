# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoContinuationComplex.Variant046d020bea3c302b2d69773f2acbedfe63d60c7704c2f57fc27d0fc4c95b355d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d280b195e8dda35cab2271b7ee488a1c2dbdb17` · SHA-256 `046d020bea3c302b2d69773f2acbedfe63d60c7704c2f57fc27d0fc4c95b355d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.AnalyticContinuationMap

/-!
# Folder.CanonicalPath.RodgersTaoContinuationComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records Rodgers-Tao continuation complexes.
Ontology: canonical.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure RodgersTaoContinuationComplex where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  complexAtTime : Type
  timeParameter : Type
  continuationMap :
    timeParameter → timeParameter → Option AnalyticContinuationMap
  compositionLaw? : Prop
  compositionLaw_certified : compositionLaw?
  identityLaw? : Prop
  identityLaw_certified : identityLaw?
  sourceLabel : String

theorem rodgers_tao_continuation_identity_if_supplied
    (C : RodgersTaoContinuationComplex) :
    C.identityLaw? :=
  C.identityLaw_certified

theorem rodgers_tao_continuation_composition_if_supplied
    (C : RodgersTaoContinuationComplex) :
    C.compositionLaw? :=
  C.compositionLaw_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbc6a96a1f1493ee695b7bea5b2088b753d57cc09b6ad4ed2029a32288ec04c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RodgersTaoContinuationComplex/Variant046d020bea3c302b2d69773f2acbedfe63d60c7704c2f57fc27d0fc4c95b355d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
