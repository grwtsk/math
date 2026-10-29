# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LFunctionZero.Variant34e4d07e2c5fc5e0bed732e1e4fa1d935063e0414f18193eada3716b2c524d97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25b4078a9b80ec3d07285da241a4bd8302900088` · SHA-256 `34e4d07e2c5fc5e0bed732e1e4fa1d935063e0414f18193eada3716b2c524d97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.ZeroTypology
import Folder.Research.CriticalLine

/-!
# Folder.Research.LFunctionZero

Radiation role: research-boundary
BinaryMatrix spine: This module keeps L-function zeros typed separately from finite spectral and de Bruijn-Newman zero data.
Ontology: research.rh.lfunction_zero
Pivot role: spectral
Zero typology: l-function
Contract boundary: proved
Composite stack role: research
-/

namespace Folder
namespace Research
namespace LFunctionZero

structure LFunctionZeroData where
  zero : Core.TypedZero
  kind_lfunction : zero.kind = Core.ZeroKind.lFunctionZero
  realPart : ℝ
  imagPart : ℝ
  nontrivial : Prop

def LiesOnCriticalLine (z : LFunctionZeroData) : Prop :=
  Research.CriticalLine.IsCriticalLineRealPart z.realPart

def CenteredAtSpectralPivot (z : LFunctionZeroData) : Prop :=
  Research.CriticalLine.CenteredWithZeroVariance z.realPart

theorem criticalLine_of_centered
    (z : LFunctionZeroData)
    (h : CenteredAtSpectralPivot z) :
    LiesOnCriticalLine z :=
  Research.CriticalLine.criticalLine_of_centered_zero z.realPart h

theorem lFunctionZero_ne_spectralModeZero :
    Core.ZeroKind.lFunctionZero ≠ Core.ZeroKind.spectralModeZero := by
  decide

theorem lFunctionZero_ne_deBruijnNewmanZero :
    Core.ZeroKind.lFunctionZero ≠ Core.ZeroKind.deBruijnNewmanZero := by
  decide

end LFunctionZero
end Research
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13462bbeb5eb6742e957a6bf533b4df2ecae55524bc5757f02ce3f5b8087b96d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionZero/Variant34e4d07e2c5fc5e0bed732e1e4fa1d935063e0414f18193eada3716b2c524d97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
