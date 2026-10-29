import Folder.CrystallineTensor.CategoricalTrace

/-!
# Folder.CrystallineTensor.HattoriStallingsTrace

Radiation role: research-boundary
BinaryMatrix spine: This module records Hattori-Stallings trace slots, not a BinaryMatrix trace theorem.
Ontology: crystalline.hattori_stallings_trace
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure HattoriStallingsTraceContract where
  RingLike : Type _
  ModuleLike : Type _
  EndomorphismLike : Type _
  traceValue : EndomorphismLike → Type _
  traceDefined : Prop
  traceDefined_certified : traceDefined
  MoritaInvariant? : Prop
  sourceLabel : String

theorem hattori_stallings_trace_defined
    (T : HattoriStallingsTraceContract) :
    T.traceDefined :=
  T.traceDefined_certified

end CrystallineTensor
end Folder
