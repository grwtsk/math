import Folder.Linear.Matrix

/-!
# Folder.Linear.DeterminantWitness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.determinant_witness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

structure DeterminantWitness
    {n : Nat}
    {α : Type _}
    [CommRing α]
    (A : Matrix n n α) where
  detValue : α
  certified : detValue = _root_.Matrix.det A

theorem determinant_witness_correct
    {n : Nat}
    {α : Type _}
    [CommRing α]
    {A : Matrix n n α}
    (W : DeterminantWitness A) :
    W.detValue = _root_.Matrix.det A :=
  W.certified

end Linear
end Folder
