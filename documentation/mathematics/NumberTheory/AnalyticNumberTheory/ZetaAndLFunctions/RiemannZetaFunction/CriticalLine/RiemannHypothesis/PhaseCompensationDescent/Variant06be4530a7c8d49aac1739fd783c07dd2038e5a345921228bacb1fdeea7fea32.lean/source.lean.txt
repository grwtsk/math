-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LowerSignedTracePacket.Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LowerSignedTracePacket.Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/b4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate
import FormalResearch.RiemannHypothesis.PhaseInvolution
import FormalResearch.RiemannHypothesis.PhaseObservationObstruction
import FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical

/-!
# Actual prime-and-square signed trace observation

The phase rotation trace is observed against the proved density of the actual
normalized dilation test. The strict prime-and-square inventory, von Mangoldt
weights, and source normalization are retained. The resulting tail lower bound
is exactly the existing open prime-and-square compensation proposition.

This is an exact restatement of that arithmetic frontier. The trace dictionary,
positive unit-mass density, and conditional RH bridge do not prove its bound.
The genuine phase-one characteristic-radical quotient is instantiated on the
actual zero-frequency arithmetic packet: its negative baseline survives descent.
No quotient positivity or uniform bound is asserted. Zero simplicity is not assumed.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LowerSignedTracePacket.Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7

namespace FormalResearch.RiemannHypothesis.PhaseCompensationDescent

open MeasureTheory
open FormalResearch.RiemannHypothesis
open MultiplicativePhase
open PhaseObservationObstruction
open PhaseCharacteristicRadical
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateHigherPrimePowers PrimePowerPhaseDefect CorrelationSpectralLens
open PrimeSquareEstimate

noncomputable section

/-- The signed rotation traces over the actual strict prime-and-square inventory. -/
def lowerSignedTracePacket (A ξ : ℝ) : ℝ :=
  ∑ n ∈ lowerPowerInventory A,
    signedTracePacket (primeWeight n) (phaseRotation (chi ξ n))

/-- The actual source observation of the signed prime-and-square trace packet. -/
def lowerSignedTraceMass (A : ℝ) : ℝ :=
  ∫ ξ, lowerSignedTracePacket A ξ * spectralDensity A ξ

/-- The unit-phase trace dictionary retains the complete negative budget. -/
theorem lower_signed_trace_packet_eq_defect_sub_budget (A ξ : ℝ) :
    lowerSignedTracePacket A ξ = lowerPowerPhaseDefect A ξ - 2 * lowerPowerWeight A := by
  unfold lowerSignedTracePacket lowerPowerPhaseDefect lowerPowerWeight
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [signed_trace_packet_phase_rotation (primeWeight n) (chi ξ n) (chi_normSq ξ n)]
  ring

/-- Genuine integrability follows from the already admitted phase defect and density. -/
theorem lower_signed_trace_mass_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ lowerSignedTracePacket A ξ * spectralDensity A ξ) := by
  have hi := (lowerPowerPhaseMass_integrable A hA).sub
    ((spectralDensity_integrable A hA).const_mul (2 * lowerPowerWeight A))
  apply hi.congr
  filter_upwards [] with ξ
  simp only [Pi.sub_apply, lower_signed_trace_packet_eq_defect_sub_budget]
  ring

/-- Unit mass transports the exact retained budget into the signed trace observation. -/
theorem lower_signed_trace_mass_eq_defect_sub_budget (A : ℝ) (hA : 1 ≤ A) :
    lowerSignedTraceMass A = -2 * lowerPowerWeight A + lowerPowerPhaseMass A := by
  unfold lowerSignedTraceMass
  simp_rw [lower_signed_trace_packet_eq_defect_sub_budget, sub_mul]
  rw [integral_sub (lowerPowerPhaseMass_integrable A hA)
    ((spectralDensity_integrable A hA).const_mul (2 * lowerPowerWeight A)),
    integral_const_mul, spectralDensity_integral A hA]
  unfold lowerPowerPhaseMass
  ring

/-- The observed trace is exactly the unchanged signed arithmetic contribution. -/
theorem lower_signed_trace_mass_eq_neg_two_contribution (A : ℝ) (hA : 1 ≤ A) :
    lowerSignedTraceMass A = -2 * lowerPowerContribution A := by
  rw [lower_signed_trace_mass_eq_defect_sub_budget A hA,
    lowerPowerContribution_eq_weight_sub_half_phaseMass A hA]
  ring

/-- At zero frequency every actual prime-and-square phase retains its negative budget. -/
theorem lower_signed_trace_packet_zero_frequency_eq_characteristic_sum (A : ℝ) :
    lowerSignedTracePacket A 0 =
      ∑ n ∈ lowerPowerInventory A,
        characteristicSignedTrace (primeWeight n)
          (AdjoinRoot.root ((Polynomial.X - Polynomial.C (1 : ℂ)) ^ 2)) := by
  unfold lowerSignedTracePacket
  apply Finset.sum_congr rfl
  intro n _
  rw [characteristic_signed_trace_eq_matrix_packet,
    observe_phase_one_root_zero_frequency (n : ℝ)]

/-- Genuine characteristic-radical descent does not remove the actual arithmetic baseline. -/
theorem lower_signed_trace_packet_zero_frequency (A : ℝ) :
    lowerSignedTracePacket A 0 = -2 * lowerPowerWeight A := by
  rw [lower_signed_trace_packet_zero_frequency_eq_characteristic_sum]
  simp_rw [characteristic_signed_trace_identity]
  rw [lowerPowerWeight, Finset.mul_sum]

/-- OPEN: a lower bound on the actual observed signed trace at every large radius. -/
def UniformLowerSignedTraceTail : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → -C ≤ lowerSignedTraceMass A

/-- This trace formulation is equivalent to the existing open arithmetic frontier. -/
theorem uniform_lower_signed_trace_tail_iff_prime_square_compensation :
    UniformLowerSignedTraceTail ↔ PrimeSquareCompensationTail := by
  constructor
  · rintro ⟨C, hC, R, hR, htail⟩
    refine ⟨C, hC, R, hR, ?_⟩
    intro A hRA
    have h := htail A hRA
    rw [lower_signed_trace_mass_eq_defect_sub_budget A (hR.trans hRA)] at h
    linarith
  · rintro ⟨C, hC, R, hR, htail⟩
    refine ⟨C, hC, R, hR, ?_⟩
    intro A hRA
    rw [lower_signed_trace_mass_eq_defect_sub_budget A (hR.trans hRA)]
    have h := htail A hRA
    linarith

/-- The unchanged all-scale estimate follows only from the named open trace bound. -/
theorem estimate_of_uniform_lower_signed_trace_tail (h : UniformLowerSignedTraceTail) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_prime_square_compensation
    (uniform_lower_signed_trace_tail_iff_prime_square_compensation.mp h)

/-- Conditional reuse of the exact existing RH bridge; no open bound is inhabited. -/
theorem riemann_hypothesis_of_uniform_lower_signed_trace_tail
    (h : UniformLowerSignedTraceTail) : _root_.RiemannHypothesis :=
  riemann_hypothesis_of_prime_square_compensation
    (uniform_lower_signed_trace_tail_iff_prime_square_compensation.mp h)

end
end FormalResearch.RiemannHypothesis.PhaseCompensationDescent
