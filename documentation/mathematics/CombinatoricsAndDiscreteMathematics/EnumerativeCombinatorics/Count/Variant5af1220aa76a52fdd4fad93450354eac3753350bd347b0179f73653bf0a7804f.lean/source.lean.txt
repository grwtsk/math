import Folder.Catalan.Count

/-!
# Folder.Theorem.Catalan.Count

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.count
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

theorem catalan_count_zero :
    catalan 0 = 1 :=
  catalan_zero

theorem catalan_count_succ (n : Nat) :
    catalan (n + 1) =
      Finset.sum (Finset.range (n + 1))
        (fun i => catalan i * catalan (n - i)) :=
  catalan_succ n

end Catalan
end Folder
