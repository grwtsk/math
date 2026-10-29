-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedTerminalSubaction.Varianta19e3cf2566de24dd618a193261bc1235407cace272a395b0c61be1bb2499f30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a19e3cf2566de24dd618a193261bc1235407cace272a395b0c61be1bb2499f30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SignedTerminalSubaction.Varianta19e3cf2566de24dd618a193261bc1235407cace272a395b0c61be1bb2499f30","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a19e3cf2566de24dd618a193261bc1235407cace272a395b0c61be1bb2499f30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/post-Map285-PR450-actual-source-capture-v2-20261007T194312Z/selected-remote-blobs/FormalResearch/RiemannHypothesis/SourceKapitzaTerminalCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete
import FormalResearch.RiemannHypothesis.SourceKapitzaCycle

/-!
# Signed terminal certificates for the actual compensated source

RH16-KAPITZA-20261007. grwtsk contributors retains the originating Kapitza
direction, theorem selection, corrections and evaluation; the original proposal
date is unverified. OpenAI Codex supplies this particular finite signed
subaction calculation and its formalization, recovered 7 October 2026.

Signed defects and the two potential endpoints are priced together. No
positive-variation or square budget is imposed. The physical source joins below
retain every prime power, the first unit trace, and the final fractional cell.
The adjacent-cell integral reconstruction and a uniform combined terminal
payment remain explicit premises: this module constructs neither witness.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedTerminalSubaction.Varianta19e3cf2566de24dd618a193261bc1235407cace272a395b0c61be1bb2499f30

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceKapitzaTerminalCertificate

open MeasureTheory SourcePairing SourceKapitzaReconstruction SourceKapitzaDiscrete
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimatePrimeSmoothDefect
open scoped BigOperators Interval

/-- Finite signed subactions telescope without discarding negative defects. -/
theorem signed_terminal_subaction (f e : ℕ → ℝ) (P : ℕ → ℝ) (N : ℕ)
    (hlocal : ∀ j < N, f j + P (j + 1) - P j ≤ e j) :
    (∑ j ∈ Finset.range N, f j) ≤
      P 0 - P N + ∑ j ∈ Finset.range N, e j := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hp := ih (fun j hj => hlocal j (Nat.lt_succ_of_lt hj))
      have hl := hlocal N (Nat.lt_succ_self N)
      simp only [Finset.sum_range_succ]
      linarith

/-- Exact affine recurrences can use arbitrary source-dependent potentials. -/
theorem affine_terminal_subaction (z alpha beta a b e : ℕ → ℝ)
    (S : ℕ → ℝ → ℝ) (N : ℕ)
    (hrec : ∀ j < N, z (j + 1) = alpha j * z j + beta j)
    (hlocal : ∀ j < N,
      a j * z j + b j + S (j + 1) (alpha j * z j + beta j) - S j (z j) ≤ e j) :
    (∑ j ∈ Finset.range N, (a j * z j + b j)) ≤
      S 0 (z 0) - S N (z N) + ∑ j ∈ Finset.range N, e j := by
  apply signed_terminal_subaction (fun j => a j * z j + b j) e (fun j => S j (z j)) N
  intro j hj
  simpa only [hrec j hj] using hlocal j hj

/-- Only the total signed payment needs a common bound. -/
theorem affine_readout_le_of_terminal_payment (z alpha beta a b e : ℕ → ℝ)
    (S : ℕ → ℝ → ℝ) (N : ℕ) (B : ℝ)
    (hrec : ∀ j < N, z (j + 1) = alpha j * z j + beta j)
    (hlocal : ∀ j < N,
      a j * z j + b j + S (j + 1) (alpha j * z j + beta j) - S j (z j) ≤ e j)
    (hpayment : S 0 (z 0) - S N (z N) + ∑ j ∈ Finset.range N, e j ≤ B) :
    (∑ j ∈ Finset.range N, (a j * z j + b j)) ≤ B :=
  (affine_terminal_subaction z alpha beta a b e S N hrec hlocal).trans hpayment

def quadraticPotential (u v c z : ℝ) : ℝ := u * z ^ 2 + v * z + c

