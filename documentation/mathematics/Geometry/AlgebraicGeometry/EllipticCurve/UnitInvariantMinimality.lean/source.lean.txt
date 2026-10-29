/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Minimality in Mathlib's actual DVR reduction API. An integral Weierstrass
model with unit c4 cannot decrease its additive discriminant valuation
under ANY admissible variable change whose resulting coefficients are
integral. The proof uses the existing c4 and discriminant transformation
laws, not a search through a finite set of changes. The valuation here
is MULTIPLICATIVE: minimal additive discriminant means maximal value.
No conductor, splitness, Tate algorithm or completed-field claim.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import Mathlib.AlgebraicGeometry.EllipticCurve.Reduction
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.NormNum

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality

open WeierstrassCurve IsDedekindDomain.HeightOneSpectrum
open WithZero Multiplicative

variable (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]

/-- The SAME normalized multiplicative valuation used by IsMinimal. -/
abbrev localVal : Valuation K ℤᵐ⁰ :=
  (IsDiscreteValuationRing.maximalIdeal R).valuation K

theorem val_map_eq_one_iff (r : R) :
    localVal R (algebraMap R K r) = 1 ↔ IsUnit r := by
  rw [valuation_eq_one_iff_notMem]
  simp [IsDiscreteValuationRing.maximalIdeal, IsLocalRing.mem_maximalIdeal,
    mem_nonunits_iff]

theorem val_map_lt_one_iff (r : R) :
    localVal R (algebraMap R K r) < 1 ↔ ¬ IsUnit r := by
  rw [valuation_lt_one_iff_mem]
  simp [IsDiscreteValuationRing.maximalIdeal, IsLocalRing.mem_maximalIdeal,
    mem_nonunits_iff]

/-- Integrality bounds c4 because it is an integral coefficient polynomial. -/
theorem integral_c4_le_one (W : WeierstrassCurve K) [IsIntegral R W] :
    localVal R W.c₄ ≤ 1 := by
  rw [← integralModel_c₄_eq R W]
  exact valuation_le_one _ _

theorem integral_delta_le_one (W : WeierstrassCurve K) [IsIntegral R W] :
    localVal R W.Δ ≤ 1 := by
  rw [← integralModel_Δ_eq R W]
  exact valuation_le_one _ _

/-- The scale is constrained by the transformed c4, NOT by a fitted chart. -/
theorem inverse_scale_le_one (W : WeierstrassCurve K)
    (h4 : localVal R W.c₄ = 1) (C : VariableChange K)
    (hC : IsIntegral R (C • W)) :
    localVal R (↑C.u⁻¹ : K) ≤ 1 := by
  letI : IsIntegral R (C • W) := hC
  have hpow : (localVal R (↑C.u⁻¹ : K)) ^ 4 ≤ 1 := by
    simpa only [variableChange_c₄, map_mul, map_pow, h4, mul_one]
      using integral_c4_le_one R (C • W)
  by_contra hn
  have hgt : 1 < localVal R (↑C.u⁻¹ : K) := lt_of_not_ge hn
  have hs : localVal R (↑C.u⁻¹ : K) ≤ (localVal R (↑C.u⁻¹ : K)) ^ 4 := by
    apply le_self_pow hgt.le
    norm_num
  exact (not_lt_of_ge (hs.trans hpow)) hgt

/-- Full admissible-change comparison, including translations and shears. -/
theorem delta_value_le_of_c4_unit (W : WeierstrassCurve K)
    (h4 : localVal R W.c₄ = 1) (C : VariableChange K)
    (hC : IsIntegral R (C • W)) :
    localVal R (C • W).Δ ≤ localVal R W.Δ := by
  have hu := inverse_scale_le_one R W h4 C hC
  have hu12 : (localVal R (↑C.u⁻¹ : K)) ^ 12 ≤ 1 := by
    calc
      _ ≤ (1 : ℤᵐ⁰) ^ 12 := by gcongr
      _ = 1 := one_pow _
  rw [variableChange_Δ, map_mul, map_pow]
  simpa only [one_mul] using mul_le_mul_right' hu12 (localVal R W.Δ)

/-- Package an all-changes comparison as the PINNED IsMinimal predicate. -/
theorem minimal_of_dominates (W : WeierstrassCurve K) [hW : IsIntegral R W]
    (h : ∀ C : VariableChange K, IsIntegral R (C • W) →
      localVal R (C • W).Δ ≤ localVal R W.Δ) : IsMinimal R W := by
  constructor
  refine ⟨by simpa only [one_smul] using hW, ?_⟩
  intro C hC _
  letI : IsIntegral R (C • W) := hC
  change (valuation_Δ_aux R (C • W)).val ≤ (valuation_Δ_aux R (1 • W)).val
  simp only [one_smul, valuation_Δ_aux_eq_of_isIntegral]
  exact h C hC

theorem minimal_of_c4_value_one (W : WeierstrassCurve K) [IsIntegral R W]
    (h4 : localVal R W.c₄ = 1) : IsMinimal R W :=
  minimal_of_dominates R W (delta_value_le_of_c4_unit R W h4)

theorem minimal_of_delta_value_one (W : WeierstrassCurve K) [IsIntegral R W]
    (hΔ : localVal R W.Δ = 1) : IsMinimal R W := by
  apply minimal_of_dominates R W
  intro C hC
  letI : IsIntegral R (C • W) := hC
  rw [hΔ]
  exact integral_delta_le_one R (C • W)

/-- Use the supplied model itself as the integrality witness. -/
theorem model_integral (W : WeierstrassCurve R) :
    IsIntegral R (W.baseChange K) := ⟨⟨W, rfl⟩⟩

theorem minimal_of_unit_c4 (W : WeierstrassCurve R) (h4 : IsUnit W.c₄) :
    IsMinimal R (W.baseChange K) := by
  letI := model_integral R (K := K) W
  apply minimal_of_c4_value_one R
  simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_c₄] using
    (val_map_eq_one_iff R (K := K) W.c₄).mpr h4

theorem good_of_unit_delta (W : WeierstrassCurve R) (hΔ : IsUnit W.Δ) :
    HasGoodReduction R (W.baseChange K) := by
  letI := model_integral R (K := K) W
  have hv : localVal R (W.baseChange K).Δ = 1 := by
    simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ] using
      (val_map_eq_one_iff R (K := K) W.Δ).mpr hΔ
  exact ⟨minimal_of_delta_value_one R _ hv, hv⟩

/-- Nonunit discriminant plus unit c4 now yields ACTUAL multiplicative reduction. -/
theorem multiplicative_of_unit_c4 (W : WeierstrassCurve R)
    (h4 : IsUnit W.c₄) (hΔ : ¬ IsUnit W.Δ) :
    HasMultiplicativeReduction R (W.baseChange K) := by
  refine ⟨minimal_of_unit_c4 R W h4, ?_, ?_⟩
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ] using
      (val_map_lt_one_iff R (K := K) W.Δ).mpr hΔ
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_c₄] using
      (val_map_eq_one_iff R (K := K) W.c₄).mpr h4

end GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
