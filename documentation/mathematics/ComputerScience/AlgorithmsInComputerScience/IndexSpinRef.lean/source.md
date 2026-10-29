# Index Spin Ref — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf25c58d9ada565aba42bb6843da0deb290ce2d9` · SHA-256 `a0bab93155f82dadf46e3e0192fb3675e37b540a33eb83c9d09ccd25b89a9afa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.MatrixOrbit

/-!
# Folder.Archive.IndexSpinRef

Radiation role: archive-reference
BinaryMatrix spine: This module realizes symbolic `{index, spin}` references into BinaryMatrix archive atoms.
Ontology: archive.index_spin_ref
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

structure MatrixAtomDictionary where
  atoms : List Carrier.BinaryMatrix
  unique_atoms : Prop

namespace MatrixAtomDictionary

def get? (D : MatrixAtomDictionary) (i : Nat) :
    Option Carrier.BinaryMatrix :=
  D.atoms[i]?

end MatrixAtomDictionary

structure IndexSpinRef (A : MatrixAction) where
  index : Nat
  spin : A.Spin

def realizeIndexSpin?
    (A : MatrixAction)
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef A) :
    Option Carrier.BinaryMatrix :=
  match D.get? r.index with
  | some M => some (A.act r.spin M)
  | none => none

theorem realizeIndexSpin?_some
    {A : MatrixAction}
    {D : MatrixAtomDictionary}
    {r : IndexSpinRef A}
    {M : Carrier.BinaryMatrix}
    (h : D.get? r.index = some M) :
    realizeIndexSpin? A D r = some (A.act r.spin M) := by
  simp [realizeIndexSpin?, h]

theorem realize_copy_id
    (D : MatrixAtomDictionary)
    (i : Nat)
    (M : Carrier.BinaryMatrix)
    (h : D.get? i = some M) :
    realizeIndexSpin? copyAction D
      { index := i, spin := () } = some M := by
  simpa [copyAction] using (realizeIndexSpin?_some
    (A := copyAction)
    (D := D)
    (r := { index := i, spin := () })
    h)

end Archive
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1e77cc84c846249b6fe8246252b54d22af9479a876977a9e6641e93206ac9ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndexSpinRef/Varianta0bab93155f82dadf46e3e0192fb3675e37b540a33eb83c9d09ccd25b89a9afa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