/-- Every affine readout and quadratic potential has an exact quadratic defect. -/
theorem quadratic_subaction_expansion (u v c un vn cn alpha beta a b z : ℝ) :
    a * z + b + quadraticPotential un vn cn (alpha * z + beta) -
      quadraticPotential u v c z =
        (un * alpha ^ 2 - u) * z ^ 2 +
          (a + 2 * un * alpha * beta + vn * alpha - v) * z +
          (b + un * beta ^ 2 + vn * beta + cn - c) := by
  unfold quadraticPotential
  ring

/-- Three Bernstein coefficients give a finite certificate on an interval. -/
theorem quadratic_interval_bernstein (p q c L U E z : ℝ)
    (hLU : L ≤ U) (hzL : L ≤ z) (hzU : z ≤ U)
    (hleft : p * L ^ 2 + q * L + c ≤ E)
    (hmiddle : p * L * U + q * (L + U) / 2 + c ≤ E)
    (hright : p * U ^ 2 + q * U + c ≤ E) :
    p * z ^ 2 + q * z + c ≤ E := by
  by_cases heq : L = U
  · have hz : z = L := by linarith
    simpa only [hz] using hleft
  · have hwidth : 0 < (U - L) ^ 2 := sq_pos_of_ne_zero (by
      intro hzero
      apply heq
      linarith)
    have h₀ := mul_le_mul_of_nonneg_right hleft (sq_nonneg (U - z))
    have h₁ := mul_le_mul_of_nonneg_right hmiddle
      (show 0 ≤ 2 * (z - L) * (U - z) by positivity)
    have h₂ := mul_le_mul_of_nonneg_right hright (sq_nonneg (z - L))
    have hid :
        (p * L ^ 2 + q * L + c) * (U - z) ^ 2 +
          (p * L * U + q * (L + U) / 2 + c) * (2 * (z - L) * (U - z)) +
          (p * U ^ 2 + q * U + c) * (z - L) ^ 2 =
            (p * z ^ 2 + q * z + c) * (U - L) ^ 2 := by ring
    have hweights :
        (U - z) ^ 2 + 2 * (z - L) * (U - z) + (z - L) ^ 2 = (U - L) ^ 2 := by ring
    have htotal : (p * z ^ 2 + q * z + c) * (U - L) ^ 2 ≤ E * (U - L) ^ 2 := by
      rw [← hid]
      calc
        _ ≤ E * (U - z) ^ 2 + E * (2 * (z - L) * (U - z)) +
            E * (z - L) ^ 2 := add_le_add (add_le_add h₀ h₁) h₂
        _ = _ := by rw [← mul_add, ← mul_add, hweights]
    exact (mul_le_mul_iff_left₀ hwidth).mp htotal

/-- A finite coefficient check establishes the local inequality on a reachable interval. -/
def QuadraticSubactionCertificate (alpha beta a b u v c e : ℕ → ℝ)
    (N : ℕ) (L U : ℝ) : Prop :=
  ∀ j < N,
    let p := u (j + 1) * alpha j ^ 2 - u j
    let q := a j + 2 * u (j + 1) * alpha j * beta j + v (j + 1) * alpha j - v j
    let d := b j + u (j + 1) * beta j ^ 2 + v (j + 1) * beta j + c (j + 1) - c j
    p * L ^ 2 + q * L + d ≤ e j ∧
      p * L * U + q * (L + U) / 2 + d ≤ e j ∧
        p * U ^ 2 + q * U + d ≤ e j

/-- Quadratic interval certificates supply actual local subactions without inspecting the state. -/
theorem quadratic_local_subaction (z alpha beta a b u v c e : ℕ → ℝ)
    (N : ℕ) (L U : ℝ) (hLU : L ≤ U)
    (hreach : ∀ j < N, L ≤ z j ∧ z j ≤ U)
    (hcert : QuadraticSubactionCertificate alpha beta a b u v c e N L U) :
    ∀ j < N,
      a j * z j + b j + quadraticPotential (u (j + 1)) (v (j + 1)) (c (j + 1))
        (alpha j * z j + beta j) - quadraticPotential (u j) (v j) (c j) (z j) ≤ e j := by
  intro j hj
  rw [quadratic_subaction_expansion]
  rcases hcert j hj with ⟨hl, hm, hr⟩
  exact quadratic_interval_bernstein _ _ _ L U (e j) (z j)
    hLU (hreach j hj).1 (hreach j hj).2 hl hm hr

