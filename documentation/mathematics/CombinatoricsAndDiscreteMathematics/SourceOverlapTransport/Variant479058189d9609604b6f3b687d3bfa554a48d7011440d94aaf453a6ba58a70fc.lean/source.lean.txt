import SourceRefinement

/-!
Exact ambient synthesis for literal overlap transport. Each source, coefficient,
and inventory change remains explicit. The inventories need not be nested, and
the four-channel generators need not be independent. These are identities in
the actual complex Lebesgue L² space, not an estimate for the signed readout.
Direction: grwtsk contributors; construction: OpenAI Codex.
-/

noncomputable section
namespace FormalResearch.MutationGame.SourceOverlapTransport

open Matrix SourceRefinement ArithmeticDefect
open FormalResearch.RiemannHypothesis
open SourceArithmeticOrbit SourceOrbitCoordinates SourceReflectionDuality
open SourceWeightedOrbitAdapter SourceUpperBoundaryEvent SourceSamplingLedger
open SourceReflectionArithmetic SourceVaughanHankel SourcePureRotationObstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource
open scoped BigOperators

/-- The existing retention matrix restricts any literal channel to the old
inventory; no containment between the two inventories is needed. -/
theorem retention_embedChannel (I J : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    retentionMatrix I J *ᵥ embedChannel I ε δ c =
      embedChannel J ε δ (fun m => if m ∈ I then c m else 0) := by
  classical
  funext k
  rw [retentionMatrix_apply]
  by_cases hm : k.2.2.val ∈ I
  · simp [hm, embedChannel]
  · simp [hm, embedChannel]

/-- A restricted profile is exactly its inventory intersection. -/
theorem finiteProfile_restrict (q : ComplexL2) (I J : Finset ℕ)
    (ε δ : Bool) (c : ℕ → ℂ) :
    finiteProfile q J ε δ (fun m => if m ∈ I then c m else 0) =
      finiteProfile q (I ∩ J) ε δ c := by
  classical
  simp only [finiteProfile, ite_smul, zero_smul]
  rw [← Finset.sum_filter]
  congr 1
  ext m
  simp [and_comm]

/-- Retained channel synthesis is the exact overlap profile in the actual
Hilbert space, even when channel generators are dependent. -/
theorem synthesis_retention_embedChannel (q : ComplexL2) (I J : Finset ℕ)
    (ε δ : Bool) (c : ℕ → ℂ) :
    synthesis q J (retentionMatrix I J *ᵥ embedChannel I ε δ c) =
      finiteProfile q (I ∩ J) ε δ c := by
  rw [retention_embedChannel, synthesis_embedChannel, finiteProfile_restrict]

/-- Actual translation and angular duality are linear in the source. -/
theorem orbitAtom_source_sub (qB qA : ComplexL2) (ε δ : Bool) (m : ℕ) :
    orbitAtom (qB - qA) ε δ m = orbitAtom qB ε δ m - orbitAtom qA ε δ m := by
  cases δ <;> simp [orbitAtom, map_sub]

/-- Source changes commute with finite channel synthesis. -/
theorem finiteProfile_source_sub (qB qA : ComplexL2) (I : Finset ℕ)
    (ε δ : Bool) (c : ℕ → ℂ) :
    finiteProfile (qB - qA) I ε δ c =
      finiteProfile qB I ε δ c - finiteProfile qA I ε δ c := by
  simp only [finiteProfile, orbitAtom_source_sub, smul_sub, Finset.sum_sub_distrib]

/-- Changing coefficients retains their literal difference. -/
theorem finiteProfile_coefficient_sub (q : ComplexL2) (I : Finset ℕ)
    (ε δ : Bool) (cB cA : ℕ → ℂ) :
    finiteProfile q I ε δ (fun m => cB m - cA m) =
      finiteProfile q I ε δ cB - finiteProfile q I ε δ cA := by
  simp only [finiteProfile, sub_smul, Finset.sum_sub_distrib]

/-- Partition a profile into its retained and removed arithmetic labels. -/
theorem finiteProfile_inter_sdiff (q : ComplexL2) (I J : Finset ℕ)
    (ε δ : Bool) (c : ℕ → ℂ) :
    finiteProfile q I ε δ c =
      finiteProfile q (I ∩ J) ε δ c + finiteProfile q (I \ J) ε δ c := by
  classical
  unfold finiteProfile
  simpa only [Finset.filter_mem_eq_inter, Finset.filter_notMem_eq_sdiff] using
    (Finset.sum_filter_add_sum_filter_not I (fun m => m ∈ J)
    (fun m => c m • orbitAtom q ε δ m)).symm

/-- Moving the source during retention produces its exact overlap change and
the removed old profile; retention does not transport the old source itself. -/
theorem retained_source_change (qB qA : ComplexL2) (I J : Finset ℕ)
    (ε δ : Bool) (c : ℕ → ℂ) :
    synthesis qB J (retentionMatrix I J *ᵥ embedChannel I ε δ c) -
        synthesis qA I (embedChannel I ε δ c) =
      finiteProfile (qB - qA) (I ∩ J) ε δ c -
        finiteProfile qA (I \ J) ε δ c := by
  rw [synthesis_retention_embedChannel, synthesis_embedChannel,
    finiteProfile_source_sub, finiteProfile_inter_sdiff qA I J]
  abel

/-- A coefficient increment consists of the changed overlap coefficients and
all newly included labels, synthesized with the chosen current source. -/
theorem synthesis_coefficient_increment (q : ComplexL2) (I J : Finset ℕ)
    (ε δ : Bool) (cB cA : ℕ → ℂ) :
    synthesis q J (embedChannel J ε δ cB -
        retentionMatrix I J *ᵥ embedChannel I ε δ cA) =
      finiteProfile q (I ∩ J) ε δ (fun m => cB m - cA m) +
        finiteProfile q (J \ I) ε δ cB := by
  rw [map_sub, synthesis_embedChannel, synthesis_retention_embedChannel,
    finiteProfile_coefficient_sub, finiteProfile_inter_sdiff q J I,
    Finset.inter_comm J I]
  abel

/-- The exact ambient endpoint difference separates source change on retained
labels, coefficient change, added labels, and removed labels. -/
theorem synthesis_endpoint_change (qB qA : ComplexL2) (I J : Finset ℕ)
    (ε δ : Bool) (cB cA : ℕ → ℂ) :
    synthesis qB J (embedChannel J ε δ cB) -
        synthesis qA I (embedChannel I ε δ cA) =
      finiteProfile (qB - qA) (I ∩ J) ε δ cA +
        finiteProfile qB (I ∩ J) ε δ (fun m => cB m - cA m) +
        finiteProfile qB (J \ I) ε δ cB -
        finiteProfile qA (I \ J) ε δ cA := by
  rw [synthesis_embedChannel, synthesis_embedChannel,
    finiteProfile_source_sub, finiteProfile_coefficient_sub,
    finiteProfile_inter_sdiff qB J I, finiteProfile_inter_sdiff qA I J,
    Finset.inter_comm J I]
  abel

/-- The actual Mangoldt increment is precisely the new-label profile. -/
theorem firstIncrement_synthesis (q : ComplexL2) (A B : ℝ) :
    synthesis q (longInventory B) (firstIncrement A B) =
      finiteProfile q (longInventory B \ longInventory A) false false
        mangoldtCoefficient := by
  unfold firstIncrement firstAt transportAt mangoldtCoordinates
  rw [synthesis_coefficient_increment]
  simp [finiteProfile]

/-- The centered increment includes the exact cutoff-driven coefficient change
on retained labels as well as the newly included centered rows. -/
theorem secondIncrement_synthesis (q : ComplexL2) (A B : ℝ) :
    synthesis q (longInventory B) (secondIncrement A B) =
      finiteProfile q (longInventory A ∩ longInventory B) false false
        (fun m => centeredCoefficient (vaughanCutoff B) m -
          centeredCoefficient (vaughanCutoff A) m) +
        finiteProfile q (longInventory B \ longInventory A) false false
          (centeredCoefficient (vaughanCutoff B)) := by
  unfold secondIncrement secondAt transportAt centeredCoordinates
  exact synthesis_coefficient_increment q _ _ false false _ _

/-- The literal normalized Mangoldt-state change keeps the actual q_B-q_A,
new arithmetic rows and removed arithmetic rows. -/
theorem literal_first_endpoint_change (A B : ℝ) (hA : 1 ≤ A) (hB : 1 ≤ B) :
    synthesis (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B) (firstAt B) -
      synthesis (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A) (firstAt A) =
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB) -
          originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A ∩ longInventory B) false false mangoldtCoefficient +
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B \ longInventory A) false false mangoldtCoefficient -
      finiteProfile (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A \ longInventory B) false false mangoldtCoefficient := by
  unfold firstAt mangoldtCoordinates
  rw [synthesis_endpoint_change]
  simp [finiteProfile]

/-- The distinct literal centered state pays both the source change and the
exact cutoff-driven beta change, together with added and removed labels. -/
theorem literal_second_endpoint_change (A B : ℝ) (hA : 1 ≤ A) (hB : 1 ≤ B) :
    synthesis (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B) (secondAt B) -
      synthesis (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A) (secondAt A) =
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB) -
          originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A ∩ longInventory B) false false
          (centeredCoefficient (vaughanCutoff A)) +
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory A ∩ longInventory B) false false
          (fun m => centeredCoefficient (vaughanCutoff B) m -
            centeredCoefficient (vaughanCutoff A) m) +
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B \ longInventory A) false false
          (centeredCoefficient (vaughanCutoff B)) -
      finiteProfile (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A \ longInventory B) false false
          (centeredCoefficient (vaughanCutoff A)) := by
  unfold secondAt centeredCoordinates
  exact synthesis_endpoint_change _ _ _ _ false false _ _

end FormalResearch.MutationGame.SourceOverlapTransport
