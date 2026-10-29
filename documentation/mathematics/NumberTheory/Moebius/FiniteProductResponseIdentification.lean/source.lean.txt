import GRWTSK.NumberTheory.Moebius.LogarithmicResponse
import GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct

/-! The finite prime cascade is identified with the literal P04 source.
No external framework energy is substituted for the time Gram kernel.
-/
noncomputable section
open scoped BigOperators
open MeasureTheory Set
namespace PPNCP04

theorem primeInventory_eq (T : ℝ) :
    primeInventory T = Nat.primesLE ⌊Real.exp T⌋₊ := by
  exact (Nat.primesLE_eq_filter_Icc_one _).symm

def primeState (P : Finset ℕ) : ℝ → ℝ :=
  ASBNP04.FiniteProduct.primeState P

def sourceEnergy (P : Finset ℕ) (T : ℝ) : ℝ :=
  ∫ u in Icc 0 T, primeState P u ^ 2

theorem atom_source_bridge (n : ℕ) :
    ASBNP04.FiniteProduct.atom n = atom n := rfl

theorem completed_pickup_identification (T u : ℝ) (hu : u ≤ T) :
    primeState (primeInventory T) u = pickup T u := by
  rw [primeInventory_eq]
  exact ASBNP04.FiniteProduct.completed_pickup_identification T u hu

theorem completed_pickup_restriction (T : ℝ) :
    restrict T (primeState (primeInventory T)) = restrict T (pickup T) := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T
  · simp [restrict, hu, completed_pickup_identification T u hu.2]
  · simp [restrict, hu]

theorem sourceEnergy_completed (T : ℝ) :
    sourceEnergy (primeInventory T) T = energy T := by
  unfold sourceEnergy energy
  apply setIntegral_congr_fun measurableSet_Icc
  intro u hu
  change primeState (primeInventory T) u ^ 2 = pickup T u ^ 2
  rw [completed_pickup_identification T u hu.2]

theorem primeState_empty : primeState ∅ = baseWave := by
  funext u
  simp only [primeState, ASBNP04.FiniteProduct.primeState,
    Finset.toList_empty, ASBNP04.FiniteProduct.cascade, List.foldr_nil]
  rfl

theorem sourceEnergy_nonneg (P : Finset ℕ) (T : ℝ) :
    0 ≤ sourceEnergy P T := integral_nonneg (fun _u => sq_nonneg _)

theorem baseWave_eq_atom_one : baseWave = atom 1 := by
  funext u
  simp [baseWave, atom]

theorem sourceEnergy_empty_bound {T : ℝ} (hT : 0 ≤ T) :
    sourceEnergy ∅ T ≤ 4*T := by
  rw [sourceEnergy, primeState_empty, baseWave_eq_atom_one]
  have hi : IntegrableOn (fun u => atom 1 u ^ 2) (Icc 0 T) :=
    ((atom_continuous (by decide : 0 < 1)).pow 2).integrableOn_Icc
  have hc : IntegrableOn (fun _u : ℝ => (4 : ℝ)) (Icc 0 T) :=
    continuous_const.integrableOn_Icc
  have hbound : ∀ u ∈ Icc 0 T, atom 1 u ^ 2 ≤ 4 := by
    intro u hu
    have hlow := atom_nonneg (by decide : 0 < 1) u
    have hup : atom 1 u ≤ 2 := by
      simp only [atom, Nat.cast_one, Real.log_one, if_pos hu.1, Real.sqrt_one, inv_one]
      nlinarith [Real.exp_pos (-u/2)]
    nlinarith
  calc
    (∫ u in Icc 0 T, atom 1 u ^ 2) ≤ ∫ _u in Icc 0 T, (4 : ℝ) :=
      setIntegral_mono_on hi hc measurableSet_Icc hbound
    _ = 4*T := by
      rw [setIntegral_const, Real.volume_real_Icc_of_le hT]
      simp
      ring

end PPNCP04

#print axioms PPNCP04.completed_pickup_identification
#print axioms PPNCP04.sourceEnergy_completed