/-- Exact generic cancellation: signed payments can vanish with unbounded positive variation. -/
theorem two_step_signed_payment_zero (t : ℝ) :
    (∑ j ∈ Finset.range 2, (if j = 0 then t else -t)) = 0 := by
  simp [Finset.sum_range_succ]

theorem two_step_positive_payment (t : ℝ) (ht : 0 ≤ t) :
    (∑ j ∈ Finset.range 2, max 0 (if j = 0 then t else -t)) = t := by
  simp [Finset.sum_range_succ, max_eq_right ht, max_eq_left (neg_nonpos.mpr ht)]

/-- The actual number of cells includes a possibly zero-length touching last cell. -/
def rawCutoff (A : ℝ) : ℕ := ⌊Real.exp (2 * A)⌋₊

/-- Integer states are followed by the physical real endpoint, not the next event. -/
def physicalState (A : ℝ) (j : ℕ) : ℝ :=
  if j < rawCutoff A then integerDiscrepancy (j + 1) else endpointValue A

def physicalMultiplier (A : ℝ) (j : ℕ) : ℝ :=
  if j + 1 < rawCutoff A then (j + 1 : ℕ) / (j + 2 : ℕ)
  else (rawCutoff A : ℝ) / Real.exp (2 * A)

def physicalForcing (A : ℝ) (j : ℕ) : ℝ :=
  if j + 1 < rawCutoff A then compensatedImpulse (j + 2) / (j + 2 : ℕ)
  else (rawCutoff A : ℝ) / Real.exp (2 * A) - 1

theorem rawCutoff_pos (A : ℝ) (hA : 0 ≤ A) : 1 ≤ rawCutoff A :=
  (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))

theorem physicalState_initial (A : ℝ) (hA : 0 ≤ A) : physicalState A 0 = -1 := by
  have hN : 0 < rawCutoff A := by have := rawCutoff_pos A hA; omega
  simp [physicalState, hN, integerDiscrepancy_one]

theorem physicalState_terminal (A : ℝ) : physicalState A (rawCutoff A) = endpointValue A := by
  simp [physicalState]

/-- The final transition retains the complete fractional phase and closed prefix. -/
theorem final_physical_transfer (A : ℝ) (hA : 0 ≤ A) :
    endpointValue A = (rawCutoff A : ℝ) / Real.exp (2 * A) *
      integerDiscrepancy (rawCutoff A) +
        ((rawCutoff A : ℝ) / Real.exp (2 * A) - 1) := by
  have hp := endpointValue_closed_phase A hA
  change Real.exp (2 * A) * endpointValue A =
    (rawCutoff A : ℝ) * integerDiscrepancy (rawCutoff A) -
      (Real.exp (2 * A) - (rawCutoff A : ℝ)) at hp
  have hx : Real.exp (2 * A) ≠ 0 := (Real.exp_pos _).ne'
  apply (mul_left_cancel₀ hx)
  calc
    Real.exp (2 * A) * endpointValue A = _ := hp
    _ = _ := by field_simp; ring

/-- All natural events precede the last physical drift; no outside event is used. -/
theorem physical_recurrence (A : ℝ) (hA : 0 ≤ A) (j : ℕ) (hj : j < rawCutoff A) :
    physicalState A (j + 1) =
      physicalMultiplier A j * physicalState A j + physicalForcing A j := by
  by_cases hnext : j + 1 < rawCutoff A
  · simp only [physicalState, physicalMultiplier, physicalForcing, if_pos hj, if_pos hnext]
    simpa only [Nat.add_assoc] using integerDiscrepancy_succ (by omega : 1 ≤ j + 1)
  · have hlast : j + 1 = rawCutoff A := by omega
    simp only [physicalState, physicalMultiplier, physicalForcing, if_pos hj, if_neg hnext]
    rw [hlast]
    exact final_physical_transfer A hA

