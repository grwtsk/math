import Folder.Stack.Descent

/-!
# Folder.Theorem.Stack.Descent

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes descent-interface facts for stack data.
Ontology: proof.stack.descent
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Stack

theorem stack_gluing_witness_glued
    (W : Folder.Stack.StackGluingWitness) :
    W.glued :=
  Folder.Stack.stack_gluing_witness_glued W

theorem composite_stack_descent_glues
    (W : Folder.Stack.CompositeStackDescentWitness)
    (h : W.compatibleLocalData) :
    W.GlobalSection :=
  Folder.Stack.composite_stack_descent_glues W h

end Stack
end Theorem
end Folder
