/-
Copyright (c) 2026 grwtsk contributors. MIT.
Historical structural source authenticated at
f047ec7814a03bf2b6175fc3b96a465ff2b86804,
DyadicDiscrepancy blob faaef84a44f9c5e052bb76050453c2c2ce89317d.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenMinimalParseval
import Mathlib.MeasureTheory.Function.LpSeminorm.Basic
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def thinHistoricalStep (r t : ℝ) : ℝ := if r ≤ t then 1 else 0

def thinHistoricalAtomicCumulative (X : ℕ) (t : ℝ) : ℝ :=
  ∑ n ∈ centeredGreenWindow X,
    centeredGreenArithmeticCoefficient n *
      thinHistoricalStep (centeredGreenLocation X n) t

theorem cumulative_eq_atomic_sub_log
    (X : ℕ) (t : ℝ) :
    cumulative X t =
      thinHistoricalAtomicCumulative X t - Real.log (1 + t) := by
  rfl

theorem thinHistoricalStep_measurable (r : ℝ) :
    Measurable (thinHistoricalStep r) := by
  unfold thinHistoricalStep
  exact measurable_const.ite measurableSet_Ici measurable_const

theorem thinHistoricalAtomicCumulative_measurable (X : ℕ) :
    Measurable (thinHistoricalAtomicCumulative X) := by
  unfold thinHistoricalAtomicCumulative
  fun_prop

theorem thinHistoricalAtomicCumulative_bounded
    (X : ℕ) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ t : ℝ,
      |thinHistoricalAtomicCumulative X t| ≤ C := by
  let C : ℝ :=
    ∑ n ∈ centeredGreenWindow X,
      |centeredGreenArithmeticCoefficient n|
  refine ⟨C, Finset.sum_nonneg (fun _ _ => abs_nonneg _), ?_⟩
  intro t
  calc
    |thinHistoricalAtomicCumulative X t| ≤
      ∑ n ∈ centeredGreenWindow X,
        |centeredGreenArithmeticCoefficient n *
          thinHistoricalStep (centeredGreenLocation X n) t| := by
      unfold thinHistoricalAtomicCumulative
      exact abs_sum_le_sum_abs _ _
    _ ≤ C := by
      apply Finset.sum_le_sum
      intro n hn
      unfold thinHistoricalStep
      split_ifs <;> simp

theorem thinHistoricalGreenResidual_aestronglyMeasurable
    (X : ℕ) :
    AEStronglyMeasurable (thinHistoricalGreenResidual X)
      (volume.restrict (Ioc (0 : ℝ) 1)) := by
  apply Measurable.aestronglyMeasurable
  unfold thinHistoricalGreenResidual
  have hatom := thinHistoricalAtomicCumulative_measurable X
  have hlog : Measurable (fun t : ℝ => Real.log (1 + t)) := by fun_prop
  have hcumulative : Measurable (cumulative X) := by
    simpa only [cumulative_eq_atomic_sub_log] using hatom.sub hlog
  exact (hcumulative.sub measurable_const).ofReal

/-- Minimal L2 structural fact for the restored historical centered residual. -/
theorem thinHistoricalGreenResidual_memLp
    (X : ℕ) :
    MemLp (thinHistoricalGreenResidual X) 2
      (volume.restrict (Ioc (0 : ℝ) 1)) := by
  have hmeas := thinHistoricalGreenResidual_aestronglyMeasurable X
  rw [memLp_two_iff_integrable_sq_norm hmeas]
  have hfinite :
      IntegrableOn
        (fun t : ℝ => ‖thinHistoricalGreenResidual X t‖^2)
        (Ioc (0 : ℝ) 1) := by
    have hlog :
        IntegrableOn (fun t : ℝ => (Real.log (1 + t))^2) (Ioc (0 : ℝ) 1) := by
      have hcont : ContinuousOn (fun t : ℝ => (Real.log (1 + t))^2)
          (Icc (0 : ℝ) 1) := by
        fun_prop
      exact (hcont.integrableOn_Icc).mono_set Ioc_subset_Icc_self
    obtain ⟨C, hC, hbound⟩ := thinHistoricalAtomicCumulative_bounded X
    have hatom :
        IntegrableOn (fun t : ℝ =>
          (thinHistoricalAtomicCumulative X t)^2) (Ioc (0 : ℝ) 1) := by
      apply IntegrableOn.mono'
        (integrableOn_const (c := C^2))
      · exact (thinHistoricalAtomicCumulative_measurable X).pow 2
      · filter_upwards with t
        have hb := hbound t
        nlinarith [sq_nonneg (thinHistoricalAtomicCumulative X t)]
    have hconst :
        IntegrableOn (fun _t : ℝ => (center X)^2) (Ioc (0 : ℝ) 1) :=
      integrableOn_const
    have hmajor :
        ∀ t : ℝ,
          ‖thinHistoricalGreenResidual X t‖^2 ≤
            3 * ((thinHistoricalAtomicCumulative X t)^2 +
              (Real.log (1 + t))^2 + (center X)^2) := by
      intro t
      unfold thinHistoricalGreenResidual
      rw [cumulative_eq_atomic_sub_log]
      simp only [Complex.norm_real, Real.norm_eq_abs, sq_abs]
      nlinarith [sq_nonneg
        (thinHistoricalAtomicCumulative X t - Real.log (1+t)),
        sq_nonneg
        (thinHistoricalAtomicCumulative X t - center X),
        sq_nonneg (Real.log (1+t) + center X)]
    exact Integrable.mono'
      (((hatom.add hlog).add hconst).const_mul 3)
      hmeas.norm.pow 2
      (Filter.Eventually.of_forall hmajor)
  exact hfinite

end GRWTSK.RiemannHypothesis
