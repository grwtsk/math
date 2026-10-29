-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualXiWeightedIntegerPrefix.Variant12d95810e70178fa4a1acff3095dbd4c328d68b5913ab1994e6b3fa40019252c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12d95810e70178fa4a1acff3095dbd4c328d68b5913ab1994e6b3fa40019252c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualXiWeightedIntegerPrefix.Variant12d95810e70178fa4a1acff3095dbd4c328d68b5913ab1994e6b3fa40019252c","mathematical_subject":"Analysis.Integration","original_sha256":"12d95810e70178fa4a1acff3095dbd4c328d68b5913ab1994e6b3fa40019252c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/actual-xi-weighted-integer/native01/SourceActualXiWeightedIntegerMean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiLogStepDiscretization

/-!
Actual integer readouts have exact logarithmic cell weights. The last real
fractional cell is retained in both the first mean and the genuine weighted
Cauchy-Schwarz budget. All signed reciprocal rows, closed seven and gamma
remain before any estimate; no infinite arithmetic mean witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualXiWeightedIntegerPrefix.Variant12d95810e70178fa4a1acff3095dbd4c328d68b5913ab1994e6b3fa40019252c

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiWeightedIntegerMean
open MeasureTheory Set
open scoped Interval
open RootActualXiTailPrimitive SourceActualXiLogStepDiscretization
open SourceActualXiReciprocalJointAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering
noncomputable section

/-- Literal weighted complete integer cells, before the real final fraction. -/
def actualXiWeightedIntegerPrefix (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 7 (N - 1), |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| *
    Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))

/-- The full signed actual reciprocal Abel inventory and both prescribed continuous heads. -/
def actualXiIntegerCriticalReadout (N : ℕ) : ℝ :=
  2 * ((∑ d ∈ Finset.Icc 1 (N - 1), alpha d *
    (actualReciprocalXiQuotientWeight (N : ℝ) d -
      actualReciprocalXiQuotientWeight (N : ℝ) (d + 1))) -
      ∑ d ∈ Finset.Icc 1 6, alpha d *
        (actualReciprocalXiQuotientWeight 7 d - actualReciprocalXiQuotientWeight 7 (d + 1))) -
    2 * ((N : ℝ) + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
      Real.sqrt (N : ℝ) +
    2 * (7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7

/-- Actual logarithmic cell length, including the final fractional cell at every real time. -/
def actualXiTerminalCellLogWeight (T : ℝ) (n : ℕ) : ℝ :=
  if n = Nat.floor (Real.exp T) then T - Real.log (n : ℝ)
  else Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))

/-- The literal actual real second-moment inventory, including the final fractional cell. -/
def actualXiIntegerSquareWindow (T : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)),
    |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| ^ 2 *
      actualXiTerminalCellLogWeight T n

private theorem icc_pred_eq_ico (N : ℕ) : Finset.Icc 7 (N - 1) = Finset.Ico 7 N := by
  ext n
  simp only [Finset.mem_Icc, Finset.mem_Ico]
  omega

