import SourceActualRieszCriticalCenter
import Mathlib.Analysis.Meromorphic.Order

/-!
The genuine centered zeta numerator has a nonremovable pole at each actual
nontrivial zero to the right of the critical line. Its local regularization
at zero does not remove that pole. The actual zero carrier and analytic
multiplicity are retained; no such zero is asserted to exist.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszZeroPole
open Complex Filter Zeta23
open scoped Topology
open SourceActualRieszCriticalCenter

private theorem actual_zero_ne_one (ρ : (zetaZeros zetaSeam).carrier) :
    (ρ : ℂ) ≠ 1 := by
  intro h
  have hs := ρ.2.2.2
  rw [h] at hs
  norm_num at hs

private theorem actual_zero_finite_order (ρ : (zetaZeros zetaSeam).carrier) :
    analyticOrderAt riemannZeta (ρ : ℂ) ≠ ⊤ := by
  intro h
  have hp := (zetaZeros zetaSeam).one_le_mult (ρ : ℂ) ρ.2
  change 1 ≤ (analyticOrderAt riemannZeta (ρ : ℂ)).toNat at hp
  simp [h] at hp

/-- The actual source multiplicity is positive and exactly the finite analytic order. -/
theorem actualRiesz_zero_order_and_multiplicity
    (ρ : (zetaZeros zetaSeam).carrier) :
    1 ≤ (zetaZeros zetaSeam).mult ρ ∧
      analyticOrderAt riemannZeta (ρ : ℂ) =
        ((zetaZeros zetaSeam).mult ρ : ℕ∞) := by
  refine ⟨(zetaZeros zetaSeam).one_le_mult (ρ : ℂ) ρ.2, ?_⟩
  exact (Nat.cast_analyticOrderNatAt (actual_zero_finite_order ρ)).symm

private theorem actual_zeta_logDeriv_order (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt (logDeriv riemannZeta) (ρ : ℂ) = -1 := by
  have ha := Zeta23.WeilEF.analyticAt_riemannZeta (actual_zero_ne_one ρ)
  have ho := ha.meromorphicOrderAt_eq
  rw [(actualRiesz_zero_order_and_multiplicity ρ).2] at ho
  simp only [ENat.map_natCast] at ho
  apply meromorphicOrderAt_logDeriv_eq_neg_one ha.meromorphicAt
  · rw [ho]
    have hm := (actualRiesz_zero_order_and_multiplicity ρ).1
    exact_mod_cast (show (zetaZeros zetaSeam).mult ρ ≠ 0 by omega)
  · rw [ho]
    simp

private theorem translated_neg_logDeriv_meromorphic
    (ρ : (zetaZeros zetaSeam).carrier) :
    MeromorphicAt (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z))
      ((ρ : ℂ) - 1 / 2) := by
  have ha := Zeta23.WeilEF.analyticAt_riemannZeta (actual_zero_ne_one ρ)
  have hm := ha.meromorphicAt.logDeriv.neg
  have ht := meromorphicAt_fun_comp_add_const_iff_meromorphicAt
    (f := fun z : ℂ => -logDeriv riemannZeta z)
    (x := (ρ : ℂ) - 1 / 2) (c := (1 / 2 : ℂ))
  have ht' := ht.mpr (by simpa only [sub_add_cancel] using hm)
  simpa only [add_comm (1 / 2 : ℂ)] using ht'

private theorem translated_neg_logDeriv_order
    (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z))
      ((ρ : ℂ) - 1 / 2) = -1 := by
  have ht := meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
    (f := fun z : ℂ => -logDeriv riemannZeta z)
    (x := (ρ : ℂ) - 1 / 2) (c := (1 / 2 : ℂ))
  have hn : meromorphicOrderAt (fun z : ℂ => -logDeriv riemannZeta z) (ρ : ℂ) = -1 := by
    rw [← meromorphicOrderAt_fun_neg, actual_zeta_logDeriv_order ρ]
  simpa only [add_comm (1 / 2 : ℂ), sub_add_cancel, hn] using ht

