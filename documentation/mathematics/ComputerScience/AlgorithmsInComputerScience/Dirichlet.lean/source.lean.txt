import Boolean.Cube.WalshFourier.Analysis

namespace Boolean.Cube

namespace WalshFourier

/-- Product term across one coordinate edge. -/
def edgeDifferenceProduct {n : Nat}
    (f g : WalshFourier.Function n)
    (x : WalshFourier.Sample n)
    (i : Fin n) : Int :=
  (f (Hypercube.flip x i) - f x) *
    (g (Hypercube.flip x i) - g x)

/--
Ordered-edge Dirichlet numerator.

This sums over every vertex and every coordinate direction, so each undirected
hypercube edge appears twice.
-/
def orderedDirichletNumerator {n : Nat}
    (f g : WalshFourier.Function n) : Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).flatMap
      (fun x =>
        (List.finRange n).map
          (fun i => WalshFourier.edgeDifferenceProduct f g x i)))

/--
Unordered-edge Dirichlet numerator.

This uses the orientation from `false` to `true` in the flipped coordinate, so
each undirected hypercube edge appears once.
-/
def unorderedDirichletNumerator {n : Nat}
    (f g : WalshFourier.Function n) : Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).flatMap
      (fun x =>
        (List.finRange n).map
          (fun i =>
            if x i = false then
              WalshFourier.edgeDifferenceProduct f g x i
            else
              0)))

/-- Available finite Dirichlet-form normalization conventions. -/
inductive DirichletConvention where
  | orderedEdges
  | unorderedEdges
deriving Repr, DecidableEq

/-- Select the Dirichlet numerator associated to a convention. -/
def dirichletNumerator {n : Nat}
    (convention : DirichletConvention)
    (f g : WalshFourier.Function n) : Int :=
  match convention with
  | .orderedEdges => WalshFourier.orderedDirichletNumerator f g
  | .unorderedEdges => WalshFourier.unorderedDirichletNumerator f g

@[simp] theorem dirichletNumerator_orderedEdges {n : Nat}
    (f g : WalshFourier.Function n) :
    WalshFourier.dirichletNumerator .orderedEdges f g =
      WalshFourier.orderedDirichletNumerator f g := rfl

@[simp] theorem dirichletNumerator_unorderedEdges {n : Nat}
    (f g : WalshFourier.Function n) :
    WalshFourier.dirichletNumerator .unorderedEdges f g =
      WalshFourier.unorderedDirichletNumerator f g := rfl

/-- Ordered-edge energy is the ordered Dirichlet form on `f` against itself. -/
def orderedDirichletEnergyNumerator {n : Nat}
    (f : WalshFourier.Function n) : Int :=
  WalshFourier.orderedDirichletNumerator f f

/-- Unordered-edge energy is the unordered Dirichlet form on `f` against itself. -/
def unorderedDirichletEnergyNumerator {n : Nat}
    (f : WalshFourier.Function n) : Int :=
  WalshFourier.unorderedDirichletNumerator f f

@[simp] theorem orderedDirichletEnergy_eq_self {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.orderedDirichletEnergyNumerator f =
      WalshFourier.orderedDirichletNumerator f f := rfl

@[simp] theorem unorderedDirichletEnergy_eq_self {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.unorderedDirichletEnergyNumerator f =
      WalshFourier.unorderedDirichletNumerator f f := rfl

end WalshFourier

end Boolean.Cube
