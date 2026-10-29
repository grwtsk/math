-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PsiPositivePrefix.Variant721e027a68c6b59a7975019e3dccf38ebf52a32ef4057908f0f6cb6573538d84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"721e027a68c6b59a7975019e3dccf38ebf52a32ef4057908f0f6cb6573538d84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PsiPositivePrefix.Variant721e027a68c6b59a7975019e3dccf38ebf52a32ef4057908f0f6cb6573538d84","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"721e027a68c6b59a7975019e3dccf38ebf52a32ef4057908f0f6cb6573538d84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-closed-cell-oscillation/attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiReciprocalJointAbel

/-!
The actual closed prime-power upper atom cancels in the Xi primitive, even
at the inclusive right integer seam. Its oscillation on a single physical
integer cell decays, without controlling the accumulated critical average.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PsiPositivePrefix.Variant721e027a68c6b59a7975019e3dccf38ebf52a32ef4057908f0f6cb6573538d84

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiClosedCellOscillation
open ArithmeticFunction MeasureTheory Set
open SourceActualXiClosedKernelHyperbola RootActualXiTailPrimitive
noncomputable section

private theorem psi_positive_prefix (N : ℕ) :
    Chebyshev.psi (N : ℝ) = ∑ n ∈ Finset.Icc 1 N, (vonMangoldt n : ℝ) := by
  rw [Chebyshev.psi_eq_sum_Icc, Nat.floor_natCast,
    Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  have hs : Finset.Ioc 0 N = Finset.Icc 1 N := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_Icc]
    omega
  simp only [ArithmeticFunction.map_zero, zero_add, hs]

