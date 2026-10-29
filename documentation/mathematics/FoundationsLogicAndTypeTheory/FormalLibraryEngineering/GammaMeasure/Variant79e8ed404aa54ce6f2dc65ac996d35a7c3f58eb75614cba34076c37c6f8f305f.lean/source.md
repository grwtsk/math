# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GammaMeasure.Variant79e8ed404aa54ce6f2dc65ac996d35a7c3f58eb75614cba34076c37c6f8f305f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f8bc4a6ac869d1fabd3a67c50dcb53eada49709` · SHA-256 `79e8ed404aa54ce6f2dc65ac996d35a7c3f58eb75614cba34076c37c6f8f305f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.Gauge

/-!
Gamma measure mirror.

The browser runtime records Gamma-normalized volume/area constants. Full Gamma
normalization proofs require a real-analysis library such as Mathlib. In this
local mirror, the theorem targets are intentionally represented as proof
dependencies rather than completed proofs.
-/

def gammaMeasureProofDependency : String :=
  "Requires Mathlib real Gamma normalization theorem."

def gammaUnitBallVolumeTarget : String :=
  gammaUnitBallVolumeFormula

def gammaUnitSphereAreaTarget : String :=
  gammaUnitSphereAreaFormula

end Think.Kakeya.Gauge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac1b8c00e715d7692d86d78e210d917cad7e9d782b90ada145c6f16879aac069 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GammaMeasure/Variant79e8ed404aa54ce6f2dc65ac996d35a7c3f58eb75614cba34076c37c6f8f305f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
