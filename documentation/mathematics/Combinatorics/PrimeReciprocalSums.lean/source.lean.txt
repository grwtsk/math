import Folder.Rebuild.AnalyticNumberTheory.HarmonicPartialSums
import Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion

/-!
# Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums

Finite partial sums of reciprocal primes.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def primeReciprocalPartial
    (N : Nat) : Real :=
  ∑ p ∈ primesUpTo N, (p : Real)⁻¹

theorem primeReciprocalPartial_nonneg
    (N : Nat) :
    0 ≤ primeReciprocalPartial N := by
  unfold primeReciprocalPartial
  exact
    Finset.sum_nonneg
      (fun p _hp => inv_nonneg.mpr (Nat.cast_nonneg p))

theorem primesUpTo_subset_of_le
    {M N : Nat}
    (hMN : M ≤ N) :
    primesUpTo M ⊆ primesUpTo N := by
  intro p hp
  rcases mem_primesUpTo_iff.mp hp with ⟨hprime, hpM⟩
  exact mem_primesUpTo_iff.mpr ⟨hprime, hpM.trans hMN⟩

theorem primeReciprocalPartial_mono :
    Monotone primeReciprocalPartial := by
  intro M N hMN
  unfold primeReciprocalPartial
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (primesUpTo_subset_of_le hMN)
      (fun p _hp _hnot => inv_nonneg.mpr (Nat.cast_nonneg p))

end AnalyticNumberTheory
end Rebuild
end Folder