private theorem log_ratio {n : ℕ} (hn : 7 ≤ n) :
    Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ)) =
      Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ) := by
  have hp : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  rw [Real.log_div (by positivity) hp.ne']

private theorem step_interval {a b : ℝ} (ha : Real.log 7 ≤ a) (hab : a ≤ b) :
    IntervalIntegrable (fun t => |actualIntegerXiTailLogStep t|) volume a b := by
  apply (actualIntegerXiTailLogStep_intervalIntegrable (ha.trans hab)).abs.mono_set
  rw [uIcc_of_le hab, uIcc_of_le (ha.trans hab)]
  exact Icc_subset_Icc ha le_rfl

/-- The true step is constant only inside the open logarithmic cell. -/
theorem actualXiLogStep_on_open_integer_cell {n : ℕ} (hn : 7 ≤ n) {t : ℝ}
    (ht : t ∈ Ioo (Real.log (n : ℝ)) (Real.log ((n + 1 : ℕ) : ℝ))) :
    actualIntegerXiTailLogStep t = actualAnchoredXiTailPrimitive (Real.log (n : ℝ)) := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hn1p : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  have hl : (n : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log hnp] using Real.exp_le_exp.mpr ht.1.le
  have hu : Real.exp t < ((n + 1 : ℕ) : ℝ) := by
    simpa only [Real.exp_log hn1p] using Real.exp_lt_exp.mpr ht.2
  have hf : Nat.floor (Real.exp t) = n :=
    (Nat.floor_eq_iff (Real.exp_pos t).le).2 ⟨hl, by exact_mod_cast hu⟩
  simp only [actualIntegerXiTailLogStep, hf]

/-- The complete or fractional cell integral retains its true real upper endpoint. -/
theorem actualXiLogStep_cell_integral {n : ℕ} (hn : 7 ≤ n) {b : ℝ}
    (hl : Real.log (n : ℝ) ≤ b) (hu : b ≤ Real.log ((n + 1 : ℕ) : ℝ)) :
    (∫ t in Real.log (n : ℝ)..b, |actualIntegerXiTailLogStep t|) =
      |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| *
        (b - Real.log (n : ℝ)) := by
  have he : (∫ t in Real.log (n : ℝ)..b, |actualIntegerXiTailLogStep t|) =
      ∫ _t in Real.log (n : ℝ)..b,
        |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| := by
    apply intervalIntegral.integral_congr_Ioo_of_le hl
    intro t ht
    rw [actualXiLogStep_on_open_integer_cell hn ⟨ht.1, ht.2.trans_le hu⟩]
  rw [he, intervalIntegral.integral_const, smul_eq_mul]
  ring

/-- Exact completed cells give the true weighted integer prefix. -/
theorem actualXiLogStep_integral_at_integer {N : ℕ} (hN : 7 ≤ N) :
    (∫ t in Real.log 7..Real.log (N : ℝ), |actualIntegerXiTailLogStep t|) =
      actualXiWeightedIntegerPrefix N := by
  have hh := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (f := fun t => |actualIntegerXiTailLogStep t|) (a := fun n : ℕ => Real.log (n : ℝ))
      hN (fun n hn => by
        have hn7 : 7 ≤ n := (Finset.mem_Ico.mp hn).1
        have hnp : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
        apply step_interval
        · apply Real.log_le_log (by norm_num)
          exact_mod_cast hn7
        · apply Real.log_le_log hnp
          exact_mod_cast (show n ≤ n + 1 by omega))
  rw [← hh]
  unfold actualXiWeightedIntegerPrefix
  rw [icc_pred_eq_ico]
  apply Finset.sum_congr rfl
  intro n hn
  have hn7 : 7 ≤ n := (Finset.mem_Ico.mp hn).1
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  rw [actualXiLogStep_cell_integral hn7
    (Real.log_le_log hnp (by exact_mod_cast (show n ≤ n + 1 by omega))) le_rfl,
      log_ratio hn7]

private theorem terminal_floor_orders {T : ℝ} (hT : Real.log 7 ≤ T) :
    7 ≤ Nat.floor (Real.exp T) ∧
      Real.log (Nat.floor (Real.exp T) : ℝ) ≤ T ∧
        T ≤ Real.log ((Nat.floor (Real.exp T) + 1 : ℕ) : ℝ) := by
  have hn := (actualXiLogStep_floor_guards hT).1
  have hnp : 0 < (Nat.floor (Real.exp T) : ℝ) := by
    exact_mod_cast (show 0 < Nat.floor (Real.exp T) by omega)
  refine ⟨hn, ?_, ?_⟩
  · have hh := Real.log_le_log hnp (Nat.floor_le (Real.exp_pos T).le)
    simpa only [Real.log_exp] using hh
  · have hle : Real.exp T ≤ ((Nat.floor (Real.exp T) + 1 : ℕ) : ℝ) := by
      simpa only [Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one (Real.exp T)).le
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos T) hle

/-- Every real terminal time retains its final fractional cell explicitly. -/
theorem actualXiLogStep_integral_eq_prefix_fraction {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, |actualIntegerXiTailLogStep t|) =
      actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T)) +
        |actualAnchoredXiTailPrimitive (Real.log (Nat.floor (Real.exp T) : ℝ))| *
          (T - Real.log (Nat.floor (Real.exp T) : ℝ)) := by
  obtain ⟨hn, hl, hu⟩ := terminal_floor_orders hT
  have hnlog : Real.log 7 ≤ Real.log (Nat.floor (Real.exp T) : ℝ) := by
    apply Real.log_le_log (by norm_num)
    exact_mod_cast hn
  have hi := step_interval hnlog hl
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (actualIntegerXiTailLogStep_intervalIntegrable hnlog).abs hi,
      actualXiLogStep_integral_at_integer hn, actualXiLogStep_cell_integral hn hl hu]

private theorem terminal_sum {T : ℝ} (hT : Real.log 7 ≤ T) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)), f n * actualXiTerminalCellLogWeight T n) =
      (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T) - 1),
        f n * Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))) +
          f (Nat.floor (Real.exp T)) * (T - Real.log (Nat.floor (Real.exp T) : ℝ)) := by
  have hn := (terminal_floor_orders hT).1
  have he : (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)), f n *
      actualXiTerminalCellLogWeight T n) =
      (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T) - 1), f n *
        actualXiTerminalCellLogWeight T n) +
          f (Nat.floor (Real.exp T)) *
            actualXiTerminalCellLogWeight T (Nat.floor (Real.exp T)) := by
    simpa only [Nat.sub_add_cancel (show 1 ≤ Nat.floor (Real.exp T) by omega)] using
      (Finset.sum_Icc_succ_top
        (f := fun n => f n * actualXiTerminalCellLogWeight T n)
        (by omega : 7 ≤ (Nat.floor (Real.exp T) - 1) + 1))
  rw [he]
  simp only [actualXiTerminalCellLogWeight, if_pos rfl]
  congr 1
  apply Finset.sum_congr rfl
  intro n hn'
  have hne : n ≠ Nat.floor (Real.exp T) := by
    have := (Finset.mem_Icc.mp hn').2
    omega
  rw [if_neg hne]

/-- A single positive-weight finite inventory includes the true last fraction. -/
theorem actualXiLogStep_integral_eq_terminal_sum {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, |actualIntegerXiTailLogStep t|) =
      ∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)),
        |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| * actualXiTerminalCellLogWeight T n := by
  rw [terminal_sum hT, actualXiLogStep_integral_eq_prefix_fraction hT]
  rfl

