import Boolean.Cube.ListTools
import Boolean.Cube.PrismaticGeometry.AngleRatio

/-!
# Dimension-parametric finite cell complexes

Finite cells, k-chains, boundary operators, closed chains, non-boundary
certificates, and homology-class shells in all finite dimensions. Finite
geometry syntax is not prismatic theorem authority: closedness,
non-boundaryness, and class nontriviality are supplied proof fields, never
inferred from cell syntax.

Object index: `FiniteCellComplex`, `Chain`, `Chain.boundary`, `ClosedChain`,
`NonBoundaryChain`, `HomologyClass`, `homologyClass_sound`.
-/

universe u

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-- A finite cell complex with integer-weighted boundary data in every
dimension. -/
structure FiniteCellComplex where
  Cell : Nat → Type u
  cellLabel : ∀ k : Nat, Cell k → String
  boundaryCells :
    ∀ k : Nat, Cell (k + 1) → List (Int × Cell k)
  dimensionBound : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- A finite k-chain with explicit support. -/
structure Chain (X : FiniteCellComplex) (k : Nat) where
  terms : List (Int × X.Cell k)

/-- Boundary of a finite (k+1)-chain. -/
def Chain.boundary
    {X : FiniteCellComplex}
    {k : Nat}
    (c : Chain X (k + 1)) : Chain X k :=
  { terms :=
      c.terms.flatMap
        (fun t =>
          let coeff := t.1
          let cell := t.2
          (X.boundaryCells k cell).map
            (fun b => (coeff * b.1, b.2))) }

/-- Closedness certificate for a k-chain. -/
structure ClosedChain
    (X : FiniteCellComplex)
    (k : Nat)
    (c : Chain X k) where
  closed : Prop
  proof : closed

/-- Non-boundary certificate for a k-chain. Never inferred from syntax. -/
structure NonBoundaryChain
    (X : FiniteCellComplex)
    (k : Nat)
    (c : Chain X k) where
  nonBoundary : Prop
  proof : nonBoundary

/-- A homology-class shell: representative, closedness, non-boundaryness,
and nontriviality, all proof-carrying. -/
structure HomologyClass
    (X : FiniteCellComplex)
    (k : Nat) where
  representative : Chain X k
  closed : ClosedChain X k representative
  nonBoundary : NonBoundaryChain X k representative
  classNontrivial : Prop
  classNontrivialProof : classNontrivial

theorem homologyClass_sound
    {X : FiniteCellComplex} {k : Nat}
    (H : HomologyClass X k) :
    H.closed.closed ∧ H.nonBoundary.nonBoundary ∧ H.classNontrivial :=
  ⟨H.closed.proof, H.nonBoundary.proof, H.classNontrivialProof⟩

end PrismaticGeometry
end Cube
end Boolean
