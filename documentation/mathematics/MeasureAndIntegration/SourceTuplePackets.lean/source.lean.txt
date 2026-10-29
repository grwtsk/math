-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SignTuple.Variante6935785f9cf1ba5adc0b46e48634437bf79cf87bf3da7371f9413e747686e81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6935785f9cf1ba5adc0b46e48634437bf79cf87bf3da7371f9413e747686e81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SignTuple.Variante6935785f9cf1ba5adc0b46e48634437bf79cf87bf3da7371f9413e747686e81","mathematical_subject":"Analysis.Integration","original_sha256":"e6935785f9cf1ba5adc0b46e48634437bf79cf87bf3da7371f9413e747686e81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceTuplePackets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMultiplicativePackets
import Mathlib.Data.Fintype.BigOperators
import Mathlib.MeasureTheory.Integral.Bochner.Basic

/-!
# Exact signed tuples at every degree

Each tuple retains one inventory choice and one independent sign at each
position. The recursively typed product includes all ordered tuples, including
repeated indices and distinct sign choices with equal resulting shifts. Their
weights remain signed. Degree zero has exactly one empty tuple, with weight one
and shift zero. No packet is discarded and no uniform arithmetic bound is
claimed.

Research direction: grwtsk contributors. This particular finite construction and
formal proof: OpenAI Codex, 7 October 2026.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SignTuple.Variante6935785f9cf1ba5adc0b46e48634437bf79cf87bf3da7371f9413e747686e81

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceTuplePackets

open MeasureTheory
open SourceCompensatedFourier SourceMultiplicativePackets SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent

universe u

/-- A degree-`j` tuple of ordered inventory entries and independent binary signs. -/
def SignTuple (ι : Type u) : ℕ → Type u
  | 0 => PUnit
  | j + 1 => ι × Bool × SignTuple ι j

instance signTupleFintype {ι : Type u} [Fintype ι] :
    (j : ℕ) → Fintype (SignTuple ι j)
  | 0 => inferInstanceAs (Fintype PUnit)
  | j + 1 =>
    letI : Fintype (SignTuple ι j) := signTupleFintype j
    inferInstanceAs (Fintype (ι × Bool × SignTuple ι j))

/-- The tuple inventory has exactly one index/sign choice at every position. -/
theorem signTuple_card {ι : Type u} [Fintype ι] (j : ℕ) :
    Fintype.card (SignTuple ι j) = (2 * Fintype.card ι) ^ j := by
  induction j with
  | zero =>
    change Fintype.card PUnit.{u + 1} = (2 * Fintype.card ι) ^ 0
    simp
  | succ j ih =>
    change Fintype.card (ι × Bool × SignTuple ι j) = (2 * Fintype.card ι) ^ (j + 1)
    rw [Fintype.card_prod, Fintype.card_prod, Fintype.card_bool, ih, pow_succ]
    ring

/-- `true` selects the positive shift and `false` the negative shift. -/
def signedShift (ell : ℝ) (b : Bool) : ℝ := if b then ell else -ell

/-- The original coefficient product, without absolute values or sign erasure. -/
def tupleWeight {ι : Type u} (c : ι → ℝ) : (j : ℕ) → SignTuple ι j → ℝ
  | 0, _ => 1
  | j + 1, p => c p.1 * tupleWeight c j p.2.2

/-- The complete signed logarithmic shift of a tuple. -/
def tupleShift {ι : Type u} (ell : ι → ℝ) : (j : ℕ) → SignTuple ι j → ℝ
  | 0, _ => 0
  | j + 1, p => signedShift (ell p.1) p.2.1 + tupleShift ell j p.2.2

/-- The exact `2^(-j)` weighted sum over all signed tuples. -/
def tupleObservation {ι : Type u} [Fintype ι] (c ell : ι → ℝ)
    (j : ℕ) (response : ℝ → ℝ) (offset : ℝ := 0) : ℝ :=
  (1 / 2 : ℝ) ^ j * ∑ p : SignTuple ι j,
    tupleWeight c j p * response (offset + tupleShift ell j p)

/-- A finite real trigonometric polynomial on the declared inventory. -/
def finiteSymbol {ι : Type u} [Fintype ι] (c ell : ι → ℝ) (omega : ℝ) : ℝ :=
  ∑ i, c i * Real.cos (omega * ell i)