private theorem rational_subtraction_analytic
    (ρ : (zetaZeros zetaSeam).carrier) :
    AnalyticAt ℂ (fun z : ℂ => -(1 / (z - 1 / 2)))
      ((ρ : ℂ) - 1 / 2) := by
  have hn : (ρ : ℂ) - 1 / 2 - 1 / 2 ≠ 0 := by
    intro h
    apply actual_zero_ne_one ρ
    linear_combination h
  have hd : AnalyticAt ℂ (fun z : ℂ => z - 1 / 2) ((ρ : ℂ) - 1 / 2) := by fun_prop
  exact (analyticAt_const.div hd hn).neg

private theorem numerator_meromorphic (ρ : (zetaZeros zetaSeam).carrier) :
    MeromorphicAt actualRieszCriticalNumerator ((ρ : ℂ) - 1 / 2) := by
  simpa only [Pi.add_def, actualRieszCriticalNumerator, sub_eq_add_neg] using
    (translated_neg_logDeriv_meromorphic ρ).add
      (rational_subtraction_analytic ρ).meromorphicAt

/-- The rational pole payment cannot cancel the actual zero's logarithmic-derivative pole. -/
theorem actualRieszCriticalNumerator_order_at_actual_zero
    (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt actualRieszCriticalNumerator ((ρ : ℂ) - 1 / 2) = -1 := by
  have hreg := rational_subtraction_analytic ρ
  have hlt : meromorphicOrderAt (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z))
      ((ρ : ℂ) - 1 / 2) <
      meromorphicOrderAt (fun z : ℂ => -(1 / (z - 1 / 2)))
        ((ρ : ℂ) - 1 / 2) := by
    rw [translated_neg_logDeriv_order ρ]
    have hn : (-1 : WithTop ℤ) < 0 := WithTop.coe_lt_coe.mpr (by norm_num)
    exact lt_of_lt_of_le hn hreg.meromorphicOrderAt_nonneg
  have ho := meromorphicOrderAt_add_eq_left_of_lt hreg.meromorphicAt hlt
  have he : actualRieszCriticalNumerator =
      (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z)) +
        (fun z : ℂ => -(1 / (z - 1 / 2))) := by
    funext z
    simp only [actualRieszCriticalNumerator, Pi.add_apply, sub_eq_add_neg]
  rw [he, ho, translated_neg_logDeriv_order ρ]

/-- No holomorphic punctured-germ extension exists through an actual right-hand zero. -/
theorem actualRieszCriticalNumerator_no_extension_at_actual_right_zero
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    0 < ((ρ : ℂ) - 1 / 2).re ∧
      ¬ ∃ g : ℂ → ℂ, AnalyticAt ℂ g ((ρ : ℂ) - 1 / 2) ∧
        actualRieszCriticalNumerator =ᶠ[𝓝[≠] ((ρ : ℂ) - 1 / 2)] g := by
  constructor
  · norm_num only [Complex.sub_re, Complex.div_re, Complex.ofNat_re, Complex.ofNat_im]
    linarith
  · intro hg
    have hn := (numerator_meromorphic ρ).meromorphicOrderAt_nonneg_iff.mpr hg
    rw [actualRieszCriticalNumerator_order_at_actual_zero ρ] at hn
    exact (not_le_of_gt (show (-1 : WithTop ℤ) < 0 from
      WithTop.coe_lt_coe.mpr (by norm_num))) hn

private theorem actual_right_point_ne_zero
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    (ρ : ℂ) - 1 / 2 ≠ 0 := by
  have hp := (actualRieszCriticalNumerator_no_extension_at_actual_right_zero ρ hρ).1
  intro h
  rw [h] at hp
  norm_num at hp

