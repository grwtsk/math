import Lean
import Std
import Init.Data.Rat
import Init.GrindInstances.Ring.Rat

/-!
QUANTUM-CELL-1: exact real-amplitude four-label reference laws.
Grover (1996), quant-ph/9605043, supplies the reflection algorithm. The graph
carrier and rational source adapters are authored for this bounded profile.
No physical quantum execution, matrix exponential formalization, universal
machine, JSON refinement, source positivity, or RH consequence is asserted.
-/
namespace GRWTSK.Algebra.SemigroupsAndMonoids.Semigroups.TransformationSemigroups.LeftInverseComposition

-- Abstract ordering law: inverse replay reverses order; no commutation needed.
theorem inverse_composition {S : Type} (A B Ainv Binv : S → S)
    (ha : ∀ x, Ainv (A x) = x) (hb : ∀ x, Binv (B x) = x) (x : S) :
    Ainv (Binv (B (A x))) = x := by
  rw [hb, ha]

end GRWTSK.Algebra.SemigroupsAndMonoids.Semigroups.TransformationSemigroups.LeftInverseComposition
