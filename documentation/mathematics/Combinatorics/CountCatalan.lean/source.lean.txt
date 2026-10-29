import Folder.Catalan.Tree
import Mathlib.Combinatorics.Enumerative.Catalan.Basic

/-!
# Folder.Catalan.Count

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.count
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

abbrev catalan : Nat → Nat :=
  _root_.catalan

@[simp]
theorem catalan_zero :
    catalan 0 = 1 :=
  _root_.catalan_zero

theorem catalan_succ (n : Nat) :
    catalan (n + 1) =
      Finset.sum (Finset.range (n + 1))
        (fun i => catalan i * catalan (n - i)) :=
  by
    simpa [catalan, Finset.sum_range] using _root_.catalan_succ n

/--
The finite enumeration/cardinality theorem for Catalan trees is intentionally
left as a named target rather than asserted. The proved content in this module
is the recurrence that future enumeration proofs should match.
-/
def treesOfInternalCardinalityTarget : Prop :=
  ∃ treesOfInternal : Nat → Finset CTree,
    ∀ n,
      (∀ T : CTree, T ∈ treesOfInternal n ↔ T.internal = n) ∧
      (treesOfInternal n).card = catalan n

end Catalan
end Folder