/-- Unconditional reachable interval from the original complete Chebyshev bound. -/
theorem normalizedPsiError_bounds (s : ℝ) :
    -1 ≤ normalizedPsiError s ∧ normalizedPsiError s ≤ Real.log 4 + 3 := by
  rcases SourceKapitzaCycle.source_normalized_prefix_bounds _ (Real.exp_pos s) with ⟨hlo, hhi⟩
  rw [normalizedPsiError_eq_prefix, Real.exp_neg]
  simp only [div_eq_mul_inv, mul_comm] at hlo hhi
  constructor <;> linarith

theorem physicalState_bounds (A : ℝ) (j : ℕ) :
    -1 ≤ physicalState A j ∧ physicalState A j ≤ Real.log 4 + 3 := by
  unfold physicalState
  split_ifs
  · exact normalizedPsiError_bounds _
  · exact normalizedPsiError_bounds _

def rawCellLeft (j : ℕ) : ℝ := Real.log (j + 1 : ℕ)

def rawCellRight (A : ℝ) (j : ℕ) : ℝ := min (Real.log (j + 2 : ℕ)) (2 * A)

def rawCellCoefficient (A : ℝ) (j : ℕ) : ℝ :=
  ∫ s in rawCellLeft j..rawCellRight A j,
    kapitzaWeight A s * Real.exp (rawCellLeft j - s)

def rawCellOffset (A : ℝ) (j : ℕ) : ℝ :=
  ∫ s in rawCellLeft j..rawCellRight A j,
    kapitzaWeight A s * (Real.exp (rawCellLeft j - s) - 1)

def rawCellReadout (A : ℝ) (j : ℕ) : ℝ :=
  rawCellCoefficient A j * physicalState A j + rawCellOffset A j

/-- This exact adjacent-cell join is named as a proposition, never an axiom. -/
def RawCellReconstruction (A : ℝ) : Prop :=
  (∫ s in 0..2 * A, kapitzaWeight A s * normalizedPsiError s) =
    ∑ j ∈ Finset.range (rawCutoff A), rawCellReadout A j

/-- Three coefficients per actual natural/final cell suffice on the unconditional state interval. -/
def RawQuadraticCertificate (A : ℝ) (u v c e : ℕ → ℝ) : Prop :=
  QuadraticSubactionCertificate (physicalMultiplier A) (physicalForcing A)
    (rawCellCoefficient A) (rawCellOffset A) u v c e (rawCutoff A) (-1) (Real.log 4 + 3)

