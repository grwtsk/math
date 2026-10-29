-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Legendre.Variant3d921d247a649c22ea12b606aa02343889bcb465345293f00053d5ed9ad37894","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d921d247a649c22ea12b606aa02343889bcb465345293f00053d5ed9ad37894","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Legendre.Variant3d921d247a649c22ea12b606aa02343889bcb465345293f00053d5ed9ad37894","mathematical_subject":"Algebra.Polynomials","original_sha256":"3d921d247a649c22ea12b606aa02343889bcb465345293f00053d5ed9ad37894","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-!
Exact five-mode algebra for grwtsk contributors' unchanged RH source.
Originating mathematical direction, theorem selection, corrections and evaluation:
grwtsk contributors. Scratch formalization assistance: OpenAI Codex.
This file is outside maintained source and makes no arithmetic bound or acceptance claim.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Legendre.Variant3d921d247a649c22ea12b606aa02343889bcb465345293f00053d5ed9ad37894

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeNormalization CorrelationRegularity

/-- Standard Legendre polynomials, specified by their three-term recurrence. -/
def legendre : ℕ → ℝ → ℝ
  | 0, _ => 1
  | 1, y => y
  | n + 2, y =>
    (((2 * (n + 1) + 1 : ℕ) : ℝ) * y * legendre (n + 1) y -
      ((n + 1 : ℕ) : ℝ) * legendre n y) / ((n + 2 : ℕ) : ℝ)

/-- The retained five even degrees are exactly 0,2,4,6,8. -/
def mode (i : Fin 5) (y : ℝ) : ℝ := legendre (2 * i.val) y

def bumpCoefficient : Fin 5 → ℝ := ![128/315, -512/693, 2304/5005, -512/3465, 128/6435]
def secondCoefficient : Fin 5 → ℝ := ![0, 128/21, -768/77, 128/33, 0]
def modeWeight (i : Fin 5) : ℝ := (4 * i.val + 1 : ℕ)
def sourceCoefficient (A : ℝ) (i : Fin 5) : ℝ :=
  secondCoefficient i / A ^ 2 - bumpCoefficient i / 4

theorem mode_zero (y : ℝ) : mode 0 y = 1 := by norm_num [mode, legendre]
theorem mode_two (y : ℝ) : mode 1 y = (3*y^2-1)/2 := by
  norm_num [mode, legendre]; ring
theorem mode_four (y : ℝ) : mode 2 y = (35*y^4-30*y^2+3)/8 := by
  norm_num [mode, legendre]; ring
theorem mode_six (y : ℝ) : mode 3 y = (231*y^6-315*y^4+105*y^2-5)/16 := by
  norm_num [mode, legendre]; ring
theorem mode_eight (y : ℝ) : mode 4 y =
    (6435*y^8-12012*y^6+6930*y^4-1260*y^2+35)/128 := by
  norm_num [mode, legendre]; ring

theorem mode_even (i : Fin 5) (y : ℝ) : mode i (-y) = mode i y := by
  fin_cases i <;> norm_num [mode, legendre] <;> ring

theorem bump_expansion (y : ℝ) :
    unitBump y = ∑ i : Fin 5, bumpCoefficient i * mode i y := by
  simp [Fin.sum_univ_succ, bumpCoefficient, mode, legendre, unitBump]
  ring

theorem second_expansion (y : ℝ) :
    unitSecond y = ∑ i : Fin 5, secondCoefficient i * mode i y := by
  simp [Fin.sum_univ_succ, secondCoefficient, mode, legendre, unitSecond]
  ring

theorem source_polynomial_expansion (A y : ℝ) :
    unitSecond y / A ^ 2 - unitBump y / 4 =
      ∑ i : Fin 5, sourceCoefficient A i * mode i y := by
  rw [bump_expansion, second_expansion]
  simp only [sourceCoefficient, sub_mul, div_mul_eq_mul_div, Finset.sum_sub_distrib,
    Finset.sum_div]

theorem exact_weighted_normalization (A : ℝ) :
    (∑ i : Fin 5, (2 / modeWeight i) * sourceCoefficient A i ^ 2) =
      sourceNormalization A := by
  simp [Fin.sum_univ_succ, sourceCoefficient, bumpCoefficient, secondCoefficient,
    modeWeight, sourceNormalization]
  ring

