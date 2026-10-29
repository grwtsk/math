# Integrable Connection — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97349e3cc697f80ff5a75cf244140ebceeed37b7` · SHA-256 `0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.Theorem.CrystallineTensor.IntegrableConnection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports integrable-connection contract exposure facts.
Ontology: proof.crystalline.integrable_connection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace IntegrableConnection

theorem connection_flat
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (nabla : Folder.CrystallineTensor.Connection F) :
    nabla.flat :=
  Folder.CrystallineTensor.connection_flat nabla

theorem connection_integrable
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (nabla : Folder.CrystallineTensor.Connection F) :
    nabla.integrable :=
  Folder.CrystallineTensor.connection_integrable nabla

theorem horizontal_section_is_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {X : C.Site.Obj}
    (s : Folder.CrystallineTensor.HorizontalSection nabla X) :
    nabla.horizontal X s.value :=
  Folder.CrystallineTensor.horizontal_section_is_horizontal s

end IntegrableConnection
end CrystallineTensor
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78349f4cdc3659ff6a75f38717660f0edbef9145f387a4709fa5d23b487572df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/IntegrableConnection/Variant0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
