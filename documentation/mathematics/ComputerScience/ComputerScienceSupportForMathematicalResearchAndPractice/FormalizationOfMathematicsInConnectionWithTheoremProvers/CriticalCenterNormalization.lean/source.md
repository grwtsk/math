# Critical Center Normalization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e4b558d40e04bc76f27f78386499af28e33f95b` · SHA-256 `21502e287da46ca508ce70359cb0eefde970b7ae649e57f174ef5bac622e20ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.CriticalCenterNormalization

/-!
# Folder.Theorem.DerivedSheaf.CriticalCenterNormalization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports critical-center normalization facts, not BinaryMatrix data.
Ontology: base.critical_center_normalization
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem normalization_sends_raw_to_spectral
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (N : Folder.DerivedSheaf.CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.normalization_sends_raw_to_spectral N

theorem normalization_matches_declared_center
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (N : Folder.DerivedSheaf.CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = L.normalizedCriticalCenter :=
  Folder.DerivedSheaf.normalization_matches_declared_center N

theorem affine_shift_sends_raw_to_spectral
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (A : Folder.DerivedSheaf.AffineCriticalShift L) :
    A.normalize L.rawCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.affine_shift_sends_raw_to_spectral A

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1771ef68c92dd237db7a18ab1d6ce266450c49220706ef07276eb838eb11c0f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalCenterNormalization/Variant21502e287da46ca508ce70359cb0eefde970b7ae649e57f174ef5bac622e20ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
