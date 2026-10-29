import Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane
import Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion
import Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductFinite

Finite complex Euler products in the absolutely convergent half-plane.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def finiteZetaEulerFactorComplex
    (p : Nat)
    (s : Complex)
    (K : Nat) : Complex :=
  ∑ k ∈ Finset.range (K + 1), complexWeight s (p ^ k)

noncomputable def finiteZetaEulerProductComplex
    (S : Finset Nat)
    (s : Complex)
    (K : Nat) : Complex :=
  ∏ p ∈ S, finiteZetaEulerFactorComplex p s K

theorem finiteZetaEulerProductComplex_expands_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (s : Complex)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteZetaEulerProductComplex S s K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n := by
  change
    finiteEulerProductOf (fun n => complexWeight s n) S K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n
  exact
    finiteEulerProductOf_expands_boundedSmoothNumbers
      (fun n => complexWeight s n)
      (complexWeight_completely_multiplicative s)
      S K hSprime

noncomputable def zetaEulerApproxComplex
    (s : Complex)
    (N : Nat) : Complex :=
  finiteZetaEulerProductComplex (primesUpTo N) s N

theorem zetaEulerApproxComplex_expands_boundedSmoothNumbers
    (s : Complex)
    (N : Nat) :
    zetaEulerApproxComplex s N =
      ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N,
        complexWeight s n := by
  unfold zetaEulerApproxComplex
  exact
    finiteZetaEulerProductComplex_expands_boundedSmoothNumbers
      (primesUpTo N) N s
      (by intro p hp; exact primesUpTo_prime hp)

end AnalyticNumberTheory
end Rebuild
end Folder
