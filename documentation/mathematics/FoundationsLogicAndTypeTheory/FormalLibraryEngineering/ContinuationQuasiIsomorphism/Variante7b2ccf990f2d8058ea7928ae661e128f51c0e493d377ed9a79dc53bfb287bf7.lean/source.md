# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationQuasiIsomorphism.Variante7b2ccf990f2d8058ea7928ae661e128f51c0e493d377ed9a79dc53bfb287bf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45ae2dbd6133afdc15a801a605c8995fe4a74cb8` · SHA-256 `e7b2ccf990f2d8058ea7928ae661e128f51c0e493d377ed9a79dc53bfb287bf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.AnalyticContinuationMap
import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.CanonicalPath.ContinuationQuasiIsomorphism

Radiation role: research-boundary
BinaryMatrix spine: This module records continuation quasi-isomorphism targets.
Ontology: canonical.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure ContinuationQuasiIsomorphism
    (C : AnalyticContinuationMap) where
  quasiIso :
    DerivedSheaf.QuasiIsomorphism C.sourceComplex C.targetComplex
  continuationInducesCohomologyIso :
    quasiIso.inducesCohomologyIso
  sourceLabel : String

theorem continuation_quasi_iso_induces_cohomology_iso
    {C : AnalyticContinuationMap}
    (Q : ContinuationQuasiIsomorphism C) :
    Q.quasiIso.inducesCohomologyIso :=
  Q.continuationInducesCohomologyIso

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dabea61254ca6af1c86767ad12b05db70d13efb0e8f61313f2019f413c87b4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContinuationQuasiIsomorphism/Variante7b2ccf990f2d8058ea7928ae661e128f51c0e493d377ed9a79dc53bfb287bf7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
