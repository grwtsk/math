import Folder.Basic

/-!
# Folder.CrystallineTensor.CategoricalTrace

Radiation role: research-boundary
BinaryMatrix spine: This module records categorical trace interfaces, not archive or BinaryMatrix trace algorithms.
Ontology: crystalline.categorical_trace
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure Endomorphism
    (alpha : Type _) where
  map : alpha → alpha
  label : String

def FixedBy
    {alpha : Type _}
    (f : Endomorphism alpha)
    (x : alpha) : Prop :=
  f.map x = x

structure CategoricalTrace
    (alpha : Type _) where
  End : Type _
  trace : End → Type _
  cyclic : Prop
  cyclic_certified : cyclic
  additivity? : Prop
  multiplicativity? : Prop

theorem categorical_trace_cyclic
    {alpha : Type _}
    (T : CategoricalTrace alpha) :
    T.cyclic :=
  T.cyclic_certified

end CrystallineTensor
end Folder
