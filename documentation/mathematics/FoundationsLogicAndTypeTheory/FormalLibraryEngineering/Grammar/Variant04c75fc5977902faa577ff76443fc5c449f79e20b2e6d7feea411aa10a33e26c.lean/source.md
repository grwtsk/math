# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grammar.Variant04c75fc5977902faa577ff76443fc5c449f79e20b2e6d7feea411aa10a33e26c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07db78522814ceebbd0c83e0240ca872b5b0805e` · SHA-256 `04c75fc5977902faa577ff76443fc5c449f79e20b2e6d7feea411aa10a33e26c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CellularArithmetic.Grammar

/-!
# Folder.Theorem.CellularArithmetic.Grammar

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.cellular_arithmetic.grammar
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace CellularArithmetic

theorem cellularToArithmetic_arithmeticToCellular
    (t : Folder.CellularArithmetic.ArithmeticFactorTerm) :
    Folder.CellularArithmetic.cellularToArithmetic
        (Folder.CellularArithmetic.arithmeticToCellular t) = t :=
  Folder.CellularArithmetic.cellularToArithmetic_arithmeticToCellular t

theorem arithmeticToCellular_cellularToArithmetic
    (t : Folder.CellularArithmetic.CellularFactorTerm) :
    Folder.CellularArithmetic.arithmeticToCellular
        (Folder.CellularArithmetic.cellularToArithmetic t) = t :=
  Folder.CellularArithmetic.arithmeticToCellular_cellularToArithmetic t

theorem decode_arithmeticToCellular
    (t : Folder.CellularArithmetic.ArithmeticFactorTerm) :
    (Folder.CellularArithmetic.arithmeticToCellular t).decode = t.eval :=
  Folder.CellularArithmetic.decode_arithmeticToCellular t

end CellularArithmetic
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fb20b19cbe5ab620c51be26c6968bff406d8eecf9c413c49f1576111bcaf502 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant04c75fc5977902faa577ff76443fc5c449f79e20b2e6d7feea411aa10a33e26c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