/-- Original coefficient convention, including the original positive Z_A. -/
def alpha (A : ℝ) (i : Fin 5) : ℝ :=
  Real.sqrt (2 / modeWeight i) / Real.sqrt (sourceNormalization A) * sourceCoefficient A i

/-- Closed-support, normalized Legendre modes; endpoints are retained. -/
def normalizedMode (A : ℝ) (i : Fin 5) (x : ℝ) : ℝ :=
  (Icc (-A) A).indicator
    (fun y => Real.sqrt (modeWeight i / (2*A)) * mode i (y/A)) x

theorem modeWeight_pos (i : Fin 5) : 0 < modeWeight i := by
  fin_cases i <;> norm_num [modeWeight]

theorem alpha_square (A : ℝ) (hA : 1 ≤ A) (i : Fin 5) :
    alpha A i ^ 2 = (2 / modeWeight i) * sourceCoefficient A i ^ 2 /
      sourceNormalization A := by
  have hw := modeWeight_pos i
  unfold alpha
  rw [mul_pow, div_pow, Real.sq_sqrt (by positivity : 0 ≤ 2 / modeWeight i),
    Real.sq_sqrt (source_normalization_pos A hA).le]
  ring

theorem alpha_normalization (A : ℝ) (hA : 1 ≤ A) :
    (∑ i : Fin 5, alpha A i ^ 2) = 1 := by
  simp_rw [alpha_square A hA]
  rw [← Finset.sum_div, exact_weighted_normalization,
    div_self (source_normalization_pos A hA).ne']

theorem sqrt_mode_product (A : ℝ) (hA : 0 < A) (i : Fin 5) :
    Real.sqrt (2 / modeWeight i) * Real.sqrt (modeWeight i / (2*A)) =
      1 / Real.sqrt A := by
  have hwp := modeWeight_pos i
  rw [← Real.sqrt_mul (by positivity : 0 ≤ 2 / modeWeight i)]
  have hw := (modeWeight_pos i).ne'
  have h : (2 / modeWeight i) * (modeWeight i / (2*A)) = 1 / A := by
    field_simp
  rw [h, Real.sqrt_div (by norm_num : (0 : ℝ) ≤ 1)]
  simp

theorem actual_source_reconstruction (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A x =
      ∑ i : Fin 5, alpha A i * normalizedMode A i x := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [normalizedTest_eq_indicator A hp]
  by_cases hx : x ∈ Icc (-A) A
  · simp only [indicator_of_mem hx, normalizedMode, alpha]
    have hterm (i : Fin 5) :
        Real.sqrt (2 / modeWeight i) / Real.sqrt (sourceNormalization A) *
          sourceCoefficient A i *
          (Real.sqrt (modeWeight i / (2*A)) * mode i (x/A)) =
        (sourceCoefficient A i * mode i (x/A)) /
          (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
      calc
        _ = (Real.sqrt (2 / modeWeight i) * Real.sqrt (modeWeight i / (2*A))) *
          (sourceCoefficient A i * mode i (x/A)) / Real.sqrt (sourceNormalization A) := by ring
        _ = _ := by rw [sqrt_mode_product A hp i]; ring
    simp_rw [hterm]
    rw [← Finset.sum_div, ← source_polynomial_expansion]
    unfold normalizedInterior secondInterior bumpInterior unitSecond unitBump
    ring
  · simp [normalizedMode, indicator_of_notMem hx]

theorem actual_source_norm (A : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, (∑ i : Fin 5, alpha A i * normalizedMode A i x) ^ 2) = 1 := by
  simp_rw [← actual_source_reconstruction A hA]
  exact normalized_square_integral A hA

theorem reconstructed_support (A x : ℝ) (hA : 1 ≤ A) (hx : A ≤ |x|) :
    (∑ i : Fin 5, alpha A i * normalizedMode A i x) = 0 := by
  rw [← actual_source_reconstruction A hA]
  exact normalizedTest_zero_of_le_abs A x (by linarith) hx

end CommonMeanScratch