/-- The closed upper atom vanishes; the entire cell variation is its retained psi trace. -/
theorem actualClosedMangoldtXiPair_cell_difference {N : ℕ} {Y : ℝ}
    (hN : 1 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    actualClosedMangoldtXiPair Y - actualClosedMangoldtXiPair (N : ℝ) =
      Chebyshev.psi (N : ℝ) * (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) := by
  rw [actualClosedMangoldtXiPair_on_closed_cell hN hY hYs]
  simp only [actualClosedMangoldtXiPair, Nat.floor_natCast, actualClosedXiAtomKernel]
  rw [← Finset.sum_sub_distrib, psi_positive_prefix, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Both continuous traces remain in the exact primitive difference on the inclusive cell. -/
theorem actualAnchoredXiTailPrimitive_cell_difference {N : ℕ} {Y : ℝ}
    (hN : 7 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    actualAnchoredXiTailPrimitive (Real.log Y) -
        actualAnchoredXiTailPrimitive (Real.log (N : ℝ)) =
      2 * (Chebyshev.psi (N : ℝ) +
        2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
        (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) -
      2 * (Real.sqrt Y - Real.sqrt (N : ℝ)) := by
  have hn : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hy : 0 < Y := hn.trans_le hY
  have hn7 : (7 : ℝ) ≤ N := by exact_mod_cast hN
  have hlN : Real.log 7 ≤ Real.log (N : ℝ) := Real.log_le_log (by norm_num) hn7
  have hlY : Real.log 7 ≤ Real.log Y := Real.log_le_log (by norm_num) (hn7.trans hY)
  rw [actualAnchoredXiTailPrimitive_eq_closed_pair hlY,
    actualAnchoredXiTailPrimitive_eq_closed_pair hlN, Real.exp_log hy, Real.exp_log hn]
  have hk := actualClosedMangoldtXiPair_cell_difference (by omega : 1 ≤ N) hY hYs
  have hsn := Real.sq_sqrt hn.le
  have hsy := Real.sq_sqrt hy.le
  have hsnp : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.2 hn
  have hsyp : 0 < Real.sqrt Y := Real.sqrt_pos.2 hy
  have hdY : (Y + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
      Real.sqrt Y = Real.sqrt Y +
        2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) / Real.sqrt Y := by
    field_simp
    nlinarith
  have hdN : ((N : ℝ) + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
      Real.sqrt (N : ℝ) = Real.sqrt (N : ℝ) +
        2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) /
          Real.sqrt (N : ℝ) := by
    field_simp
    nlinarith
  rw [hdY, hdN]
  linear_combination 2 * hk

private theorem cell_sqrt_bounds {N : ℕ} {Y : ℝ}
    (hN : 1 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    0 ≤ Real.sqrt Y - Real.sqrt (N : ℝ) ∧
      Real.sqrt Y - Real.sqrt (N : ℝ) ≤ 1 / Real.sqrt (N : ℝ) ∧
      0 ≤ 1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y ∧
      1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y ≤
        1 / ((N : ℝ) * Real.sqrt (N : ℝ)) := by
  have hn : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hy : 0 < Y := hn.trans_le hY
  have hsnp : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.2 hn
  have hsyp : 0 < Real.sqrt Y := Real.sqrt_pos.2 hy
  have hsle : Real.sqrt (N : ℝ) ≤ Real.sqrt Y := Real.sqrt_le_sqrt hY
  have hsn := Real.sq_sqrt hn.le
  have hsy := Real.sq_sqrt hy.le
  have hdiff : Y - N ≤ 1 := by
    have hys : Y ≤ (N : ℝ) + 1 := by simpa using hYs
    linarith
  have hdb : Real.sqrt Y - Real.sqrt (N : ℝ) ≤ 1 / Real.sqrt (N : ℝ) := by
    apply (le_div_iff₀ hsnp).2
    nlinarith
  refine ⟨sub_nonneg.mpr hsle, hdb, ?_, ?_⟩
  · exact sub_nonneg.mpr (one_div_le_one_div_of_le hsnp hsle)
  · apply (le_div_iff₀ (mul_pos hn hsnp)).2
    field_simp
    nlinarith

/-- Genuine single-cell primitive oscillation decays; it does not bound its long signed average. -/
theorem actualAnchoredXiTailPrimitive_cell_abs_le {N : ℕ} {Y : ℝ}
    (hN : 7 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    |actualAnchoredXiTailPrimitive (Real.log Y) -
      actualAnchoredXiTailPrimitive (Real.log (N : ℝ))| ≤
      2 * (Real.log 4 + 5 + |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|) /
        Real.sqrt (N : ℝ) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hn : 1 ≤ (N : ℝ) := by exact_mod_cast (show 1 ≤ N by omega)
  have hsnp : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.2 (by linarith)
  have hb := cell_sqrt_bounds (by omega : 1 ≤ N) hY hYs
  rw [actualAnchoredXiTailPrimitive_cell_difference hN hY hYs]
  change |2 * (Chebyshev.psi (N : ℝ) + c) *
    (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) -
    2 * (Real.sqrt Y - Real.sqrt (N : ℝ))| ≤ _
  have hp := Chebyshev.psi_nonneg (N : ℝ)
  have hpu := Chebyshev.psi_le_const_mul_self (by linarith : 0 ≤ (N : ℝ))
  have hc : |Chebyshev.psi (N : ℝ) + c| ≤ Chebyshev.psi (N : ℝ) + |c| := by
    simpa only [abs_of_nonneg hp] using (abs_add_le (Chebyshev.psi (N : ℝ)) c)
  calc
    _ ≤ |2 * (Chebyshev.psi (N : ℝ) + c) *
          (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y)| +
        |2 * (Real.sqrt Y - Real.sqrt (N : ℝ))| := abs_sub _ _
    _ = 2 * |Chebyshev.psi (N : ℝ) + c| *
          (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) +
        2 * (Real.sqrt Y - Real.sqrt (N : ℝ)) := by
      rw [abs_mul, abs_mul, abs_mul, abs_of_nonneg hb.2.2.1, abs_of_nonneg hb.1]
      norm_num
    _ ≤ 2 * (Chebyshev.psi (N : ℝ) + |c|) *
          (1 / ((N : ℝ) * Real.sqrt (N : ℝ))) + 2 / Real.sqrt (N : ℝ) := by
      have ht : 2 * |Chebyshev.psi (N : ℝ) + c| *
          (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) ≤
          2 * (Chebyshev.psi (N : ℝ) + |c|) *
            (1 / ((N : ℝ) * Real.sqrt (N : ℝ))) := by
        calc
          _ ≤ 2 * (Chebyshev.psi (N : ℝ) + |c|) *
              (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) :=
            mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hc (by norm_num)) hb.2.2.1
          _ ≤ _ := mul_le_mul_of_nonneg_left hb.2.2.2 (by positivity)
      have hs : 2 * (Real.sqrt Y - Real.sqrt (N : ℝ)) ≤ 2 / Real.sqrt (N : ℝ) := by
        linarith [hb.2.1]
      exact add_le_add ht hs
    _ ≤ 2 * (Real.log 4 + 5 + |c|) / Real.sqrt (N : ℝ) := by
      apply (le_div_iff₀ hsnp).2
      field_simp
      nlinarith [abs_nonneg c, Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]

end
end FormalResearch.RiemannHypothesis.SourceActualXiClosedCellOscillation