theorem tupleObservation_zero {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (response : ℝ → ℝ) (offset : ℝ) :
    tupleObservation c ell 0 response offset = response offset := by
  change (1 / 2 : ℝ) ^ 0 *
    (∑ _ : PUnit.{u + 1}, 1 * response (offset + 0)) = response offset
  simp

/-- The successor expansion adds both signs for every original inventory entry. -/
theorem tupleObservation_succ {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (j : ℕ) (response : ℝ → ℝ) (offset : ℝ) :
    tupleObservation c ell (j + 1) response offset =
      (1 / 2 : ℝ) * ∑ i, c i *
        (tupleObservation c ell j response (offset + ell i) +
          tupleObservation c ell j response (offset - ell i)) := by
  classical
  change (1 / 2 : ℝ) ^ (j + 1) *
    (∑ p : ι × Bool × SignTuple ι j, c p.1 * tupleWeight c j p.2.2 *
      response (offset + (signedShift (ell p.1) p.2.1 + tupleShift ell j p.2.2))) = _
  simp only [tupleObservation, Fintype.sum_prod_type, Fintype.sum_bool,
    signedShift, Bool.false_eq_true, if_true, if_false,
    pow_succ, Finset.mul_sum, Finset.sum_add_distrib]
  rw [← Finset.sum_add_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp only [mul_add, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [show offset + (ell i + tupleShift ell j p) =
    offset + ell i + tupleShift ell j p by ring,
    show offset + (-ell i + tupleShift ell j p) =
      offset - ell i + tupleShift ell j p by ring]
  ring

theorem cosine_two_signs (omega offset ell : ℝ) :
    (1 / 2 : ℝ) *
      (Real.cos (omega * (offset + ell)) + Real.cos (omega * (offset - ell))) =
      Real.cos (omega * offset) * Real.cos (omega * ell) := by
  have hp : omega * (offset + ell) = omega * offset + omega * ell := by ring
  have hm : omega * (offset - ell) = omega * offset - omega * ell := by ring
  rw [hp, hm, Real.cos_add, Real.cos_sub]
  ring

/-- Every power is an exact sum over the complete ordered index/sign tuple type. -/
theorem finiteSymbol_pow_mul_cos_eq_tuples {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (j : ℕ) (omega offset : ℝ) :
    finiteSymbol c ell omega ^ j * Real.cos (omega * offset) =
      tupleObservation c ell j (fun s => Real.cos (omega * s)) offset := by
  classical
  induction j generalizing offset with
  | zero => simp [tupleObservation_zero]
  | succ j ih =>
    rw [tupleObservation_succ]
    simp_rw [← ih]
    rw [pow_succ]
    unfold finiteSymbol
    simp only [Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    have h := cosine_two_signs omega offset (ell i)
    calc
      _ = (∑ k, c k * Real.cos (omega * ell k)) ^ j * c i *
          (Real.cos (omega * offset) * Real.cos (omega * ell i)) := by ring
      _ = _ := by rw [← h]; ring

/-- Degree zero and every positive degree use the same formula consistently. -/
theorem finiteSymbol_pow_eq_tuples {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (j : ℕ) (omega : ℝ) :
    finiteSymbol c ell omega ^ j =
      tupleObservation c ell j (fun s => Real.cos (omega * s)) 0 := by
  simpa using finiteSymbol_pow_mul_cos_eq_tuples c ell j omega 0

/-- Pointwise multiplication by a density preserves the complete finite sum. -/
theorem power_density_eq_tuples {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (j : ℕ) (omega density : ℝ) :
    finiteSymbol c ell omega ^ j * density =
      (1 / 2 : ℝ) ^ j * ∑ p : SignTuple ι j,
        tupleWeight c j p * (Real.cos (omega * tupleShift ell j p) * density) := by
  classical
  rw [finiteSymbol_pow_eq_tuples]
  unfold tupleObservation
  simp only [zero_add]
  rw [mul_assoc, Finset.sum_mul]
  simp_rw [mul_assoc]

/-- Integrability of each cosine observation supplies integrability of every
power-density readout through its exact finite expansion. -/
theorem weighted_power_integrable {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (j : ℕ) (omega density : ℝ → ℝ) (mu : Measure ℝ)
    (hint : ∀ s : ℝ, Integrable (fun x => Real.cos (omega x * s) * density x) mu) :
    Integrable (fun x => finiteSymbol c ell (omega x) ^ j * density x) mu := by
  have htuple : Integrable (fun x => ∑ p : SignTuple ι j,
      tupleWeight c j p *
        (Real.cos (omega x * tupleShift ell j p) * density x)) mu := by
    exact integrable_finsetSum _ (fun p _ => (hint (tupleShift ell j p)).const_mul _)
  simpa only [power_density_eq_tuples] using htuple.const_mul ((1 / 2 : ℝ) ^ j)

/-- The all-degree moment formula, requiring actual integrability of every
cosine observation before exchanging the finite sum and integral. -/
theorem weighted_moment_eq_tuples {ι : Type u} [Fintype ι]
    (c ell : ι → ℝ) (j : ℕ) (omega density : ℝ → ℝ) (mu : Measure ℝ)
    (hint : ∀ s : ℝ, Integrable (fun x => Real.cos (omega x * s) * density x) mu) :
    (∫ x : ℝ, finiteSymbol c ell (omega x) ^ j * density x ∂mu) =
      tupleObservation c ell j
        (fun s => ∫ x : ℝ, Real.cos (omega x * s) * density x ∂mu) 0 := by
  classical
  simp_rw [power_density_eq_tuples]
  rw [integral_const_mul, integral_finsetSum _
    (fun p _ => (hint (tupleShift ell j p)).const_mul _)]
  simp_rw [integral_const_mul]
  simp only [tupleObservation, zero_add]

/-- The original complete closed integer inventory, as a finite index type. -/
abbrev SourceIndex (A : ℝ) := ↥(primePowerInventory (2 * A))

theorem sourceSymbol_eq_finiteSymbol (A xi : ℝ) :
    compensatedFourierSymbol A xi =
      finiteSymbol (fun n : SourceIndex A => compensatedCoefficient n.1)
        (fun n : SourceIndex A => Real.log n.1) (2 * Real.pi * xi) := by
  unfold finiteSymbol compensatedFourierSymbol
  exact (Finset.sum_coe_sort _ _).symm

/-- Every natural degree has an integrable readout for the actual normalized
source; the complete symbol includes negative composites and every prime power. -/
theorem source_power_integrable {A : ℝ} (hA : 1 ≤ A) (j : ℕ) :
    Integrable (fun xi : ℝ => compensatedFourierSymbol A xi ^ j * sourceDensity A xi) := by
  simp_rw [sourceSymbol_eq_finiteSymbol]
  exact weighted_power_integrable _ _ j (fun xi => 2 * Real.pi * xi)
    (sourceDensity A) volume (cosine_sourceDensity_integrable hA)

/-- The exact source-specialized ordered-index/sign-tuple formula at all degrees,
including the normalized empty tuple at degree zero. -/
theorem source_moment_eq_signed_tuples {A : ℝ} (hA : 1 ≤ A) (j : ℕ) :
    (∫ xi : ℝ, compensatedFourierSymbol A xi ^ j * sourceDensity A xi) =
      (1 / 2 : ℝ) ^ j * ∑ p : SignTuple (SourceIndex A) j,
        tupleWeight (fun n => compensatedCoefficient n.1) j p *
          sourceCorrelation explicitSecondDerivative A
            (tupleShift (fun n => Real.log n.1) j p) := by
  have hresponse : (fun s : ℝ =>
      ∫ xi : ℝ, Real.cos (2 * Real.pi * xi * s) * sourceDensity A xi) =
        sourceCorrelation explicitSecondDerivative A := by
    funext s
    exact (sourceCorrelation_eq_cosine_integral hA s).symm
  simp_rw [sourceSymbol_eq_finiteSymbol]
  rw [weighted_moment_eq_tuples _ _ j (fun xi => 2 * Real.pi * xi)
    (sourceDensity A) volume (cosine_sourceDensity_integrable hA), hresponse]
  simp only [tupleObservation, zero_add]

theorem source_moment_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ xi : ℝ, compensatedFourierSymbol A xi ^ 0 * sourceDensity A xi) = 1 := by
  simpa using sourceDensity_mass hA

end FormalResearch.RiemannHypothesis.SourceTuplePackets
