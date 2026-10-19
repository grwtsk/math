import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryCanonical

set_option autoImplicit false

namespace Think.Pipeline.Center.MemoryCentroid

structure MemoryCentroidState where
  coreTreeNode : Nat
  innerHeat : Int
  bridgeHeat : Int
  outerHeat : Int
  centroidDeclared : Bool
  normalizedLaplacianDeclared : Bool
deriving DecidableEq, Repr

def defaultMemoryCentroidState : MemoryCentroidState :=
  { coreTreeNode := 30
    innerHeat := 1
    bridgeHeat := 1
    outerHeat := 1
    centroidDeclared := true
    normalizedLaplacianDeclared := true }

def centroidReady (s : MemoryCentroidState) : Prop :=
  s.centroidDeclared = true ∧ s.normalizedLaplacianDeclared = true

theorem default_centroid_ready :
    centroidReady defaultMemoryCentroidState := by
  exact ⟨rfl, rfl⟩

end Think.Pipeline.Center.MemoryCentroid
