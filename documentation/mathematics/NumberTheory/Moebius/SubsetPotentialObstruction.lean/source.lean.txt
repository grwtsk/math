import GRWTSK.Analysis.AsymptoticAnalysis.PrimeSubsetPotentialBounds
import GRWTSK.NumberTheory.PrimeCounting.PrimeIntervalResponseEnergyGrowth
import GRWTSK.Analysis.AsymptoticAnalysis.SelectedPrimeChainBounds

/-! Rigorous counterexample to the universal all-prime-subsets AS interface.
The actual signed state contains only primes above exp(3T/4), so every
composite delay is beyond the horizon and its energy has exponential growth.
Universal AS would force that same source state to have polynomial energy.
This refutes the interface, not the completed full-prime Möbius pickup or RH.
The selected-completion-chain replacement is sufficient, but remains open.
-/
noncomputable section
namespace EulerP04RH.ASRefutation
open PPNCP04

/-- No reserve satisfying even the stated nonnegative initial-budget fields
can pay universal AS on all actual source-generated prime subsets. -/
theorem universal_AS_refuted : ¬ UniversalASConstructionObligation := by
  rintro ⟨A,C,q,η,hAS⟩
  obtain ⟨K,R,_hK,_hR,hupper⟩ :=
    ASSubsetClosure.AS_implies_threeQuarterBand_eventual_polynomial A C q η hAS
  exact Obstruction.exponential_input_not_polynomial
    BandGrowth.growthConstant_positive BandGrowth.actual_band_energy_exponential hupper

/-- Each fixed proposal with legal constants has an actual admissible failure.
The state is the declared `primeState P`, the block action keeps Möbius parity,
and the failed inequality is exactly the parent AS proposition. -/
theorem exists_actual_failed_AS_step (A : ReserveFunctional) (C q η : ℝ)
    (hC : 0 ≤ C) (hq : 0 ≤ q) (hη : 0 < η) :
    ∃ (T : ℝ) (P B : Finset ℕ), AdmissibleBlock P B T η ∧
      Real.exp (C*harmonicMass B)*potential A P T+C*harmonicMass B*(1+T)^q <
        potential A (P ∪ B) T := by
  classical
  by_contra h
  apply universal_AS_refuted
  refine ⟨A,C,q,η,hC,hq,hη,?_⟩
  intro T P B hadmissible
  apply le_of_not_gt
  intro hfail
  exact h ⟨T,P,B,hadmissible,hfail⟩

/-- The weaker replacement still returns the immutable literal terminal. -/
theorem chain_replacement_implies_literal_RH
    (constructed : ChainOnlyAS.Construction) : _root_.RiemannHypothesis :=
  ChainOnlyAS.construction_implies_literal_RH constructed

end EulerP04RH.ASRefutation

#print axioms EulerP04RH.ASRefutation.universal_AS_refuted
#print axioms EulerP04RH.ASRefutation.exists_actual_failed_AS_step
