/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling

/-!
# Conditional exposure of one part of a uniform finite partition

Condition on a retained element belonging to a specified part of an ordered
partition with prescribed sizes. Removing that element leaves the uniform
fixed-size subset of the other ambient elements. All partition and conditional
sample spaces are explicitly finite. Equal fibers are proved by relabeling
whole partitions, rather than assumed as a sampling-law field.
-/

namespace GRWTSK.ConditionalPartitionExposure
open scoped BigOperators
open GRWTSK.BalancedPartitionSampling
noncomputable section
attribute [local instance] Classical.propDecidable

variable {A : Type*} [Fintype A] {m : ℕ}

/-- Relabel the ambient elements of an actual partition. -/
def relabelPartition {sizes : Fin m → ℕ} (e : Equiv.Perm A)
    (P : Partition (A := A) sizes) : Partition (A := A) sizes := by
  refine ⟨fun a => P.val (e.symm a), fun i => ?_⟩
  let ei : {a : A // P.val (e.symm a) = i} ≃ {a : A // P.val a = i} :=
    { toFun := fun a => ⟨e.symm a.val, a.property⟩
      invFun := fun a => ⟨e a.val, by simpa using a.property⟩
      left_inv := by intro a; apply Subtype.ext; simp
      right_inv := by intro a; apply Subtype.ext; simp }
  exact (Fintype.card_congr ei).trans (P.property i)

@[simp] theorem relabelPartition_symm {sizes : Fin m → ℕ} (e : Equiv.Perm A)
    (P : Partition (A := A) sizes) : relabelPartition e.symm (relabelPartition e P) = P := by
  apply Subtype.ext
  funext a
  simp [relabelPartition]

def relabelPartitionEquiv {sizes : Fin m → ℕ} (e : Equiv.Perm A) :
    Partition (A := A) sizes ≃ Partition (A := A) sizes where
  toFun := relabelPartition e
  invFun := relabelPartition e.symm
  left_inv := relabelPartition_symm e
  right_inv := by intro P; simpa using relabelPartition_symm e.symm P

@[simp] theorem part_relabelPartition {sizes : Fin m → ℕ} (e : Equiv.Perm A)
    (P : Partition (A := A) sizes) (i : Fin m) :
    part (relabelPartition e P) i = (part P i).map e.toEmbedding := by
  ext a
  simp only [mem_part, Finset.mem_map, Equiv.toEmbedding_apply]
  constructor
  · intro ha
    exact ⟨e.symm a, ha, e.apply_symm_apply a⟩
  · rintro ⟨b, hb, rfl⟩
    simpa [relabelPartition] using hb

abbrev PartFiber (sizes : Fin m → ℕ) (i : Fin m) (R : Finset A) :=
  {P : Partition (A := A) sizes // part P i = R}

/-- Actual whole-part sample fibers are carried bijectively by any ambient
permutation taking one prescribed part to the other. -/
def partFiberEquiv (sizes : Fin m → ℕ) (i : Fin m) (R T : Finset A)
    (e : Equiv.Perm A) (he : R.map e.toEmbedding = T) :
    PartFiber sizes i R ≃ PartFiber sizes i T :=
  (relabelPartitionEquiv e).subtypeEquiv (fun P => by
    change part P i = R ↔ part (relabelPartition e P) i = T
    rw [part_relabelPartition, ← he]
    exact ⟨fun h => congrArg (Finset.map e.toEmbedding) h,
      fun h => Finset.map_injective e.toEmbedding h⟩)

theorem partFiber_card_eq (sizes : Fin m → ℕ) (i : Fin m) (R T : Finset A)
    (h : R.card = T.card) :
    Fintype.card (PartFiber sizes i R) = Fintype.card (PartFiber sizes i T) := by
  obtain ⟨e, he⟩ := Equiv.Perm.exists_map_finset_eq R T h
  exact Fintype.card_congr (partFiberEquiv sizes i R T e he)

/-- The finite conditional sample space: the retained element belongs to the
specified part. Uniform counting on this subtype is the conditional uniform law. -/
abbrev ConditionedPartition (sizes : Fin m → ℕ) (a : A) (i : Fin m) :=
  {P : Partition (A := A) sizes // P.val a = i}

/-- The unexposed elements of the retained element's part. -/
def remainder {sizes : Fin m → ℕ} {a : A} {i : Fin m}
    (P : ConditionedPartition sizes a i) : Finset A := (part P.val i).erase a

/-- Exactly the possible values of the unexposed remainder. -/
def remainderSpace (sizes : Fin m → ℕ) (a : A) (i : Fin m) : Finset (Finset A) :=
  ((Finset.univ : Finset A).erase a).powersetCard (sizes i - 1)

theorem remainder_mem_space {sizes : Fin m → ℕ} {a : A} {i : Fin m}
    (P : ConditionedPartition sizes a i) : remainder P ∈ remainderSpace sizes a i := by
  apply Finset.mem_powersetCard.mpr
  constructor
  · intro b hb
    exact Finset.mem_erase.mpr ⟨(Finset.mem_erase.mp hb).1, Finset.mem_univ _⟩
  · rw [remainder, Finset.card_erase_of_mem ((mem_part P.val i a).mpr P.property), part_card]

/-- Feasibility of the conditional sample space is proved by a real partition
and a transposition carrying one member of its part to the retained element. -/
theorem conditionedPartition_nonempty (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (a : A) (i : Fin m)
    (hi : 0 < sizes i) : Nonempty (ConditionedPartition sizes a i) := by
  obtain ⟨P⟩ := partition_nonempty sizes hsum
  have hpart : (part P i).Nonempty := Finset.card_pos.mp (by simpa using hi)
  obtain ⟨b, hb⟩ := hpart
  refine ⟨⟨relabelPartition (Equiv.swap b a) P, ?_⟩⟩
  simpa [relabelPartition] using hb

abbrev RemainderFiber (sizes : Fin m → ℕ) (a : A) (i : Fin m) (R : Finset A) :=
  {P : ConditionedPartition sizes a i // remainder P = R}

/-- Re-inserting the retained element identifies a remainder fiber with the
whole-part fiber at that exact set. -/
def remainderFiberEquiv (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (R : Finset A) (ha : a ∉ R) :
    RemainderFiber sizes a i R ≃ PartFiber sizes i (insert a R) where
  toFun P := ⟨P.val.val, by
    rw [← Finset.insert_erase ((mem_part P.val.val i a).mpr P.val.property)]
    exact congrArg (insert a) P.property⟩
  invFun P := ⟨⟨P.val, (mem_part P.val i a).mp (by rw [P.property]; simp)⟩, by
    change (part P.val i).erase a = R
    rw [P.property, Finset.erase_insert ha]⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Every admissible remainder of the prescribed size has equally many
conditional partitions. The equality follows from a proved whole-part bijection. -/
theorem remainderFiber_card_eq (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (R T : Finset A) (haR : a ∉ R) (haT : a ∉ T) (hcard : R.card = T.card) :
    Fintype.card (RemainderFiber sizes a i R) =
      Fintype.card (RemainderFiber sizes a i T) := by
  rw [Fintype.card_congr (remainderFiberEquiv sizes a i R haR),
    Fintype.card_congr (remainderFiberEquiv sizes a i T haT)]
  exact partFiber_card_eq sizes i _ _ (by simp [Finset.card_insert_of_notMem, haR, haT, hcard])

/-- Exact disintegration cardinality, before normalization to a probability. -/
theorem conditioned_card_eq_fiber_mul (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (R : Finset A) (hR : R ∈ remainderSpace sizes a i) :
    Fintype.card (ConditionedPartition sizes a i) =
      (remainderSpace sizes a i).card * Fintype.card (RemainderFiber sizes a i R) := by
  have h := Finset.card_eq_sum_card_fiberwise
    (s := (Finset.univ : Finset (ConditionedPartition sizes a i)))
    (t := remainderSpace sizes a i) (f := remainder)
    (fun P _ => remainder_mem_space P)
  rw [Finset.card_univ] at h
  rw [h]
  calc
    _ = ∑ _T ∈ remainderSpace sizes a i, Fintype.card (RemainderFiber sizes a i R) := by
      apply Finset.sum_congr rfl
      intro T hT
      rw [← Fintype.card_subtype]
      have hRs := Finset.mem_powersetCard.mp hR
      have hTs := Finset.mem_powersetCard.mp hT
      have haR : a ∉ R := fun ha => Finset.notMem_erase a Finset.univ (hRs.1 ha)
      have haT : a ∉ T := fun ha => Finset.notMem_erase a Finset.univ (hTs.1 ha)
      exact remainderFiber_card_eq sizes a i T R haT haR (hTs.2.trans hRs.2.symm)
    _ = _ := by simp

/-- Exact event cardinality relative to any retained reference remainder. -/
theorem conditioned_event_card_eq (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (R : Finset A) (hR : R ∈ remainderSpace sizes a i) (E : Finset A → Prop) :
    Fintype.card {P : ConditionedPartition sizes a i // E (remainder P)} =
      ((remainderSpace sizes a i).filter E).card * Fintype.card (RemainderFiber sizes a i R) := by
  rw [Fintype.card_subtype]
  have h := Finset.card_eq_sum_card_fiberwise
    (s := (Finset.univ : Finset (ConditionedPartition sizes a i)).filter
      (fun P => E (remainder P)))
    (t := (remainderSpace sizes a i).filter E) (f := remainder)
    (fun P hP => Finset.mem_filter.mpr ⟨remainder_mem_space P, (Finset.mem_filter.mp hP).2⟩)
  rw [h]
  calc
    _ = ∑ _T ∈ (remainderSpace sizes a i).filter E,
        Fintype.card (RemainderFiber sizes a i R) := by
      apply Finset.sum_congr rfl
      intro T hT
      have hET := (Finset.mem_filter.mp hT).2
      have hTs := Finset.mem_powersetCard.mp (Finset.mem_filter.mp hT).1
      have hRs := Finset.mem_powersetCard.mp hR
      have hsets : ((Finset.univ : Finset (ConditionedPartition sizes a i)).filter
          (fun P => E (remainder P))).filter (fun P => remainder P = T) =
          Finset.univ.filter (fun P => remainder P = T) := by
        ext P
        simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        exact ⟨And.right, fun hP => ⟨hP ▸ hET, hP⟩⟩
      rw [hsets, ← Fintype.card_subtype]
      exact remainderFiber_card_eq sizes a i T R
        (fun ha => Finset.notMem_erase a Finset.univ (hTs.1 ha))
        (fun ha => Finset.notMem_erase a Finset.univ (hRs.1 ha)) (hTs.2.trans hRs.2.symm)
    _ = _ := by simp

/-- Conditional uniform counting probability; the checker is a total finite
count even when numerical hypotheses have not yet proved nonemptiness. -/
def conditionalProbability (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (E : Finset A → Prop) : ℚ :=
  (Fintype.card {P : ConditionedPartition sizes a i // E (remainder P)} : ℚ) /
    Fintype.card (ConditionedPartition sizes a i)

/-- Uniform conditional exposure law, with feasibility proved rather than
assumed as a probability distribution property. -/
theorem conditional_event_probability (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (a : A) (i : Fin m) (hi : 0 < sizes i)
    (E : Finset A → Prop) :
    conditionalProbability sizes a i E =
      (((remainderSpace sizes a i).filter E).card : ℚ) /
        (remainderSpace sizes a i).card := by
  obtain ⟨P₀⟩ := conditionedPartition_nonempty sizes hsum a i hi
  let R := remainder P₀
  have hR : R ∈ remainderSpace sizes a i := remainder_mem_space P₀
  let K := Fintype.card (RemainderFiber sizes a i R)
  have hK : (K : ℚ) ≠ 0 := by
    have hn : Nonempty (RemainderFiber sizes a i R) := ⟨⟨P₀, rfl⟩⟩
    exact_mod_cast ne_of_gt (Fintype.card_pos_iff.mpr hn)
  unfold conditionalProbability
  rw [conditioned_event_card_eq sizes a i R hR E,
    conditioned_card_eq_fiber_mul sizes a i R hR, Nat.cast_mul, Nat.cast_mul]
  change _ / (_ * (K : ℚ)) = _
  field_simp
  rfl

/-- Real-valued form for analytic finite-probability estimates. -/
def conditionalProbabilityReal (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (E : Finset A → Prop) : ℝ :=
  (Fintype.card {P : ConditionedPartition sizes a i // E (remainder P)} : ℝ) /
    Fintype.card (ConditionedPartition sizes a i)

theorem conditional_event_probability_real (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (a : A) (i : Fin m) (hi : 0 < sizes i)
    (E : Finset A → Prop) :
    conditionalProbabilityReal sizes a i E =
      (((remainderSpace sizes a i).filter E).card : ℝ) /
        (remainderSpace sizes a i).card := by
  have h := conditional_event_probability sizes hsum a i hi E
  unfold conditionalProbability at h
  unfold conditionalProbabilityReal
  have hr := congrArg (fun q : ℚ => (q : ℝ)) h
  push_cast at hr
  exact hr


/-- Expose the part containing a retained element, preserving the full event
and every conditional partition rather than replacing them by sample metadata. -/
def eventExposureEquiv (sizes : Fin m → ℕ) (a : A)
    (E : Partition (A := A) sizes → Prop) :
    {P // E P} ≃ Σ i : Fin m, {Q : ConditionedPartition sizes a i // E Q.val} where
  toFun P := ⟨P.val.val a, ⟨⟨P.val, rfl⟩, P.property⟩⟩
  invFun Q := ⟨Q.2.val.val, Q.2.property⟩
  left_inv _ := rfl
  right_inv := by
    rintro ⟨i, ⟨⟨P, hPi⟩, hEP⟩⟩
    cases hPi
    rfl

/-- Exact event-count decomposition over the exposed containing part. -/
theorem event_exposure_card (sizes : Fin m → ℕ) (a : A)
    (E : Partition (A := A) sizes → Prop) :
    Fintype.card {P // E P} =
      ∑ i : Fin m, Fintype.card {Q : ConditionedPartition sizes a i // E Q.val} := by
  rw [Fintype.card_congr (eventExposureEquiv sizes a E), Fintype.card_sigma]

/-- The conditional strata partition the full partition sample space. -/
theorem partition_exposure_card (sizes : Fin m → ℕ) (a : A) :
    Fintype.card (Partition (A := A) sizes) =
      ∑ i : Fin m, Fintype.card (ConditionedPartition sizes a i) := by
  rw [Fintype.card_congr (Equiv.sigmaFiberEquiv
    (fun P : Partition (A := A) sizes => P.val a)).symm, Fintype.card_sigma]

/-- Real uniform probability of a full partition event. -/
def partitionProbabilityReal (sizes : Fin m → ℕ)
    (E : Partition (A := A) sizes → Prop) : ℝ :=
  (Fintype.card {P // E P} : ℝ) / Fintype.card (Partition (A := A) sizes)

/-- Real probability of a full partition event in one exposed stratum. This
allows events using the entire retained partition, not only the remainder. -/
def conditionedEventProbabilityReal (sizes : Fin m → ℕ) (a : A) (i : Fin m)
    (E : Partition (A := A) sizes → Prop) : ℝ :=
  (Fintype.card {Q : ConditionedPartition sizes a i // E Q.val} : ℝ) /
    Fintype.card (ConditionedPartition sizes a i)

/-- Pointwise conditional probability bounds average to the same unconditional
bound. Every stratum's positivity follows from the proved feasibility theorem;
no independence between the strata is asserted or needed. -/
theorem partition_event_le_of_conditional (sizes : Fin m → ℕ)
    (hsum : ∑ j, sizes j = Fintype.card A) (hpos : ∀ j, 0 < sizes j) (a : A)
    (E : Partition (A := A) sizes → Prop) (c : ℝ)
    (hconditional : ∀ i, conditionedEventProbabilityReal sizes a i E ≤ c) :
    partitionProbabilityReal sizes E ≤ c := by
  have hpart : (0 : ℝ) < Fintype.card (Partition (A := A) sizes) := by
    exact_mod_cast Fintype.card_pos_iff.mpr (partition_nonempty sizes hsum)
  have hcount (i : Fin m) :
      (Fintype.card {Q : ConditionedPartition sizes a i // E Q.val} : ℝ) ≤
        c * Fintype.card (ConditionedPartition sizes a i) := by
    have hi : (0 : ℝ) < Fintype.card (ConditionedPartition sizes a i) := by
      exact_mod_cast Fintype.card_pos_iff.mpr
        (conditionedPartition_nonempty sizes hsum a i (hpos i))
    exact (div_le_iff₀ hi).mp (hconditional i)
  have hsumcounts := Finset.sum_le_sum (s := Finset.univ) (fun i _ => hcount i)
  rw [← Finset.mul_sum] at hsumcounts
  unfold partitionProbabilityReal
  apply (div_le_iff₀ hpart).mpr
  rw [event_exposure_card sizes a E, partition_exposure_card sizes a, Nat.cast_sum, Nat.cast_sum]
  exact hsumcounts

end
end GRWTSK.ConditionalPartitionExposure