private theorem centered_numerator_meromorphic
    (ρ : (zetaZeros zetaSeam).carrier) :
    MeromorphicAt (fun z : ℂ => actualRieszCriticalNumerator z -
      (actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z)
      ((ρ : ℂ) - 1 / 2) := by
  exact ((numerator_meromorphic ρ).sub (by fun_prop)).sub (by fun_prop)

private theorem centered_numerator_order
    (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt (fun z : ℂ => actualRieszCriticalNumerator z -
      (actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z)
      ((ρ : ℂ) - 1 / 2) = -1 := by
  have hr : AnalyticAt ℂ (fun z : ℂ =>
      -(actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z)
      ((ρ : ℂ) - 1 / 2) := by fun_prop
  have ht : meromorphicOrderAt actualRieszCriticalNumerator ((ρ : ℂ) - 1 / 2) <
      meromorphicOrderAt (fun z : ℂ =>
        -(actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z)
        ((ρ : ℂ) - 1 / 2) := by
    rw [actualRieszCriticalNumerator_order_at_actual_zero ρ]
    have hn : (-1 : WithTop ℤ) < 0 := WithTop.coe_lt_coe.mpr (by norm_num)
    exact lt_of_lt_of_le hn hr.meromorphicOrderAt_nonneg
  have ho := meromorphicOrderAt_add_eq_left_of_lt hr.meromorphicAt ht
  have he : (fun z : ℂ => actualRieszCriticalNumerator z -
      (actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z) =
      actualRieszCriticalNumerator + (fun z : ℂ =>
        -(actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z) := by
    funext z
    simp only [Pi.add_apply]
    ring
  rw [he, ho, actualRieszCriticalNumerator_order_at_actual_zero ρ]

private theorem regularization_eventually_eq
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    actualRieszCriticalRegularization =ᶠ[𝓝[≠] ((ρ : ℂ) - 1 / 2)]
      (fun z : ℂ => (actualRieszCriticalNumerator z -
        (actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z) / z ^ 2) := by
  have he : ∀ᶠ z in 𝓝 ((ρ : ℂ) - 1 / 2), z ≠ 0 :=
    continuous_id.continuousAt.eventually_ne (actual_right_point_ne_zero ρ hρ)
  exact (he.mono fun z hz => actualRieszCriticalRegularization_eq hz).filter_mono
    nhdsWithin_le_nhds

private theorem regularization_meromorphic
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    MeromorphicAt actualRieszCriticalRegularization ((ρ : ℂ) - 1 / 2) := by
  have hq := (centered_numerator_meromorphic ρ).div
    (show MeromorphicAt (fun z : ℂ => z ^ 2) ((ρ : ℂ) - 1 / 2) by fun_prop)
  exact hq.congr (regularization_eventually_eq ρ hρ).symm

/-- The local twice-centered extension at zero retains each actual right-hand zero pole. -/
theorem actualRieszCriticalRegularization_order_at_actual_right_zero
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    meromorphicOrderAt actualRieszCriticalRegularization ((ρ : ℂ) - 1 / 2) = -1 := by
  have hd : AnalyticAt ℂ (fun z : ℂ => z ^ 2) ((ρ : ℂ) - 1 / 2) := by fun_prop
  have hod : meromorphicOrderAt (fun z : ℂ => z ^ 2) ((ρ : ℂ) - 1 / 2) = 0 := by
    rw [hd.meromorphicOrderAt_eq, hd.analyticOrderAt_eq_zero.mpr
      (pow_ne_zero 2 (actual_right_point_ne_zero ρ hρ))]
    simp
  rw [meromorphicOrderAt_congr (regularization_eventually_eq ρ hρ)]
  rw [meromorphicOrderAt_fun_div (centered_numerator_meromorphic ρ) hd.meromorphicAt,
    centered_numerator_order ρ, hod, sub_zero]

/-- Local regularization gives no holomorphic punctured-germ continuation through such a zero. -/
theorem actualRieszCriticalRegularization_no_extension_at_actual_right_zero
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    ¬ ∃ g : ℂ → ℂ, AnalyticAt ℂ g ((ρ : ℂ) - 1 / 2) ∧
      actualRieszCriticalRegularization =ᶠ[𝓝[≠] ((ρ : ℂ) - 1 / 2)] g := by
  intro hg
  have hn := (regularization_meromorphic ρ hρ).meromorphicOrderAt_nonneg_iff.mpr hg
  rw [actualRieszCriticalRegularization_order_at_actual_right_zero ρ hρ] at hn
  exact (not_le_of_gt (show (-1 : WithTop ℤ) < 0 from
    WithTop.coe_lt_coe.mpr (by norm_num))) hn

end FormalResearch.RiemannHypothesis.SourceActualRieszZeroPole
