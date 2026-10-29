import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Topology.Piecewise
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject

set_option autoImplicit false
namespace FrozenSourceTransferScratch
open Filter Set FixedSourceFilterScratch
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- The pointwise transfer product, whose value at the zeta pole is not the repaired value. -/
def transferProduct (z : ℂ) : ℂ :=
  Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z

/-- The nonzero removed-pole value is obtained from the actual source's simple-zero slope. -/
def removedPoleValue : ℂ := Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ)

/-- Translation carries the source puncture to the zeta puncture. -/
theorem positive_pole_shift_tendsto :
    Tendsto (fun z : ℂ ↦ 1 / 2 + z) (𝓝[≠] (1 / 2)) (𝓝[≠] 1) := by
  apply tendsto_nhdsWithin_iff.mpr
  constructor
  · have h : Tendsto (fun z : ℂ ↦ (1 / 2 : ℂ) + z)
        (𝓝[≠] (1 / 2)) (𝓝 ((1 / 2 : ℂ) + 1 / 2)) :=
      tendsto_const_nhds.add (tendsto_id.mono_left nhdsWithin_le_nhds)
    convert h using 1
    norm_num
  · filter_upwards [self_mem_nhdsWithin] with z hz
    simp only [mem_compl_iff, mem_singleton_iff] at hz ⊢
    intro h
    apply hz
    linear_combination h

/-- The residue-one theorem is transported to the actual shifted source variable. -/
theorem shifted_zeta_residue :
    Tendsto (fun z : ℂ ↦ (z - 1 / 2) * riemannZeta (1 / 2 + z))
      (𝓝[≠] (1 / 2)) (𝓝 1) := by
  convert riemannZeta_residue_one.comp positive_pole_shift_tendsto using 1
  funext z
  simp only [Function.comp_apply]
  congr 1
  ring

/-- The actual product has a genuine punctured limit, using both source slope and zeta residue. -/
theorem transferProduct_removed_pole_limit :
    Tendsto transferProduct (𝓝[≠] (1 / 2)) (𝓝 removedPoleValue) := by
  have he : Tendsto (fun z : ℂ ↦ Complex.exp (-z))
      (𝓝[≠] (1 / 2)) (𝓝 (Complex.exp (-(1 / 2 : ℂ)))) :=
    (Complex.continuous_exp.comp continuous_neg).continuousAt.tendsto.mono_left
      nhdsWithin_le_nhds
  have hp := (he.mul shifted_zeta_residue).mul V_removed_pole_limit
  simp only [mul_one] at hp
  apply hp.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  have hz' : z - 1 / 2 ≠ 0 := sub_ne_zero.mpr hz
  unfold transferProduct
  rw [show V z / (z - 1 / 2) = V z * (z - 1 / 2)⁻¹ by rw [div_eq_mul_inv]]
  calc
    _ = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z *
        ((z - 1 / 2) * (z - 1 / 2)⁻¹) := by ring
    _ = _ := by rw [mul_inv_cancel₀ hz', mul_one]

/-- Repair exactly the source pole, leaving every other transfer-product value untouched. -/
def repairedTransfer : ℂ → ℂ := by
  classical
  exact Function.update transferProduct (1 / 2) removedPoleValue

/-- The repaired transfer has precisely the prescribed pole value. -/
theorem repairedTransfer_at_pole : repairedTransfer (1 / 2) = removedPoleValue := by
  classical
  simp [repairedTransfer]

/-- Away from the pole, the original complex product is retained verbatim. -/
theorem repairedTransfer_eq_product (z : ℂ) (hz : z ≠ 1 / 2) :
    repairedTransfer z = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := by
  classical
  simp only [repairedTransfer, Function.update_of_ne hz, transferProduct]

/-- The repaired value makes the actual transfer genuinely continuous at the removed pole. -/
theorem repairedTransfer_continuousAt_pole : ContinuousAt repairedTransfer (1 / 2) := by
  classical
  exact continuousAt_update_same.mpr transferProduct_removed_pole_limit

/-- The pole cancellation produces a nonzero value, rather than a retained artificial zero. -/
theorem removedPoleValue_ne_zero : removedPoleValue ≠ 0 := by
  apply mul_ne_zero (Complex.exp_ne_zero _)
  exact_mod_cast positivePoleSlope_pos.ne'

/-- In particular, the repaired transfer cannot vanish at the pole. -/
theorem repairedTransfer_pole_ne_zero : repairedTransfer (1 / 2) ≠ 0 := by
  rw [repairedTransfer_at_pole]
  exact removedPoleValue_ne_zero

/-- A genuine zeta zero away from its pole gives a zero of the repaired source transfer. -/
theorem repairedTransfer_zero_of_zeta_zero (ρ : ℂ) (hρ : riemannZeta ρ = 0)
    (hρ1 : ρ ≠ 1) : repairedTransfer (ρ - 1 / 2) = 0 := by
  have hz : ρ - 1 / 2 ≠ 1 / 2 := by
    intro h
    apply hρ1
    linear_combination h
  rw [repairedTransfer_eq_product _ hz]
  rw [show (1 / 2 : ℂ) + (ρ - 1 / 2) = ρ by ring, hρ]
  simp

/-- The unchanged nontrivial-zero predicate supplies all required zero and pole guards. -/
theorem repairedTransfer_zero_of_nontrivial (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) :
    repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_zeta_zero ρ hρ.1 hρ.2.2

/-- Every occurrence retains its own source zero, including every analytic multiplicity slot. -/
theorem repairedTransfer_zero_occurrence (o : ZeroObject.ZeroOccurrence) :
    repairedTransfer (ZeroObject.shiftedValue o) = 0 := by
  rw [repairedTransfer_eq_product _ (ZeroObject.shiftedValue_ne_half o)]
  rw [show (1 / 2 : ℂ) + ZeroObject.shiftedValue o = o.1.val by
    unfold ZeroObject.shiftedValue; ring, o.1.property.1]
  simp

/-- Any finite-valued replacement of zeta retains the source's zero at the pole. -/
theorem finite_factor_product_at_pole (E : ℂ → ℂ) :
    Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2) = 0 := by
  rw [V_positive_pole_zero, mul_zero]

/-- A continuous finite factor has zero product limit and cannot provide the repaired pole value. -/
theorem finite_factor_product_limit (E : ℂ → ℂ) (hE : ContinuousAt E (1 / 2)) :
    Tendsto (fun z : ℂ ↦ Complex.exp (-z) * E z * V z)
      (𝓝 (1 / 2)) (𝓝 0) := by
  have h := ((Complex.continuous_exp.comp continuous_neg).continuousAt.tendsto.mul
    hE.tendsto).mul V_hasDerivAt_positive_pole.continuousAt.tendsto
  simpa only [V_positive_pole_zero, mul_zero, Function.comp_apply] using h

/-- The entire discrepancy at the removed pole persists for every finite-valued factor. -/
theorem finite_factor_pole_discrepancy (E : ℂ → ℂ) :
    ‖repairedTransfer (1 / 2) -
      Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2)‖ =
      ‖removedPoleValue‖ := by
  rw [repairedTransfer_at_pole, finite_factor_product_at_pole, sub_zero]

end
end FrozenSourceTransferScratch
