-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtInteraction.Variant358cbd0a1c3d50e307bc2aaa24dbc8f4202cab49c9d0f90107d3ff3bc458c35d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"358cbd0a1c3d50e307bc2aaa24dbc8f4202cab49c9d0f90107d3ff3bc458c35d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceMangoldtInteraction.Variant358cbd0a1c3d50e307bc2aaa24dbc8f4202cab49c9d0f90107d3ff3bc458c35d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"358cbd0a1c3d50e307bc2aaa24dbc8f4202cab49c9d0f90107d3ff3bc458c35d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle7/acceptance-regent/regent-mangoldt-interaction/HostileGuards.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtInteraction.Variant358cbd0a1c3d50e307bc2aaa24dbc8f4202cab49c9d0f90107d3ff3bc458c35d

set_option autoImplicit false
set_option relaxedAutoImplicit false

noncomputable section
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open CorrelationRegularity PrimePowerDescent

/-- The exact probe keeps its true squared norm, including non-unit coefficients. -/
example (ε : ℝ) : ‖interactionProbe ε‖ ^ 2 = 1 + ε ^ 2 := by
  have h := interactionProbe_correlation ε 0
  rw [translation_zero] at h
  have hp := sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale (Real.log 2)
    probeScale_pos (probeScale_log_two.le.trans (le_abs_self _))
  have hn := sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale (-Real.log 2)
    probeScale_pos (by simpa only [abs_neg] using
      probeScale_log_two.le.trans (le_abs_self (Real.log 2)))
  simp only [zero_sub, zero_add, sourceCorrelation_zero probeScale_pos, hp, hn,
    mul_one, mul_zero, add_zero] at h
  rw [norm_sq_eq_re_inner (𝕜 := ℂ)]
  exact h

/-- Removing the index-two membership guard would give the wrong hostile value. -/
example : mangoldtInteraction 0 = 0 := by
  norm_num [mangoldtInteraction, primePowerInventory]
