import GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification
import GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction
import GRWTSK.Analysis.Fourier.SignedPrimePhaseExamples

/-!
# Actual-source diagnostics and controller certificates

The energy observations in this file are literal integrals of `primeState`.
An interval enclosure contains proofs of its endpoints; no numeric accuracy
or computed enclosure is asserted without those proofs.  The signed baseline
is a separately defined finite cascade.  It recovers the Möbius cascade only
for the all-minus prime assignment.
-/

noncomputable section

open scoped BigOperators
open MeasureTheory Set

namespace PPNCP04.ActualDiagnostics

/-- A legal execution list contains every source prime exactly once. -/
structure PrimeExecutionOrder (T : ℝ) where
  primes : List ℕ
  nodup : primes.Nodup
  complete : primes.toFinset = primeInventory T

theorem PrimeExecutionOrder.every_note_is_prime {T : ℝ}
    (execution : PrimeExecutionOrder T) {p : ℕ} (hp : p ∈ execution.primes) :
    p.Prime := by
  have hfinset : p ∈ execution.primes.toFinset := List.mem_toFinset.mpr hp
  rw [execution.complete] at hfinset
  exact (Finset.mem_filter.mp hfinset).2

def prefixState (primes : List ℕ) (step : ℕ) : ℝ → ℝ :=
  primeState (primes.take step).toFinset

def orderEnergy (primes : List ℕ) (step : ℕ) (T : ℝ) : ℝ :=
  sourceEnergy (primes.take step).toFinset T

theorem orderEnergy_literal_integral (primes : List ℕ) (step : ℕ) (T : ℝ) :
    orderEnergy primes step T =
      ∫ u in Icc 0 T, prefixState primes step u ^ 2 := rfl

theorem orderEnergy_initial (primes : List ℕ) (T : ℝ) :
    orderEnergy primes 0 T = sourceEnergy ∅ T := by
  simp [orderEnergy]

theorem orderEnergy_nonnegative (primes : List ℕ) (step : ℕ) (T : ℝ) :
    0 ≤ orderEnergy primes step T := sourceEnergy_nonneg _ _

theorem orderEnergy_completed {primes : List ℕ} {T : ℝ}
    (hcomplete : primes.toFinset = primeInventory T) :
    orderEnergy primes primes.length T = energy T := by
  simpa [orderEnergy, hcomplete] using sourceEnergy_completed T

/-- A proof-bearing enclosure of an actual source integral. -/
structure EnergyEnclosure (primes : List ℕ) (step : ℕ) (T : ℝ) where
  lower : ℝ
  upper : ℝ
  lower_le_energy : lower ≤ orderEnergy primes step T
  energy_le_upper : orderEnergy primes step T ≤ upper

theorem EnergyEnclosure.consistent {primes : List ℕ} {step : ℕ} {T : ℝ}
    (interval : EnergyEnclosure primes step T) : interval.lower ≤ interval.upper :=
  interval.lower_le_energy.trans interval.energy_le_upper

theorem EnergyEnclosure.contains_literal_integral
    {primes : List ℕ} {step : ℕ} {T : ℝ}
    (interval : EnergyEnclosure primes step T) :
    interval.lower ≤ (∫ u in Icc 0 T, prefixState primes step u ^ 2) ∧
      (∫ u in Icc 0 T, prefixState primes step u ^ 2) ≤ interval.upper :=
  ⟨interval.lower_le_energy, interval.energy_le_upper⟩

/-- The finite maximum includes the empty prefix and the completed list. -/
def maxIntermediateEnergy (primes : List ℕ) (T : ℝ) : ℝ :=
  (Finset.range (primes.length + 1)).sup' (by simp)
    (fun step => orderEnergy primes step T)

theorem orderEnergy_le_max {primes : List ℕ} {step : ℕ} {T : ℝ}
    (hstep : step ≤ primes.length) :
    orderEnergy primes step T ≤ maxIntermediateEnergy primes T := by
  unfold maxIntermediateEnergy
  exact Finset.le_sup' (fun step => orderEnergy primes step T)
    (by simp only [Finset.mem_range]; omega)

