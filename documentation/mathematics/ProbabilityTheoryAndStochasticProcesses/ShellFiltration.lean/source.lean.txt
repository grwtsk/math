import Folder.Cellular.ShellFiltration
import Folder.Cellular.Adjacency

/-!
# Folder.Theorem.Cellular.ShellFiltration

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.shell_filtration
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Cellular
namespace ShellFiltration

theorem all_boundary_level_zero
    {d : Nat}
    (hd : 0 < d)
    (x : Folder.Cellular.CubeAddress d 0) :
    Folder.Cellular.IsBoundaryCell x :=
  Folder.Cellular.all_boundary_level_zero hd x

theorem cubeAdjacent_symm
    {d k : Nat}
    {x y : Folder.Cellular.CubeAddress d k} :
    Folder.Cellular.CubeAdjacent x y →
      Folder.Cellular.CubeAdjacent y x :=
  Folder.Cellular.cubeAdjacent_symm

theorem cubeAdjacent_irrefl
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k) :
    ¬ Folder.Cellular.CubeAdjacent x x :=
  Folder.Cellular.cubeAdjacent_irrefl x

end ShellFiltration
end Cellular
end Theorem
end Folder
