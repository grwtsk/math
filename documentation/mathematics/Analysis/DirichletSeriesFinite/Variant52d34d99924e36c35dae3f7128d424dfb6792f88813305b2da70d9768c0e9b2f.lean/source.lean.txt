import Folder.Rebuild.NumberTheory.DirichletConvolution
import Mathlib.Analysis.SpecialFunctions.Pow.Complex

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletSeriesFinite

Finite Dirichlet sums and linear finite identities.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def finiteDirichletSum
    (a : Nat → ℂ)
    (s : ℂ)
    (N : Nat) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N, a n / (n : ℂ) ^ s

theorem finiteDirichletSum_add
    (a b : Nat → ℂ)
    (s : ℂ)
    (N : Nat) :
    finiteDirichletSum (fun n => a n + b n) s N =
      finiteDirichletSum a s N + finiteDirichletSum b s N := by
  simp [finiteDirichletSum, add_div, Finset.sum_add_distrib]

theorem finiteDirichletSum_zero
    (s : ℂ)
    (N : Nat) :
    finiteDirichletSum (fun _ => 0) s N = 0 := by
  simp [finiteDirichletSum]

end AnalyticNumberTheory
end Rebuild
end Folder
