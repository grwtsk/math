# Off Critical Displacement — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `886fb30798042cd80fd8abda81e06683159f950a` · SHA-256 `3557d5d165cdbfdcd953323450a86bf75780e06c6266ebdedfec07555e3e7caf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.TranscendentalTrace

/-!
# Folder.CanonicalPath.OffCriticalDisplacement

Radiation role: research-boundary
BinaryMatrix spine: This module records off-critical displacement contracts.
Ontology: off_critical_displacement
Pivot role: fixed-point
Zero typology: trace-obstruction
Contract boundary: decisive-theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- Abstract critical line marker. -/
structure CriticalLine where
  label : String

/-- Abstract spectral point. -/
structure SpectralPoint where
  label : String

/-- A spectral point is off the critical line. -/
structure OffCritical (L : CriticalLine) (z : SpectralPoint) : Prop where
  witness : True

/-- A displacement of a spectral point. -/
structure SpectralDisplacement where
  source : SpectralPoint
  target : SpectralPoint
  label : String

/--
Contract-level obstruction: an off-critical displacement changes the trace.

This is the decisive theorem target.
-/
structure OffCriticalDisplacementObstruction
    (L : CriticalLine)
    (T : TranscendentalTraceContract) where
  changesTrace :
    ∀ z : SpectralPoint,
      OffCritical L z →
      Prop
  changesTrace_certified :
    ∀ z : SpectralPoint,
      (hz : OffCritical L z) →
      changesTrace z hz
  sourceLabel : String

/-- Field exposure only. -/
theorem offcritical_displacement_changes_trace_if_supplied
    {L : CriticalLine}
    {T : TranscendentalTraceContract}
    (O : OffCriticalDisplacementObstruction L T)
    (z : SpectralPoint)
    (hz : OffCritical L z) :
    O.changesTrace z hz :=
  O.changesTrace_certified z hz

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afabfbf8cddc5e76806abaf5cae298170ac1a3cd8784b241b0553f7e3603ddb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OffCriticalDisplacement/Variant3557d5d165cdbfdcd953323450a86bf75780e06c6266ebdedfec07555e3e7caf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
