# Representation Decode Encode Positive Nat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `636a2931fb6b3cc89e98d733a267bd58edd7d22e` · SHA-256 `acd4727cfb4b745527d78f9b369af8f22a3f973c98da54ffa8800e6ca8b5f75f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CellularArithmetic.CellularRepresentation

/-!
# Folder.Theorem.CellularArithmetic.Representation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.cellular_arithmetic.representation
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace CellularArithmetic

theorem decode_encode_positiveNat
    (n : Folder.NumberTheory.PositiveNat) :
    (Folder.CellularArithmetic.encodePositiveNat n).decode = n.val :=
  Folder.CellularArithmetic.decode_encode_positiveNat n

theorem factorMap_unique_of_same_number
    (A B : Folder.CellularArithmetic.CellularArithmeticRepresentation)
    (h : A.number.val = B.number.val) :
    A.factorMapRep.factorMap = B.factorMapRep.factorMap :=
  Folder.CellularArithmetic.factorMap_unique_of_same_number A B h

end CellularArithmetic
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e41fe1adfd72e18b196d3da16d5fbd380e191205828c7474723074558253530 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Representation/Variantacd4727cfb4b745527d78f9b369af8f22a3f973c98da54ffa8800e6ca8b5f75f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
