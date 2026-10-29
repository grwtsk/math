# Crystalline Dirac Crystalline Dirac Operator — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd1d33fb94d2eaf24259596f7e35e9cf192a7e0d` · SHA-256 `3b64d6b9b71cf76b95b5a60002d38aba0b6db6c162ac97dee97c1dff79714982`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.Crystal
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineIndex.CrystallineDirac

Radiation role: research-boundary
BinaryMatrix spine: This module records a crystalline Dirac-type contract, not a BinaryMatrix operator.
Ontology: crystalline_index.dirac
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Contract-level crystalline Dirac-type operator.

The record says what a future index theorem would need. It does not construct
`D_crys` or prove ellipticity/Fredholmness from analytic hypotheses.
-/
structure CrystallineDiracOperator
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    (nabla : CrystallineTensor.Connection F) where
  Domain : Type _
  Codomain : Type _
  operator : Domain → Codomain
  usesConnection : Prop
  usesConnection_certified : usesConnection
  ellipticAnalogue : Prop
  ellipticAnalogue_certified : ellipticAnalogue
  fredholmAnalogue : Prop
  fredholmAnalogue_certified : fredholmAnalogue
  sourceLabel : String

theorem crystalline_dirac_uses_connection
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) :
    D.usesConnection :=
  D.usesConnection_certified

theorem crystalline_dirac_fredholm_analogue
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) :
    D.fredholmAnalogue :=
  D.fredholmAnalogue_certified

end CrystallineIndex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ab42d12b1ee10916dae4a9a98fdf9958abb65accb399f747476c87cd655f9e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrystallineDirac/Variant3b64d6b9b71cf76b95b5a60002d38aba0b6db6c162ac97dee97c1dff79714982.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
