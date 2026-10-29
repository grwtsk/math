# Complete source: GRWTSK.Analysis.FunctionalAnalysis.FrobeniusEnergy.Varianta372ec991f4255818a4a7ddeba8ddc4b7a80a89ce1db5a7b14298859ada79b64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59f8b56c46a8b9e19267f66d77bdbb227dea8a03` · SHA-256 `a372ec991f4255818a4a7ddeba8ddc4b7a80a89ce1db5a7b14298859ada79b64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.FrobeniusTypology
import Folder.Spectral.Energy

/-!
# Folder.Harmonic.FrobeniusEnergy

Radiation role: harmonic-control
BinaryMatrix spine: This module names analytic Frobenius energy controls downstream of finite cellular carriers.
Ontology: harmonic.frobenius_energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/

namespace Folder
namespace Harmonic

abbrev AnalyticFrobeniusEnergy :=
  Core.AnalyticFrobeniusEnergy

theorem frobenius_energy_nonnegative
    (F : AnalyticFrobeniusEnergy)
    (x : F.carrier) :
    0 ≤ F.normSq x :=
  Core.analytic_frobenius_nonnegative F x

end Harmonic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2df03811520697ba633863e185263ed8d62b446c45a79764fa5f7a97a1e16d72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/FrobeniusEnergy/Varianta372ec991f4255818a4a7ddeba8ddc4b7a80a89ce1db5a7b14298859ada79b64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