theorem maxIntermediateEnergy_nonnegative (primes : List ℕ) (T : ℝ) :
    0 ≤ maxIntermediateEnergy primes T :=
  (orderEnergy_nonnegative primes 0 T).trans (orderEnergy_le_max (by omega))

theorem maxIntermediateEnergy_le_of_prefix_bounds
    {primes : List ℕ} {T bound : ℝ}
    (hbounds : ∀ step ≤ primes.length, orderEnergy primes step T ≤ bound) :
    maxIntermediateEnergy primes T ≤ bound := by
  unfold maxIntermediateEnergy
  rw [Finset.sup'_le_iff]
  intro step hstep
  exact hbounds step (by simpa only [Finset.mem_range, Nat.lt_add_one_iff] using hstep)

def maxIntermediateAmplification (primes : List ℕ) (T : ℝ) : ℝ :=
  maxIntermediateEnergy primes T / max 1 (orderEnergy primes 0 T)

/-- This records a source-energy decrease only when the literal inequality
is proved.  The definition asserts no automatic later cancellation. -/
def LaterCancellation (primes : List ℕ) (first later : ℕ) (T : ℝ) : Prop :=
  first < later ∧ later ≤ primes.length ∧
    orderEnergy primes later T < orderEnergy primes first T

structure PrimeSignAssignment (P : Finset ℕ) where
  sign : ℕ → ℝ
  on_block : ∀ p ∈ P, sign p = -1 ∨ sign p = 1

/-- A randomized-prime-sign baseline is a different finite arithmetic
object.  The minus in `cascade` is compensated so `sign p` is the actual
single-prime coefficient of this baseline. -/
def signBaselineState (P : Finset ℕ) (sign : ℕ → ℝ) : ℝ → ℝ :=
  ASBNP04.FiniteProduct.cascade
    (fun p => -sign p * ASBNP04.FiniteProduct.primeWeight p)
    ASBNP04.FiniteProduct.primeDelay P.toList
    ASBNP04.FiniteProduct.baseWave

def signBaselineEnergy (P : Finset ℕ) (sign : ℕ → ℝ) (T : ℝ) : ℝ :=
  ∫ u in Icc 0 T, signBaselineState P sign u ^ 2

theorem signBaselineEnergy_nonnegative (P : Finset ℕ)
    (sign : ℕ → ℝ) (T : ℝ) : 0 ≤ signBaselineEnergy P sign T :=
  integral_nonneg (fun _u => sq_nonneg _)

theorem all_minus_baseline_is_actual (P : Finset ℕ) :
    signBaselineState P (fun _p => -1) = primeState P := by
  simp [signBaselineState, primeState, ASBNP04.FiniteProduct.primeState]

theorem all_minus_baseline_energy_is_actual (P : Finset ℕ) (T : ℝ) :
    signBaselineEnergy P (fun _p => -1) T = sourceEnergy P T := by
  simp [signBaselineEnergy, sourceEnergy, all_minus_baseline_is_actual]

/-- A finite realized controller.  A remainder is optional and, if present,
is the last block.  The upper cutoff applies to every block. -/
structure AdmissibleController (T η : ℝ) where
  horizon_nonnegative : 0 ≤ T
  eta_positive : 0 < η
  blockCount : ℕ
  blocks : Fin blockCount → Finset ℕ
  remainder : Option (Fin blockCount)
  remainder_last : ∀ j, remainder = some j → j.val + 1 = blockCount
  blocks_subset : ∀ j, blocks j ⊆ primeInventory T
  pairwise_disjoint : Pairwise (fun i j => Disjoint (blocks i) (blocks j))
  covers : ∀ p, p ∈ primeInventory T ↔ ∃ j, p ∈ blocks j
  mass_upper : ∀ j, PPNCP04.Obstruction.harmonicMass (blocks j) ≤ η
  mass_lower_regular : ∀ j, remainder ≠ some j →
    η / 2 ≤ PPNCP04.Obstruction.harmonicMass (blocks j)

theorem AdmissibleController.exactly_once {T η : ℝ}
    (controller : AdmissibleController T η) {p : ℕ}
    (hp : p ∈ primeInventory T) : ∃! j, p ∈ controller.blocks j := by
  obtain ⟨j, hj⟩ := (controller.covers p).mp hp
  refine ⟨j, hj, ?_⟩
  intro k hk
  by_contra hne
  have hd := controller.pairwise_disjoint hne
  exact Finset.disjoint_left.mp hd hk hj

theorem AdmissibleController.union_complete {T η : ℝ}
    (controller : AdmissibleController T η) :
    Finset.univ.biUnion controller.blocks = primeInventory T := by
  ext p
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and]
  exact (controller.covers p).symm

