-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPacketFormula.Variant3b47164aefdace721f1e04300f61df7776c563f77c9dd4294ca6432696fc8e5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b47164aefdace721f1e04300f61df7776c563f77c9dd4294ca6432696fc8e5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointPacketFormula.Variant3b47164aefdace721f1e04300f61df7776c563f77c9dd4294ca6432696fc8e5b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3b47164aefdace721f1e04300f61df7776c563f77c9dd4294ca6432696fc8e5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle30/mutation-issue-regent-v1/foreign-games-packets-owner-recovery-v1/captured-029-SourceCurvaturePacketLedger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.CurvaturePacketCertificates
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.RiemannHypothesis.SourceFiniteGameBridge

/-!
# Exact endpoint packetization of the full logarithmic atom sector

Every closed prime-power atom is an affine endpoint block minus a three-point
packet. Unmatched mass and first moment remain in the endpoint ledger. The
native quadratic expression retains its complete archimedean term separately.
This exact identity supplies no uniform bound on the signed combination.

Research direction, selection and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPacketFormula.Variant3b47164aefdace721f1e04300f61df7776c563f77c9dd4294ca6432696fc8e5b

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceCurvaturePacketLedger

open SourcePairing SourceMangoldtAbel SourceFirstPrimeAbel SourceFiniteGameBridge
open CurvaturePacketCertificates
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMertensResidual

/-- The two endpoint atoms retain the exact affine trace at a possibly touching atom. -/
theorem endpoint_packet_formula (Φ : ℝ → ℝ) {L : ℝ} (hL : L ≠ 0) (s : ℝ) :
    packetValue Φ s (L - s) s =
      (1 - s / L) * Φ 0 + (s / L) * Φ L - Φ s := by
  unfold packetValue
  rw [show L - s + s = L by ring, show s + (L - s) = L by ring, sub_self]
  field_simp [hL]
  ring

/-- The full critical test includes the retained unit initial trace and zero final trace. -/
theorem critical_endpoint_packet_formula {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    packetValue (criticalPrimeTest A) s (2 * A - s) s =
      1 - s / (2 * A) - criticalPrimeTest A s := by
  rw [endpoint_packet_formula _ (show 2 * A ≠ 0 by linarith),
    criticalPrimeTest_at_zero A hA, criticalPrimeTest_at_upper A (by linarith)]
  ring

/-- The exact initial endpoint coefficient; it may grow with A. -/
def affineEndpointLedger (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n / (n : ℝ) * (1 - Real.log n / (2 * A))

/-- Every original coefficient is retained, including square and higher prime powers. -/
def criticalPacketLedger (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      packetValue (criticalPrimeTest A) (Real.log n) (2 * A - Real.log n) (Real.log n)

/-- Genuine finite source reconstruction: packets and unmatched affine endpoints are joined. -/
theorem closedPrimeMoment_eq_endpoint_sub_packets {A : ℝ} (hA : 1 ≤ A) :
    closedPrimeMoment A = affineEndpointLedger A - criticalPacketLedger A := by
  rw [closedPrimeMoment_eq_mangoldtLogSum]
  unfold mangoldtLogSum affineEndpointLedger criticalPacketLedger
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [critical_endpoint_packet_formula hA]
  ring

/-- Native Q retains the signed endpoint compensation and full continuous contribution. -/
theorem sourceQuadraticValue_eq_packet_ledger {A : ℝ} (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A - 2 * affineEndpointLedger A +
        2 * criticalPacketLedger A := by
  rw [sourceQuadraticValue_eq_event_sum A hA, sum_sourceEventGain A hA,
    mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_endpoint_sub_packets hA]
  ring

/-- Source-real packet gains retain their adverse affine compensation in the decoder. -/
theorem sourceEventGain_eq_packet_gain {A : ℝ} (hA : 1 ≤ A) {n : ℕ}
    (hn : n ∈ primePowerInventory (2 * A)) :
    sourceEventGain A n = ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      (2 * packetValue (criticalPrimeTest A) (Real.log n)
        (2 * A - Real.log n) (Real.log n) - 2 * (1 - Real.log n / (2 * A))) := by
  have hn0 : 0 < n := by have := (Finset.mem_Icc.mp hn).1; omega
  rw [sourceEventGain_of_mem A hn, natural_source_coefficient_eq_critical_test A hn0,
    critical_endpoint_packet_formula hA]
  ring

end FormalResearch.RiemannHypothesis.SourceCurvaturePacketLedger
