-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleOneKeepsCompleteRow.Variant81d00979651fc4849b0015ffa34b68e894873712432f5f0d550493c59104ac15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81d00979651fc4849b0015ffa34b68e894873712432f5f0d550493c59104ac15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ScaleOneKeepsCompleteRow.Variant81d00979651fc4849b0015ffa34b68e894873712432f5f0d550493c59104ac15","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"81d00979651fc4849b0015ffa34b68e894873712432f5f0d550493c59104ac15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle28/principal-scaled-whole-row-v1/SourceScaledWholePlainConvolutionFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceScaledWholePlainConvolution

/-!
# Hostile contracts for the scaled whole-row convolution

UNCOMPILED fixtures. Actual-source identities are distinct from the generic
spike refutations. A generic strict-axis counterexample does not refute the
actual source, and no whole-row error estimate bounds its omitted signed rows.

AI attribution: developed with OpenAI Codex; native audits remain required.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleOneKeepsCompleteRow.Variant81d00979651fc4849b0015ffa34b68e894873712432f5f0d550493c59104ac15

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceScaledWholePlainConvolutionFixtures

open ArithmeticFunction SourceScaledWholePlainConvolution SourceCutoffFlux
open SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateMertensAbel EstimateMertensResidual

/-- Scale one recovers the complete row, including the unit column. -/
theorem scale_one_keeps_complete_row (A : ℝ) (hA : 1 ≤ A) :
    completeMangoldtPlainRowsAt A 1 = sourceMobiusKernel A 1 :=
  completeRowsAt_eq_sourceMobiusKernel A hA 1 (by norm_num)

/-- The exact floor quotient is natural division, not division of real cutoff surrogates. -/
theorem quotient_endpoint_is_closed (A : ℝ) (hA : 1 ≤ A) (d : ℕ) (hd : 1 ≤ d) :
    completeMangoldtPlainRowsAt A d =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A / d),
        vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ) :=
  completeRowsAt_eq_quotient_sum A hA d hd

/-- The completed source error retains its actual scale-dependent denominator. -/
theorem recombined_error_keeps_sqrt_scale (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    |completeMangoldtPlainRowsAt A d - sourceLogSamplingMainTerm A d| ≤
      96 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt (d : ℝ)) :=
  completeRowsAt_sub_mainTerm_abs_le A hA d hd

/-- Both closed short corrections survive when both strict long axes are selected. -/
theorem strict_axes_keep_two_subtractions (A : ℝ) (hA : 1 ≤ A)
    (d U : ℕ) (hd : 1 ≤ d) (hU : U ≤ sourceKernelCutoff A) :
    strictLongPlainRowsAt A d U = sourceMobiusKernel A d -
      shortMangoldtPlainRowsAt A d U - shortColumnPlainRowsAt A d U :=
  strictRowsAt_eq_logKernel_sub_short_sub_column A hA d U hd hU

/-- The actual signed short sectors recombine without a triangle inequality over rows. -/
theorem actual_short_vaughan_sectors_recombine (A : ℝ) (hA : 1 ≤ A) :
    shortLogSource A - shortPlainSource A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * longMangoldtPlainRowsAt A d (vaughanCutoff A) :=
  shortLog_sub_shortPlain_eq_signed_long_rows A hA

/-- Equality-of-indices deletion is still a separate signed raw source diagonal. -/
theorem actual_strict_rectangle_keeps_raw_diagonal (A : ℝ) (U : ℕ) :
    strictLongPlainRowsAt A 1 U = plainOffAt A U (sourceKernelCutoff A) +
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
        vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) :=
  strictRowsAt_one_eq_plainOff_add_rawDiagonal A U

/-- The original residual retains both signed divisor sectors and the original Type-II term. -/
theorem actual_residual_keeps_mixed_columns_and_typeTwo (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * strictLongPlainRowsAt A d (vaughanCutoff A)) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * shortColumnPlainRowsAt A d (vaughanCutoff A)) +
      typeTwoSource A :=
  mertensResidual_eq_scaled_strict_rows_and_columns A hA

/-- Actual centered deletion still adds its independent reciprocal-mean compensation. -/
theorem actual_centering_keeps_signed_mean (A : ℝ) (U N : ℕ) :
    centeredOffAt A U N = uncenteredOffAt A U N +
      EstimateBetaCentering.alpha U * plainOffAt A U N :=
  centeredOffAt_eq_uncentered_add_mean A U N

/-- Generic support of a bare weight is not preserved by the zero dilation. -/
theorem generic_zero_dilation_breaks_shifted_support :
    (∀ n : ℕ, 1 < n → (if n = 0 then (1 : ℝ) else 0) = 0) ∧
      (if (0 : ℕ) * 2 = 0 then (1 : ℝ) else 0) = 1 := by
  constructor
  · intro n hn
    have hn0 : n ≠ 0 := by omega
    simp only [if_neg hn0]
  · norm_num

/-- A generic spike at product two survives only in the deleted unit column. -/
theorem generic_unit_column_cannot_be_dropped :
    (∑ m ∈ ({1, 2} : Finset ℕ), ∑ n ∈ ({1, 2} : Finset ℕ),
      vonMangoldt m * (if m * n = 2 then (1 : ℝ) else 0)) = Real.log 2 ∧
      (∑ m ∈ ({2} : Finset ℕ), ∑ n ∈ ({2} : Finset ℕ),
        vonMangoldt m * (if m * n = 2 then (1 : ℝ) else 0)) = 0 := by
  have h2 : vonMangoldt 2 = Real.log 2 := vonMangoldt_apply_prime (by norm_num)
  norm_num [h2, vonMangoldt_apply_one]

end FormalResearch.RiemannHypothesis.SourceScaledWholePlainConvolutionFixtures