theorem raw_quadratic_local_certificate (A : ℝ) (u v c e : ℕ → ℝ)
    (hcert : RawQuadraticCertificate A u v c e) :
    ∀ j < rawCutoff A,
      rawCellReadout A j + quadraticPotential (u (j + 1)) (v (j + 1)) (c (j + 1))
        (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          quadraticPotential (u j) (v j) (c j) (physicalState A j) ≤ e j := by
  have hLU : (-1 : ℝ) ≤ Real.log 4 + 3 := by
    linarith [Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]
  exact quadratic_local_subaction (physicalState A) (physicalMultiplier A)
    (physicalForcing A) (rawCellCoefficient A) (rawCellOffset A) u v c e (rawCutoff A)
    (-1) (Real.log 4 + 3) hLU (fun j _ => physicalState_bounds A j) hcert

/-- Exact raw arithmetic subactions have the true physical endpoint payment. -/
theorem raw_readout_le_terminal_payment (A : ℝ) (hA : 0 ≤ A)
    (S : ℕ → ℝ → ℝ) (e : ℕ → ℝ)
    (hlocal : ∀ j < rawCutoff A,
      rawCellReadout A j +
        S (j + 1) (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          S j (physicalState A j) ≤ e j) :
    (∑ j ∈ Finset.range (rawCutoff A), rawCellReadout A j) ≤
      S 0 (-1) - S (rawCutoff A) (endpointValue A) +
        ∑ j ∈ Finset.range (rawCutoff A), e j := by
  have h := affine_terminal_subaction (physicalState A) (physicalMultiplier A)
    (physicalForcing A) (rawCellCoefficient A) (rawCellOffset A) e S (rawCutoff A)
    (physical_recurrence A hA) hlocal
  simpa only [rawCellReadout, physicalState_initial A hA, physicalState_terminal] using h

/-- The uniform premise prices the signed sum jointly with both actual endpoint potentials. -/
def RawTerminalPaymentBound (S : ℝ → ℕ → ℝ → ℝ) (e : ℝ → ℕ → ℝ) (R B : ℝ) : Prop :=
  ∀ A : ℝ, R ≤ A →
    S A 0 (-1) - S A (rawCutoff A) (endpointValue A) +
      ∑ j ∈ Finset.range (rawCutoff A), e A j ≤ B

theorem residual_le_of_raw_certificate (A B : ℝ) (hA : 1 ≤ A)
    (S : ℕ → ℝ → ℝ) (e : ℕ → ℝ) (hjoin : RawCellReconstruction A)
    (hlocal : ∀ j < rawCutoff A,
      rawCellReadout A j +
        S (j + 1) (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          S j (physicalState A j) ≤ e j)
    (hpayment : S 0 (-1) - S (rawCutoff A) (endpointValue A) +
      ∑ j ∈ Finset.range (rawCutoff A), e j ≤ B) :
    mertensResidual A ≤ 1 + B := by
  have hwork := (raw_readout_le_terminal_payment A (by linarith) S e hlocal).trans hpayment
  have hmoment := (abs_le.mp (kernelMomentZero_abs_le_one A hA)).2
  rw [mertensResidual_eq_weightedPsi A hA, hjoin]
  linarith

/-- A finite quadratic certificate returns the original residual with its joint signed payment. -/
theorem residual_le_of_raw_quadratic_certificate (A B : ℝ) (hA : 1 ≤ A)
    (u v c e : ℕ → ℝ) (hjoin : RawCellReconstruction A)
    (hcert : RawQuadraticCertificate A u v c e)
    (hpayment : quadraticPotential (u 0) (v 0) (c 0) (-1) -
      quadraticPotential (u (rawCutoff A)) (v (rawCutoff A)) (c (rawCutoff A))
        (endpointValue A) + ∑ j ∈ Finset.range (rawCutoff A), e j ≤ B) :
    mertensResidual A ≤ 1 + B :=
  residual_le_of_raw_certificate A B hA (fun j => quadraticPotential (u j) (v j) (c j))
    e hjoin (raw_quadratic_local_certificate A u v c e hcert) hpayment

/-- Exact original finite-prefix return, conditional on the independent certificate inputs. -/
theorem original_lower_of_raw_certificates (S : ℝ → ℕ → ℝ → ℝ)
    (e : ℝ → ℕ → ℝ) (R B : ℝ) (hR : 1 ≤ R)
    (hjoin : ∀ A : ℝ, R ≤ A → RawCellReconstruction A)
    (hlocal : ∀ A : ℝ, R ≤ A → ∀ j < rawCutoff A,
      rawCellReadout A j +
        S A (j + 1) (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          S A j (physicalState A j) ≤ e A j)
    (hpayment : RawTerminalPaymentBound S e R B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R) (archimedeanMultiplier 0 - 2 - 2 * B) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have htailA := hR.trans hRA
    have hr := residual_le_of_raw_certificate A B htailA (S A) (e A)
      (hjoin A hRA) (hlocal A hRA) (hpayment A hRA)
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

/-- The actual #16 target follows from a supplied certificate; no certificate is supplied. -/
theorem estimate_of_raw_certificates (S : ℝ → ℕ → ℝ → ℝ)
    (e : ℝ → ℕ → ℝ) (R B : ℝ) (hR : 1 ≤ R)
    (hjoin : ∀ A : ℝ, R ≤ A → RawCellReconstruction A)
    (hlocal : ∀ A : ℝ, R ≤ A → ∀ j < rawCutoff A,
      rawCellReadout A j +
        S A (j + 1) (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          S A j (physicalState A j) ≤ e A j)
    (hpayment : RawTerminalPaymentBound S e R B) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_raw_certificates S e R B hR hjoin hlocal hpayment⟩

end FormalResearch.RiemannHypothesis.SourceKapitzaTerminalCertificate
