import Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights

/-!
# Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity

Multiplicativity of the positive-index real half-plane weight.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

theorem posWeightReal_of_pos
    (σ : Real)
    {n : Nat}
    (hn : 0 < n) :
    posWeightReal σ n = (n : Real) ^ (-σ) := by
  simp [posWeightReal, Nat.ne_of_gt hn]

theorem posWeightComplex_of_pos
    (σ : Real)
    {n : Nat}
    (hn : 0 < n) :
    (((posWeightReal σ n : Real) : Complex)) =
      (((n : Real) ^ (-σ) : Real) : Complex) := by
  rw [posWeightReal_of_pos σ hn]

theorem posWeightReal_mul
    (σ : Real)
    {m n : Nat}
    (hm : 0 < m)
    (hn : 0 < n) :
    posWeightReal σ (m * n) =
      posWeightReal σ m * posWeightReal σ n := by
  have hmn : 0 < m * n := Nat.mul_pos hm hn
  simp [posWeightReal, Nat.ne_of_gt hm, Nat.ne_of_gt hn, Nat.ne_of_gt hmn,
    Nat.cast_mul, Real.mul_rpow]

theorem posWeightComplex_mul
    (σ : Real)
    {m n : Nat}
    (hm : 0 < m)
    (hn : 0 < n) :
    (((posWeightReal σ (m * n) : Real) : Complex)) =
      (((posWeightReal σ m : Real) : Complex)) *
      (((posWeightReal σ n : Real) : Complex)) := by
  rw [posWeightReal_mul σ hm hn]
  norm_num

end AnalyticNumberTheory
end Rebuild
end Folder
