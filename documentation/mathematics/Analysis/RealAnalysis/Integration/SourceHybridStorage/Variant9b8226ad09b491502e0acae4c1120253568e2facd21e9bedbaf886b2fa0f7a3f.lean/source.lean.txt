-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FlowIntegralBound.Variant8a3a3199418a6f4abfede28691f7b27b92db4080c6579f1e05ac3e9dcd6ea862","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a3a3199418a6f4abfede28691f7b27b92db4080c6579f1e05ac3e9dcd6ea862","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FlowIntegralBound.Variant8a3a3199418a6f4abfede28691f7b27b92db4080c6579f1e05ac3e9dcd6ea862","mathematical_subject":"Analysis.Integration","original_sha256":"8a3a3199418a6f4abfede28691f7b27b92db4080c6579f1e05ac3e9dcd6ea862","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/primary-delta-index-retrieved-b246bcb45ff5/primary-deltas/source/8a/8a3a3199418a6f4abfede28691f7b27b92db4080c6579f1e05ac3e9dcd6ea862/SourceHybridStorage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic

/-!
# Signed hybrid storage with changing event dimensions and moving charts

QGL-ALL-20261007. Research direction, theorem selection, corrections and
evaluation: grwtsk contributors. These proofs and calculations: OpenAI Codex.
No arithmetic upper-bound provider is asserted by this module.

The scalar telescope applies after integrating each absolutely continuous
flow piece. Its event traces may belong to different state spaces. Matrix
congruence keeps before/after charts separate, including rectangular resets.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FlowIntegralBound.Variant8a3a3199418a6f4abfede28691f7b27b92db4080c6579f1e05ac3e9dcd6ea862

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHybridStorage

open MeasureTheory Set
open scoped BigOperators Matrix

/-- Integrating a local storage inequality retains its signed error integral. -/
theorem flow_integral_bound (S f e Sd : ℝ → ℝ) (a b : ℝ) (hab : a ≤ b)
    (hS : ∀ s ∈ uIcc a b, HasDerivAt S (Sd s) s)
    (hf : IntervalIntegrable f volume a b)
    (hd : IntervalIntegrable Sd volume a b)
    (he : IntervalIntegrable e volume a b)
    (hlocal : ∀ s ∈ Icc a b, f s + Sd s ≤ e s) :
    (∫ s in a..b, f s) + S b - S a ≤ ∫ s in a..b, e s := by
  have hft := intervalIntegral.integral_eq_sub_of_hasDerivAt hS hd
  have hi := intervalIntegral.integral_mono_on hab (hf.add hd) he hlocal
  rw [intervalIntegral.integral_add hf hd, hft] at hi
  linarith only [hi]

/-- Flow costs telescope with signed event costs, without a common event dimension. -/
theorem signed_hybrid_telescope (f g ef eg L R : ℕ → ℝ) (N : ℕ)
    (hflow : ∀ j ≤ N, f j + R j - L j ≤ ef j)
    (hevent : ∀ j < N, g j + L (j + 1) - R j ≤ eg j) :
    (∑ j ∈ Finset.range (N + 1), f j) + (∑ j ∈ Finset.range N, g j) ≤
      L 0 - R N + (∑ j ∈ Finset.range (N + 1), ef j) +
        (∑ j ∈ Finset.range N, eg j) := by
  induction N with
  | zero => simpa using hflow 0 (by omega)
  | succ N ih =>
      have hp := ih (fun j hj => hflow j (by omega))
        (fun j hj => hevent j (by omega))
      have hf := hflow (N + 1) (by omega)
      have hg := hevent N (by omega)
      simp only [Finset.sum_range_succ]
      linarith only [hp, hf, hg]

/-- Only the initial storage, final storage and total signed error are bounded. -/
theorem signed_hybrid_bound (f g ef eg L R : ℕ → ℝ) (N : ℕ)
    (d Cd C0 Cerror : ℝ)
    (hflow : ∀ j ≤ N, f j + R j - L j ≤ ef j)
    (hevent : ∀ j < N, g j + L (j + 1) - R j ≤ eg j)
    (hd : d ≤ Cd) (h0 : L 0 ≤ C0) (hterminal : 0 ≤ R N)
    (herror : (∑ j ∈ Finset.range (N + 1), ef j) +
      (∑ j ∈ Finset.range N, eg j) ≤ Cerror) :
    d + (∑ j ∈ Finset.range (N + 1), f j) + (∑ j ∈ Finset.range N, g j) ≤
      Cd + C0 + Cerror := by
  have h := signed_hybrid_telescope f g ef eg L R N hflow hevent
  linarith only [h, hd, h0, hterminal, herror]

section ComplexForms

variable {n m : Type*} [Fintype n] [Fintype m]

