-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BetaWeightedLongSum.Variant538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BetaWeightedLongSum.Variant538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/source-readbacks/owner-ignored-latest-20261007T154040Z/preserved/scratch/confluence/cycle29/root/boundary8-static-opens-repair-v2/SourcePhysicalBoundaryBalance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePhysicalQuotientStrip

/-!
# The complete physical quotient balance

UNCOMPILED preparation. The original long beta rectangle is reconstructed
from every physical quotient row, including its raw diagonal. Removing the
scaled auxiliary rectangle retains the signed quotient strips. The centered
deleted diagonal and the independently defined main term remain in their
owning source declarations. No eventual bound is supplied by these identities.

AI attribution: developed with OpenAI Codex. Focused kernel checking, exact
statement and axiom inspection, independent review and full verification are
separate gates; this preparation claims none of them.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BetaWeightedLongSum.Variant538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePhysicalBoundaryBalance

open ArithmeticFunction SourcePhysicalQuotientStrip SourceScaledWholePlainConvolution
open SourceDivisorClassification SourceDivisorCounterterms SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateVaughanSource EstimatePlainKernel
open EstimateBetaCentering EstimateBetaSourceRecombination EstimateMertensResidual
open EstimateVaughanTranslationGate SourceSamplingPointwise
open EstimateMertensAbel EstimateSourceMobiusKernel

noncomputable section

private theorem beta_weighted_long_sum (U N : ℕ) (hU : 1 ≤ U) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Ioc U N, beta U n * f n) =
      -∑ d ∈ Finset.Icc 1 U, realMoebius d *
        ∑ k ∈ Finset.Ioc (U / d) (N / d), f (d * k) := by
  classical
  have hb (n : ℕ) (hn : n ∈ Finset.Ioc U N) :
      beta U n * f n =
        -(∑ d ∈ Finset.Icc 1 U, realMoebius d *
          (if d ∣ n then f n else 0)) := by
    have hn1 : 1 < n := by have := (Finset.mem_Ioc.mp hn).1; omega
    rw [beta_eq_delta_sub_short, if_neg (by omega), zero_sub,
      short_divisor_sum_eq_indicator U n (by omega), neg_mul, Finset.sum_mul]
    congr 1
    apply Finset.sum_congr rfl
    intro d _
    split_ifs <;> simp [realMoebius]
  calc
    _ = ∑ n ∈ Finset.Ioc U N,
        -(∑ d ∈ Finset.Icc 1 U, realMoebius d *
          (if d ∣ n then f n else 0)) := Finset.sum_congr rfl hb
    _ = -(∑ d ∈ Finset.Icc 1 U, ∑ n ∈ Finset.Ioc U N,
        realMoebius d * (if d ∣ n then f n else 0)) := by
      rw [Finset.sum_neg_distrib, Finset.sum_comm]
    _ = _ := by
      congr 1
      apply Finset.sum_congr rfl
      intro d hd
      rw [← Finset.mul_sum]
      congr 1
      have hp : 0 < d := (Finset.mem_Icc.mp hd).1
      have hi : Finset.Icc (U / d + 1) (N / d) = Finset.Ioc (U / d) (N / d) := by
        ext k
        simp only [Finset.mem_Icc, Finset.mem_Ioc]
        omega
      simpa only [hi] using sum_multiples_eq_quotient_interval U N d hp f

/-- The actual full Type-II rectangle retains every physical quotient and its raw diagonal. -/
theorem typeTwoSource_eq_negative_physicalRows (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = -∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      realMoebius d * physicalQuotientRowsAt A d (vaughanCutoff A) := by
  classical
  rw [typeTwoSource_eq_rectangle A hA]
  simp_rw [beta_weighted_long_sum (vaughanCutoff A) (sourceKernelCutoff A)
    (vaughanCutoff_pos A hA)]
  simp_rw [mul_neg, Finset.mul_sum]
  rw [Finset.sum_neg_distrib, Finset.sum_comm]
  congr 1
  apply Finset.sum_congr rfl
  intro d _
  unfold physicalQuotientRowsAt
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  simp only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm]
  ring

/-- The restored physical diagonal sums to the negative raw beta diagonal, without its centered mean. -/
theorem signed_physicalDeletedRows_eq_negative_rawDiagonal (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      physicalQuotientDeletedRowsAt A d (vaughanCutoff A)) = -typeTwoDiagonal A := by
  classical
  have hrow (m : ℕ)
      (hm : m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)) :
      beta (vaughanCutoff A) m * sourcePlainWeight A ((m * m : ℕ) : ℝ) =
        -∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
          ∑ k ∈ Finset.Ioc (vaughanCutoff A / d) (sourceKernelCutoff A / d),
            if d * k = m then sourcePlainWeight A ((d * m * k : ℕ) : ℝ) else 0 := by
    have hs := beta_weighted_long_sum (vaughanCutoff A) (sourceKernelCutoff A)
      (vaughanCutoff_pos A hA)
      (fun n => if n = m then sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0)
    simpa only [mul_ite, mul_zero, Finset.sum_ite_eq', hm, if_true,
      Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] using hs
  have ht : typeTwoDiagonal A =
      -∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        physicalQuotientDeletedRowsAt A d (vaughanCutoff A) := by
    unfold typeTwoDiagonal
    calc
      _ = ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
          vonMangoldt m * (-∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
            ∑ k ∈ Finset.Ioc (vaughanCutoff A / d) (sourceKernelCutoff A / d),
              if d * k = m then sourcePlainWeight A ((d * m * k : ℕ) : ℝ) else 0) := by
        apply Finset.sum_congr rfl
        intro m hm
        rw [mul_assoc, hrow m hm]
      _ = _ := by
        simp_rw [mul_neg, Finset.mul_sum]
        rw [Finset.sum_neg_distrib, Finset.sum_comm]
        congr 1
        apply Finset.sum_congr rfl
        intro d _
        unfold physicalQuotientDeletedRowsAt
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro m _
        ring
  linarith