theorem AdmissibleController.total_mass_is_inventory_mass {T η : ℝ}
    (controller : AdmissibleController T η) :
    (∑ j, PPNCP04.Obstruction.harmonicMass (controller.blocks j)) =
      PPNCP04.Obstruction.harmonicMass (primeInventory T) := by
  have hdisjoint : Set.PairwiseDisjoint
      (↑(Finset.univ : Finset (Fin controller.blockCount))) controller.blocks := by
    intro i hi j hj hne
    exact controller.pairwise_disjoint hne
  have hsum := Finset.sum_biUnion (f := fun p : ℕ => 1 / (p : ℝ)) hdisjoint
  rw [controller.union_complete] at hsum
  simpa [PPNCP04.Obstruction.harmonicMass] using hsum.symm

theorem AdmissibleController.every_note_is_prime {T η : ℝ}
    (controller : AdmissibleController T η) {j : Fin controller.blockCount} {p : ℕ}
    (hp : p ∈ controller.blocks j) : p.Prime := by
  have hinventory := controller.blocks_subset j hp
  exact (Finset.mem_filter.mp hinventory).2

theorem no_small_eta_controller {T η : ℝ}
    (hT : Real.log 2 ≤ T) (hη : η < 1 / 2) :
    ¬ Nonempty (AdmissibleController T η) := by
  rintro ⟨controller⟩
  have hexp : (2 : ℝ) ≤ Real.exp T := by
    have he := Real.exp_le_exp.mpr hT
    simpa [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using he
  have h2integer : 2 ∈ integerInventory T :=
    mem_integerInventory.mpr ⟨by norm_num, hexp⟩
  have h2inventory : 2 ∈ primeInventory T :=
    Finset.mem_filter.mpr ⟨h2integer, Nat.prime_two⟩
  obtain ⟨j, hj⟩ := (controller.covers 2).mp h2inventory
  exact PPNCP04.Diagnostics.prime_two_small_cutoff_rejected hj hη
    (controller.mass_upper j)

/-- Optional order-preservation predicate for a controller that declares
increasing-prime execution.  It is not silently imposed on every order. -/
def IncreasingPrimeOrder {T η : ℝ} (controller : AdmissibleController T η) : Prop :=
  ∀ i j, i < j → ∀ p ∈ controller.blocks i, ∀ q ∈ controller.blocks j, p < q

end PPNCP04.ActualDiagnostics

#print axioms PPNCP04.ActualDiagnostics.orderEnergy_completed
#print axioms PPNCP04.ActualDiagnostics.EnergyEnclosure.contains_literal_integral
#print axioms PPNCP04.ActualDiagnostics.orderEnergy_le_max
#print axioms PPNCP04.ActualDiagnostics.all_minus_baseline_energy_is_actual
#print axioms PPNCP04.ActualDiagnostics.AdmissibleController.exactly_once
#print axioms PPNCP04.ActualDiagnostics.AdmissibleController.union_complete
#print axioms PPNCP04.ActualDiagnostics.AdmissibleController.total_mass_is_inventory_mass
#print axioms PPNCP04.ActualDiagnostics.no_small_eta_controller
