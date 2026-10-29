# Complete source: GRWTSK.Algebra.LinearAlgebra.Radiation.Variant32513228581f508396383ec54d3ed821e873895219bb9286ea0e84acc490ae45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cad8fd0503ef625e95787c2c2d651e4590a5a0f5` · SHA-256 `32513228581f508396383ec54d3ed821e873895219bb9286ea0e84acc490ae45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.BinaryMatrix
import Folder.Carrier.Grid

/-!
# Folder.BinaryMatrix.Radiation

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.radiation
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace BinaryMatrix

structure RadiationSpine where
  carrier : Type _
  description : String

def binaryMatrixSpine : RadiationSpine where
  carrier := Carrier.BinaryMatrix
  description :=
    "BinaryMatrix is the finite cellular carrier from which cube address spaces, shell filtrations, spectral heat fields, finite phase connections, and torsion compatibility modules radiate."

end BinaryMatrix
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39c079c0ba56265974fb55e8589ae5cbbf108f8826df26fa1e03291503ec0f14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Radiation/Variant32513228581f508396383ec54d3ed821e873895219bb9286ea0e84acc490ae45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
