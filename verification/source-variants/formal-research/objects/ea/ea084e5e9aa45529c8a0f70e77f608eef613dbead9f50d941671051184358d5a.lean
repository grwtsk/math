import Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights
import Mathlib.Topology.Algebra.InfiniteSum.Ring

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletSeries

Dirichlet-series terms with real half-plane exponent.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

noncomputable def dirichletTermRealCoeff
    (a : ArithFn Real)
    (σ : Real)
    (n : Nat) : Real :=
  if n = 0 then 0 else a n * posWeightReal σ n

noncomputable def dirichletTermComplexCoeff
    (a : ArithFn ℂ)
    (σ : Real)
    (n : Nat) : ℂ :=
  if n = 0 then 0 else a n * ((posWeightReal σ n : Real) : ℂ)

def DirichletAbsSummableReal
    (a : ArithFn Real)
    (σ : Real) : Prop :=
  Summable fun n : Nat => |dirichletTermRealCoeff a σ n|

def DirichletAbsSummableComplex
    (a : ArithFn ℂ)
    (σ : Real) : Prop :=
  Summable fun n : Nat => ‖dirichletTermComplexCoeff a σ n‖

noncomputable def dirichletSeriesReal
    (a : ArithFn Real)
    (σ : Real) : Real :=
  ∑' n : Nat, dirichletTermRealCoeff a σ n

noncomputable def dirichletSeriesComplex
    (a : ArithFn ℂ)
    (σ : Real) : ℂ :=
  ∑' n : Nat, dirichletTermComplexCoeff a σ n

theorem dirichletTermRealCoeff_zero
    (a : ArithFn Real)
    (σ : Real) :
    dirichletTermRealCoeff a σ 0 = 0 := by
  simp [dirichletTermRealCoeff]

theorem dirichletTermComplexCoeff_zero
    (a : ArithFn ℂ)
    (σ : Real) :
    dirichletTermComplexCoeff a σ 0 = 0 := by
  simp [dirichletTermComplexCoeff]

theorem dirichletSeriesComplex_absSummable_of_bounded_coeff
    (a : ArithFn ℂ)
    {σ C : Real}
    (hσ : 1 < σ)
    (_hC : 0 ≤ C)
    (hbound : ∀ n : Nat, ‖a n‖ ≤ C) :
    DirichletAbsSummableComplex a σ := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal σ n :=
    (summable_posWeightReal_of_one_lt hσ).mul_left C
  refine Summable.of_nonneg_of_le (fun n => norm_nonneg _) ?_ hmajor
  intro n
  by_cases hn : n = 0
  · simp [dirichletTermComplexCoeff, posWeightReal, hn]
  · have hw_nonneg : 0 ≤ posWeightReal σ n :=
      posWeightReal_nonneg σ n
    have hnormw :
        ‖((posWeightReal σ n : Real) : ℂ)‖ = posWeightReal σ n := by
      exact Complex.norm_of_nonneg hw_nonneg
    calc
      ‖dirichletTermComplexCoeff a σ n‖
          = ‖a n‖ * posWeightReal σ n := by
              rw [dirichletTermComplexCoeff, if_neg hn, Complex.norm_mul, hnormw]
      _ ≤ C * posWeightReal σ n :=
              mul_le_mul_of_nonneg_right (hbound n) hw_nonneg

theorem dirichletSeriesComplex_add
    (a b : ArithFn ℂ)
    (σ : Real)
    (ha : DirichletAbsSummableComplex a σ)
    (hb : DirichletAbsSummableComplex b σ) :
    dirichletSeriesComplex (fun n => a n + b n) σ =
      dirichletSeriesComplex a σ + dirichletSeriesComplex b σ := by
  have ha' : Summable fun n => dirichletTermComplexCoeff a σ n :=
    Summable.of_norm ha
  have hb' : Summable fun n => dirichletTermComplexCoeff b σ n :=
    Summable.of_norm hb
  have hterm :
      (fun n => dirichletTermComplexCoeff (fun n => a n + b n) σ n) =
        fun n =>
          dirichletTermComplexCoeff a σ n +
            dirichletTermComplexCoeff b σ n := by
    funext n
    by_cases hn : n = 0
    · simp [dirichletTermComplexCoeff, hn]
    · simp [dirichletTermComplexCoeff, hn, add_mul]
  calc
    dirichletSeriesComplex (fun n => a n + b n) σ
        = ∑' n : Nat,
            (dirichletTermComplexCoeff a σ n +
              dirichletTermComplexCoeff b σ n) := by
            simp [dirichletSeriesComplex, hterm]
    _ = dirichletSeriesComplex a σ + dirichletSeriesComplex b σ := by
            simpa [dirichletSeriesComplex] using ha'.tsum_add hb'

theorem dirichletSeriesComplex_smul
    (c : ℂ)
    (a : ArithFn ℂ)
    (σ : Real)
    (ha : DirichletAbsSummableComplex a σ) :
    dirichletSeriesComplex (fun n => c * a n) σ =
      c * dirichletSeriesComplex a σ := by
  have ha' : Summable fun n => dirichletTermComplexCoeff a σ n :=
    Summable.of_norm ha
  have hterm :
      (fun n => dirichletTermComplexCoeff (fun n => c * a n) σ n) =
        fun n => c * dirichletTermComplexCoeff a σ n := by
    funext n
    by_cases hn : n = 0
    · simp [dirichletTermComplexCoeff, hn]
    · simp [dirichletTermComplexCoeff, hn, mul_assoc]
  calc
    dirichletSeriesComplex (fun n => c * a n) σ
        = ∑' n : Nat, c * dirichletTermComplexCoeff a σ n := by
            simp [dirichletSeriesComplex, hterm]
    _ = c * dirichletSeriesComplex a σ := by
            simpa [dirichletSeriesComplex] using ha'.tsum_mul_left c

end AnalyticNumberTheory
end Rebuild
end Folder
