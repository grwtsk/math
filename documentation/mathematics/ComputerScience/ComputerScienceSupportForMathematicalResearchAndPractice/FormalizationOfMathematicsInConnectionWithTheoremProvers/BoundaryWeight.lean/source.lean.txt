import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryHeat

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

structure BoundaryWeightInput where
  vertex : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex
  heat : Int
  residueMagnitude : Nat
  temporalSpecificity : Nat
  centrality : Nat

def evenProjection (n : Nat) : Nat :=
  2 * ((n + 1) / 2)

def boundaryWeight (input : BoundaryWeightInput) : Nat :=
  evenProjection
    (input.vertex.weight + input.residueMagnitude +
      input.temporalSpecificity + input.centrality)

theorem boundaryWeight_even (input : BoundaryWeightInput) :
    boundaryWeight input % 2 = 0 := by
  unfold boundaryWeight evenProjection
  rw [Nat.mul_mod_right]

structure BoundaryModularShadow where
  form : Think.RadoProjectedModularHeatflow.MemoryCore.ModularMemoryForm
  side : Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide
  transformationLawDeclared : Bool

end Think.RadoProjectedModularHeatflow.BoundaryMemory