/-- The original centered deletion retains the independent mean payment after raw diagonal reconstruction. -/
theorem centeredDeletedDiagonal_eq_signed_physical_payment (A : ℝ) (hA : 1 ≤ A) :
    centeredDeletedDiagonal A =
      -(∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        physicalQuotientDeletedRowsAt A d (vaughanCutoff A)) +
      alpha (vaughanCutoff A) * deletedDiagonalMean A := by
  rw [signed_physicalDeletedRows_eq_negative_rawDiagonal A hA, neg_neg]
  exact centeredDeletedDiagonal_eq_old_diagonal_add_centering A

/-- The original residual retains the complete signed boundary after the physical Type-II balance. -/
theorem mertensResidual_eq_short_add_signed_column_sub_strip (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (shortColumnPlainRowsAt A d (vaughanCutoff A) -
          quotientStripRowsAt A d (vaughanCutoff A)) := by
  have hr := mertensResidual_eq_scaled_strict_rows_and_columns A hA
  have ht := typeTwoSource_eq_negative_physicalRows A hA
  have hp :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * physicalQuotientRowsAt A d (vaughanCutoff A)) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * strictLongPlainRowsAt A d (vaughanCutoff A)) +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * quotientStripRowsAt A d (vaughanCutoff A) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    rw [actual_physicalRows_eq_auxiliary_strict_add_strip A hA d
      (Finset.mem_Icc.mp hd).1, mul_add]
  rw [ht, hp] at hr
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  linarith

/-- The independent divisor remainder keeps both sampling payments and the restored physical diagonal. -/
theorem divisorRemainder_eq_column_strip_and_sampling_payments (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    divisorRemainder A d =
      shortColumnPlainRowsAt A d (vaughanCutoff A) -
      quotientStripRowsAt A d (vaughanCutoff A) +
      physicalQuotientDeletedRowsAt A d (vaughanCutoff A) +
      (sourceLogSamplingMainTerm A d - completeMangoldtPlainRowsAt A d) +
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m *
        (sourcePlainKernel A ((d * m : ℕ) : ℝ) -
          sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) := by
  have hs := strictRowsAt_eq_logKernel_sub_short_sub_column A hA d
    (vaughanCutoff A) hd (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hp := actual_physicalRows_eq_auxiliary_strict_add_strip A hA d hd
  have he := physicalRowsAt_eq_off_add_deleted A d (vaughanCutoff A)
  have hm := divisorMultiplesInteraction_eq_physicalOffRows A d hd
  rw [← completeRowsAt_eq_sourceMobiusKernel A hA d hd] at hs
  unfold divisorRemainder
  rw [hm]
  have hsum :
      (∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m *
        (sourcePlainKernel A ((d * m : ℕ) : ℝ) -
          sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) =
      shortMangoldtPlainRowsAt A d (vaughanCutoff A) -
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) := by
    simp only [mul_sub, Finset.sum_sub_distrib, shortMangoldtPlainRowsAt]
  rw [hsum]
  linarith

/-- The actual target keeps its independently defined global baseline and every signed payment. -/
theorem jointSignedRemainder_eq_physical_boundary_payments (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (shortColumnPlainRowsAt A d (vaughanCutoff A) -
          quotientStripRowsAt A d (vaughanCutoff A) +
          physicalQuotientDeletedRowsAt A d (vaughanCutoff A) +
          (sourceLogSamplingMainTerm A d - completeMangoldtPlainRowsAt A d) +
          ∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m *
            (sourcePlainKernel A ((d * m : ℕ) : ℝ) -
              sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) := by
  rw [jointSignedRemainder_eq_divisor_remainders A hA]
  congr 1
  apply Finset.sum_congr rfl
  intro d hd
  rw [divisorRemainder_eq_column_strip_and_sampling_payments A hA d
    (Finset.mem_Icc.mp hd).1]

/-- Reconstructing the residual identifies the owned prime moment; it does not bound it. -/
theorem short_add_signed_column_sub_strip_eq_closedPrimeMoment (A : ℝ) (hA : 1 ≤ A) :
    shortMangoldtSource A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (shortColumnPlainRowsAt A d (vaughanCutoff A) -
          quotientStripRowsAt A d (vaughanCutoff A))) =
      EstimatePrimeSmoothDefect.closedPrimeMoment A := by
  rw [← mertensResidual_eq_short_add_signed_column_sub_strip A hA]
  exact mertensResidual_eq_closedPrimeMoment A hA

/-- Generic carrier: U=0 retains the exceptional unit beta atom and invalidates its omission. -/
theorem generic_zero_cutoff_long_beta_unit_fails :
    (∑ n ∈ (Finset.Ioc 0 1 : Finset ℕ), beta 0 n * (if n = 1 then (1 : ℝ) else 0)) ≠
      -∑ d ∈ (Finset.Icc 1 0 : Finset ℕ), realMoebius d *
        ∑ k ∈ Finset.Ioc (0 / d) (1 / d), if d * k = 1 then (1 : ℝ) else 0 := by
  norm_num [beta, Finset.sum_filter, realMoebius]

end
end FormalResearch.RiemannHypothesis.SourcePhysicalBoundaryBalance
