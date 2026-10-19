import Mathematics.SemiLocalDefect.PrimeUniverse
import Mathematics.GraphAccess.GraphCut

/-!
# Finite prime-cut graph adapter

The Boolean prime cube is presented to the existing immutable `GraphCut`
contract through explicit bijections.  The adapter does not alter foundational
graph-access modes or authority.
-/

namespace Mathematics.SemiLocalDefect

open Mathematics.GraphAccess

universe uPrime

structure PrimeCutGraphAdapter
    (primeUniverse :
      FinitePrimeUniverse.{uPrime}) where
  graph : GraphCut.{uPrime, uPrime, 0}
  nodeEquiv :
    graph.Node ≃ Finset primeUniverse.Prime
  edgeEquiv :
    graph.Edge ≃ PrimeInsertionEdge primeUniverse
  source_coherent :
    ∀ edge,
      nodeEquiv (graph.source edge) =
        (edgeEquiv edge).source
  target_coherent :
    ∀ edge,
      nodeEquiv (graph.target edge) =
        (edgeEquiv edge).target
  nodeCount :
    Fintype.card graph.Node =
      2 ^ Fintype.card primeUniverse.Prime
  edgeCount :
    Fintype.card graph.Edge =
      Fintype.card primeUniverse.Prime *
        2 ^ (Fintype.card primeUniverse.Prime - 1)
  digestBindsUniverse : Prop
  digestBindsUniverseProof :
    digestBindsUniverse

theorem PrimeCutGraphAdapter.edge_strictly_enlarges
    {primeUniverse :
      FinitePrimeUniverse.{uPrime}}
    (adapter : PrimeCutGraphAdapter primeUniverse)
    (edge : adapter.graph.Edge) :
    adapter.nodeEquiv
        (adapter.graph.source edge) ⊂
      adapter.nodeEquiv
        (adapter.graph.target edge) := by
  rw [adapter.source_coherent,
    adapter.target_coherent]
  exact
    (adapter.edgeEquiv edge).source_ssubset_target

end Mathematics.SemiLocalDefect