/-- The real Hermitian quadratic readout (also defined for arbitrary matrices). -/
def quadraticReadout (P : Matrix n n ℂ) (w : n → ℂ) : ℝ :=
  (star w ⬝ᵥ (P *ᵥ w)).re

/-- Quadratic-form order; for Hermitian matrices this is Loewner order. -/
def FormLE (P Q : Matrix n n ℂ) : Prop :=
  ∀ w : n → ℂ, quadraticReadout P w ≤ quadraticReadout Q w

theorem quadraticReadout_congruence (P : Matrix n n ℂ) (K : Matrix n m ℂ)
    (w : m → ℂ) :
    quadraticReadout (Kᴴ * P * K) w = quadraticReadout P (K *ᵥ w) := by
  unfold quadraticReadout
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
    Matrix.dotProduct_mulVec, Matrix.vecMul_conjTranspose, star_star]

theorem formLE_congruence {P Q : Matrix n n ℂ} (h : FormLE P Q)
    (K : Matrix n m ℂ) : FormLE (Kᴴ * P * K) (Kᴴ * Q * K) := by
  intro w
  simpa only [quadraticReadout_congruence] using h (K *ᵥ w)

end ComplexForms

section ChartCovariance

variable {n m : Type*} [Fintype n] [Fintype m] [DecidableEq n] [DecidableEq m]

/-- The moving-chart derivative of inverse-congruence storage.
`D` is T-dot and `K` is T-inverse. -/
def transformedStorageDerivative (P Pd T D K : Matrix n n ℂ) : Matrix n n ℂ :=
  (-K * D * K)ᴴ * P * K + Kᴴ * Pd * K + Kᴴ * P * (-K * D * K)

theorem flow_defect_covariance (L P Pd B T D K : Matrix n n ℂ)
    (hKT : K * T = 1) :
    Kᴴ * L * K + transformedStorageDerivative P Pd T D K +
      (D * K + T * B * K)ᴴ * (Kᴴ * P * K) +
      (Kᴴ * P * K) * (D * K + T * B * K) =
        Kᴴ * (L + Pd + Bᴴ * P + P * B) * K := by
  have hstar : Tᴴ * Kᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, hKT, Matrix.conjTranspose_one]
  unfold transformedStorageDerivative
  simp only [Matrix.conjTranspose_add, Matrix.conjTranspose_mul,
    Matrix.conjTranspose_neg]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.neg_mul, Matrix.mul_neg,
    Matrix.mul_assoc]
  simp only [← Matrix.mul_assoc Tᴴ Kᴴ, hstar, Matrix.one_mul,
    ← Matrix.mul_assoc K T, hKT, Matrix.one_mul]
  noncomm_ring

/-- A reset can be rectangular; both before/after chart changes are retained. -/
theorem event_defect_covariance (L Pminus : Matrix n n ℂ) (Pplus : Matrix m m ℂ)
    (M : Matrix m n ℂ) (Tplus Kplus : Matrix m m ℂ) (Kminus : Matrix n n ℂ)
    (hplus : Kplus * Tplus = 1) :
    Kminusᴴ * L * Kminus + (Tplus * M * Kminus)ᴴ *
      (Kplusᴴ * Pplus * Kplus) * (Tplus * M * Kminus) -
      Kminusᴴ * Pminus * Kminus =
        Kminusᴴ * (L + Mᴴ * Pplus * M - Pminus) * Kminus := by
  have hstar : Tplusᴴ * Kplusᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, hplus, Matrix.conjTranspose_one]
  simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
  simp only [← Matrix.mul_assoc Tplusᴴ Kplusᴴ, hstar, Matrix.one_mul,
    ← Matrix.mul_assoc Kplus Tplus, hplus, Matrix.one_mul]
  simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_sub, Matrix.sub_mul,
    Matrix.mul_assoc]

end ChartCovariance

/-- Simultaneous additive resets retain cross terms between distinct impulses. -/
theorem simultaneous_affine_reset (p q r pm qm rm a b z cost : ℝ) :
    cost + (p * (a * z + b) ^ 2 + q * (a * z + b) + r) -
      (pm * z ^ 2 + qm * z + rm) =
    (p * a ^ 2 - pm) * z ^ 2 + (2 * p * a * b + q * a - qm) * z +
      (cost + p * b ^ 2 + q * b + r - rm) := by ring

theorem simultaneous_impulse_mixed_term (w z eta j t : ℝ) :
    w * (z + j + t) ^ 2 + eta * (z + j + t) - (w * z ^ 2 + eta * z) =
      2 * w * z * (j + t) + w * j ^ 2 + 2 * w * j * t + w * t ^ 2 +
        eta * (j + t) := by ring

end FormalResearch.RiemannHypothesis.SourceHybridStorage