private theorem terminal_weight_nonneg {T : ℝ} (hT : Real.log 7 ≤ T) {n : ℕ}
    (hn : n ∈ Finset.Icc 7 (Nat.floor (Real.exp T))) :
    0 ≤ actualXiTerminalCellLogWeight T n := by
  unfold actualXiTerminalCellLogWeight
  split_ifs with he
  · subst n
    exact sub_nonneg.mpr (terminal_floor_orders hT).2.1
  · apply Real.log_nonneg
    have hnp : 0 < (n : ℝ) := by
      exact_mod_cast (show 0 < n by have := (Finset.mem_Icc.mp hn).1; omega)
    apply (le_div_iff₀ hnp).2
    push_cast
    linarith

/-- Actual weights telescope to the complete real interval length, including its final fraction. -/
theorem actualXiTerminalCellLogWeight_sum {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)), actualXiTerminalCellLogWeight T n) =
      T - Real.log 7 := by
  have hn := (terminal_floor_orders hT).1
  have hs := terminal_sum hT (fun _ => (1 : ℝ))
  simp only [one_mul] at hs
  rw [hs, icc_pred_eq_ico]
  have hh : (∑ n ∈ Finset.Ico 7 (Nat.floor (Real.exp T)),
      Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))) =
      Real.log (Nat.floor (Real.exp T) : ℝ) - Real.log 7 := by
    calc
      _ = ∑ n ∈ Finset.Ico 7 (Nat.floor (Real.exp T)),
          (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) := by
        apply Finset.sum_congr rfl
        intro n hn'
        exact log_ratio (Finset.mem_Ico.mp hn').1
      _ = _ := Finset.sum_Ico_sub hn
  rw [hh]
  ring

/-- The source integer readout keeps signed alpha rows, the continuous baseline and closed seven. -/
theorem actualXiIntegerCriticalReadout_eq_primitive {N : ℕ} (hN : 7 ≤ N) :
    actualXiIntegerCriticalReadout N = actualAnchoredXiTailPrimitive (Real.log (N : ℝ)) := by
  have hnp : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hl : Real.log 7 ≤ Real.log (N : ℝ) := by
    apply Real.log_le_log (by norm_num)
    exact_mod_cast hN
  have h := actualAnchoredXiTailPrimitive_eq_reciprocal_abel hl
  simp only [Real.exp_log hnp, Nat.floor_natCast] at h
  exact h.symm

/-- The whole mean is a weighted finite inventory of the actual critical signed arithmetic readout. -/
theorem actualXiLogStep_integral_eq_signed_integer_readout {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, |actualIntegerXiTailLogStep t|) =
      ∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)),
        |actualXiIntegerCriticalReadout n| * actualXiTerminalCellLogWeight T n := by
  rw [actualXiLogStep_integral_eq_terminal_sum hT]
  apply Finset.sum_congr rfl
  intro n hn
  rw [actualXiIntegerCriticalReadout_eq_primitive (Finset.mem_Icc.mp hn).1]

/-- Genuine weighted real Cauchy-Schwarz retains the same full fractional terminal cell. -/
theorem actualXiLogStep_mean_square_budget {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, |actualIntegerXiTailLogStep t|) ^ 2 ≤
      (T - Real.log 7) * actualXiIntegerSquareWindow T := by
  rw [actualXiLogStep_integral_eq_terminal_sum hT]
  have hh := Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
    (Finset.Icc 7 (Nat.floor (Real.exp T)))
    (r := fun n => |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| *
      actualXiTerminalCellLogWeight T n)
    (f := fun n => |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| ^ 2 *
      actualXiTerminalCellLogWeight T n)
    (g := fun n => actualXiTerminalCellLogWeight T n)
    (fun n hn => mul_nonneg (sq_nonneg _) (terminal_weight_nonneg hT hn))
    (fun n hn => terminal_weight_nonneg hT hn)
    (fun n _ => by ring_nf)
  rw [actualXiTerminalCellLogWeight_sum hT] at hh
  unfold actualXiIntegerSquareWindow
  simpa only [mul_comm] using hh

/-- The original actual primitive mean has only the proved finite error beyond this exact readout. -/
theorem actualXiPrimitive_mean_weighted_readout_error {T : ℝ} (hT : Real.log 7 ≤ T) :
    |(∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
      (actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T)) +
        |actualAnchoredXiTailPrimitive (Real.log (Nat.floor (Real.exp T) : ℝ))| *
          (T - Real.log (Nat.floor (Real.exp T) : ℝ)))| ≤ actualXiLogStepErrorConstant := by
  rw [← actualXiLogStep_integral_eq_prefix_fraction hT]
  exact actualXiLogStep_absolute_average_difference hT

end
end FormalResearch.RiemannHypothesis.SourceActualXiWeightedIntegerMean
