# Analytic Pivot — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad1d549dd089f9a3674a1d9c306ee72f1e3a5174` · SHA-256 `91eaf4827cc80e3320265262ffc5043bf9cf6aa2e5c28a746ade3a84516fb870`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.DualPivot

/-!
# Folder.Harmonic.AnalyticPivot

Radiation role: harmonic-control
BinaryMatrix spine: This module centers analytic fields that may later be sampled by BinaryMatrix or phase carriers.
Ontology: harmonic.analytic_pivot
Pivot role: spectral
Zero typology: harmonic
Contract boundary: definition
Composite stack role: field
-/

namespace Folder
namespace Harmonic

noncomputable def analyticEquilibrium : ℝ := Core.spectralPivot

def CenteredAroundHalf (ε x : ℝ) : Prop :=
  |x - analyticEquilibrium| ≤ ε

end Harmonic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c65765b49616dfcf55b9547b7263779ef1a2b182a6198024d9fce66ee29ce78f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPivot/Variant91eaf4827cc80e3320265262ffc5043bf9cf6aa2e5c28a746ade3a84516fb870.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
