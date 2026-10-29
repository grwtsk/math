import Folder.Rebuild.NumberTheory.FiniteEulerProduct
import Mathlib.Algebra.Ring.GeomSum

/-!
# Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative

Finite algebraic shadows of Euler-factor inverse identities.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

/--
Finite algebraic shadow of the Euler-product inverse factor.

This is the finite identity `(1-x)(1+x+...+x^N)=1-x^(N+1)`.
It is the algebraic precursor to Euler products, not an analytic convergence theorem.
-/
theorem finite_geometric_euler_factor_mul
    [Ring R]
    (x : R)
    (N : Nat) :
    (1 - x) * (∑ k ∈ Finset.range (N + 1), x ^ k)
      = 1 - x ^ (N + 1) := by
  simpa using mul_neg_geom_sum x (N + 1)

theorem finite_euler_factor_inverse_truncation_identity
    [CommRing R]
    (x : R)
    (N : Nat) :
    (1 - x) * (∑ k ∈ Finset.range (N + 1), x ^ k)
      = 1 - x ^ (N + 1) := by
  exact finite_geometric_euler_factor_mul x N

end NumberTheory
end Rebuild
end Folder
