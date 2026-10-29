import Folder.Carrier.Grid

/-!
# Folder.Spectral.Graph

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.graph
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

structure CellGraph (s : GridShape) where
  Adj : Cell s → Cell s → Prop
  symm : Std.Symm Adj
  irrefl : Std.Irrefl Adj
  finite_neighbors : ∀ c, Fintype {d : Cell s // Adj c d}

namespace CellGraph

noncomputable def gridEdgeGraph (s : GridShape) : CellGraph s where
  Adj := Carrier.EdgeAdjacent
  symm := by
    exact ⟨fun _ _ => Carrier.edgeAdjacent_symm⟩
  irrefl := by
    exact ⟨fun a => Carrier.edgeAdjacent_irrefl a⟩
  finite_neighbors := by
    classical
    intro c
    infer_instance

end CellGraph

export CellGraph (gridEdgeGraph)

end Spectral
end Folder
