import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Finset.Powerset
import Mathlib.Tactic
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState

/-!
# Finite divisibility observations

Prime-support and valuation depth are independent finite observation coordinates.
Zero has capped infinite valuation, rather than Mathlib's default valuation zero.
Exclusion is relative to a declared language; it grants no search-independent
optimality or theorem authority. Raw and bounded proper-divisor packing differ.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PackingObservations

/-- Finite valuation observation, with the divisible-by-every-power zero case
explicitly represented by saturation at the requested depth. -/
def cappedValuation (p r : ℕ) (z : ℤ) : ℕ :=
  if z = 0 then r else min (padicValInt p z) r

/-- Every valuation observation fits in its declared finite depth. -/
theorem cappedValuation_le (p r : ℕ) (z : ℤ) : cappedValuation p r z ≤ r := by
  simp only [cappedValuation]
  split_ifs
  · exact le_refl _
  · exact min_le_right _ _

/-- Zero saturates the observation. It is not confused with a nondivisible value. -/
@[simp] theorem cappedValuation_zero (p r : ℕ) : cappedValuation p r 0 = r := by
  simp [cappedValuation]

/-- Lower depth is obtained by a deterministic cap projection. -/
theorem cappedValuation_projection (p r r' : ℕ) (z : ℤ) (hr : r ≤ r') :
    min (cappedValuation p r' z) r = cappedValuation p r z := by
  simp only [cappedValuation]
  split_ifs
  · exact min_eq_right hr
  · rw [min_assoc, min_eq_right hr]

/-- Every depth-visible prime-power observation agrees with actual integer
 divisibility, including the zero component. -/
theorem cappedValuation_power_dvd (p r k : ℕ) (z : ℤ) (hp : p.Prime) (hk : k ≤ r) :
    k ≤ cappedValuation p r z ↔ (p : ℤ) ^ k ∣ z := by
  by_cases hz : z = 0
  · subst z
    simp [hk]
  · rw [cappedValuation, if_neg hz, le_min_iff, and_iff_left hk, padicValInt,
      ← padicValNat_dvd_iff_le_of_ne_one hp.ne_one (Int.natAbs_ne_zero.mpr hz),
      ← Int.ofNat_dvd_left, Nat.cast_pow]

/-- A finite prime-power profile determines a capped valuation without reducing
Mathlib's valuation implementation. Generated certificates may check the bounded
integer divisibility tests directly. -/
theorem cappedValuation_eq_of_profile (p r e : ℕ) (z : ℤ) (hp : p.Prime)
    (he : e ≤ r)
    (profile : ∀ k ≤ r, k ≤ e ↔ (p : ℤ) ^ k ∣ z) :
    cappedValuation p r z = e := by
  have hcap := cappedValuation_le p r z
  apply Nat.le_antisymm
  · exact (profile (cappedValuation p r z) hcap).mpr
      ((cappedValuation_power_dvd p r _ z hp hcap).mp le_rfl)
  · exact (cappedValuation_power_dvd p r e z hp he).mpr ((profile e he).mp le_rfl)

/-- Equivalent profile interface with an explicitly finite index type. -/
theorem cappedValuation_eq_of_fin_profile (p r e : ℕ) (z : ℤ) (hp : p.Prime)
    (he : e ≤ r)
    (profile : ∀ k : Fin (r + 1), k.val ≤ e ↔ (p : ℤ) ^ k.val ∣ z) :
    cappedValuation p r z = e := by
  apply cappedValuation_eq_of_profile p r e z hp he
  intro k hk
  exact profile ⟨k, Nat.lt_succ_of_le hk⟩

/-- A genuinely finite signature. Composite and unit indices carry fixed zero;
only prime indices observe translated integer values. -/
def signature (y r : ℕ) (H : Finset ℤ) (n : ℤ) :
    Fin (y + 1) → {h // h ∈ H} → Fin (r + 1) :=
  fun p h => ⟨if p.val.Prime then cappedValuation p.val r (n + h.val) else 0, by
    split_ifs
    · exact Nat.lt_succ_of_le (cappedValuation_le _ _ _)
    · exact Nat.zero_lt_succ _⟩

/-- Observational equivalence means equality of the complete finite signature. -/
def ObservationalEquivalence (y r : ℕ) (H : Finset ℤ) (n m : ℤ) : Prop :=
  signature y r H n = signature y r H m

/-- Extensional signature equality has exactly the visible prime coordinates. -/
theorem signature_eq_iff (y r : ℕ) (H : Finset ℤ) (n m : ℤ) :
    ObservationalEquivalence y r H n m ↔
      ∀ p, p ≤ y → p.Prime → ∀ h ∈ H,
        cappedValuation p r (n + h) = cappedValuation p r (m + h) := by
  constructor
  · intro he p hp hprime h hh
    have heq := congrArg (fun f => (f ⟨p, Nat.lt_succ_of_le hp⟩ ⟨h, hh⟩).val) he
    simpa only [signature, if_pos hprime] using heq
  · intro he
    apply funext
    intro p
    apply funext
    intro h
    apply Fin.ext
    simp only [signature]
    split_ifs with hp
    · exact he p.val (Nat.le_of_lt_succ p.isLt) hp h.val h.property
    · rfl

/-- Increasing visible prime support refines the finite partition by restriction,
without comparing residue elements from different modulus types as subsets. -/
theorem support_partition_refinement {y y' r : ℕ} {H : Finset ℤ} {n m : ℤ}
    (hy : y ≤ y') (he : ObservationalEquivalence y' r H n m) :
    ObservationalEquivalence y r H n m := by
  rw [signature_eq_iff] at he ⊢
  intro p hp hprime h hh
  exact he p (hp.trans hy) hprime h hh

/-- Increasing the valuation depth refines the finite partition by cap projection. -/
theorem depth_partition_refinement {y r r' : ℕ} {H : Finset ℤ} {n m : ℤ}
    (hr : r ≤ r') (he : ObservationalEquivalence y r' H n m) :
    ObservationalEquivalence y r H n m := by
  rw [signature_eq_iff] at he ⊢
  intro p hp hprime h hh
  rw [← cappedValuation_projection p r r' (n + h) hr,
    ← cappedValuation_projection p r r' (m + h) hr, he p hp hprime h hh]

/-- Combined support/depth refinement preserves the exact translated pattern. -/
theorem signature_partition_refinement {y y' r r' : ℕ} {H : Finset ℤ} {n m : ℤ}
    (hy : y ≤ y') (hr : r ≤ r') (he : ObservationalEquivalence y' r' H n m) :
    ObservationalEquivalence y r H n m :=
  depth_partition_refinement hr (support_partition_refinement hy he)

/-- A declared finite exclusion language includes executable observations and
proof-carrying witnesses for exactly the exclusions its checker reports. -/
structure Packing (α O : Type) [DecidableEq α] [DecidableEq O] where
  /-- Exact finite ambient candidate space. -/
  candidateSpace : Finset α
  /-- Exact finite observation language admitted at this budget. -/
  admittedObservations : Finset O
  /-- Declared finite scale/resource bound, with no scalar superiority claim. -/
  scaleResourceBound : ℕ
  /-- Family-specific explicit exclusion certificate. -/
  ExclusionCertificate : O → α → Type
  /-- Independent mathematical validity of a supplied certificate. -/
  valid : (o : O) → (x : α) → ExclusionCertificate o x → Prop
  /-- Executable finite observation outcome. -/
  excludes : O → α → Bool
  /-- Soundness and witness completeness are requirements of this language. -/
  excludes_iff : ∀ o x, excludes o x = true ↔ ∃ c, valid o x c

/-- Survivor set computed extensionally from all admitted observations. -/
def Packing.survivorSet {α O : Type} [DecidableEq α] [DecidableEq O]
    (P : Packing α O) : Finset α :=
  P.candidateSpace.filter fun x => ∀ o ∈ P.admittedObservations, P.excludes o x = false

/-- Membership explicitly means that no admitted observation certifies exclusion. -/
theorem Packing.mem_survivor_iff {α O : Type} [DecidableEq α] [DecidableEq O]
    (P : Packing α O) (x : α) : x ∈ P.survivorSet ↔
      x ∈ P.candidateSpace ∧
        ¬∃ o ∈ P.admittedObservations, ∃ c, P.valid o x c := by
  simp only [Packing.survivorSet, Finset.mem_filter]
  constructor
  · rintro ⟨hx, hn⟩
    refine ⟨hx, ?_⟩
    rintro ⟨o, ho, c, hc⟩
    have := (P.excludes_iff o x).mpr ⟨c, hc⟩
    rw [hn o ho] at this
    contradiction
  · rintro ⟨hx, hn⟩
    refine ⟨hx, ?_⟩
    intro o ho
    cases he : P.excludes o x with
    | false => rfl
    | true => exact False.elim (hn ⟨o, ho, (P.excludes_iff o x).mp he⟩)

/-- Every deleted candidate has an actual admitted exclusion witness. -/
theorem Packing.exclusion_witness {α O : Type} [DecidableEq α] [DecidableEq O]
    (P : Packing α O) {x : α} (hx : x ∈ P.candidateSpace)
    (hdeleted : x ∉ P.survivorSet) :
    ∃ o ∈ P.admittedObservations, ∃ c, P.valid o x c := by
  classical
  by_contra hnone
  exact hdeleted ((P.mem_survivor_iff x).mpr ⟨hx, hnone⟩)

/-- Language-relative minimality: a procedure that justifies every deletion with
this same admitted language cannot remove an additional survivor. -/
theorem Packing.relative_minimality {α O : Type} [DecidableEq α] [DecidableEq O]
    (P : Packing α O) (retained : Finset α)
    (restricted : ∀ x ∈ P.candidateSpace, x ∉ retained →
      ∃ o ∈ P.admittedObservations, ∃ c, P.valid o x c) :
    P.survivorSet ⊆ retained := by
  intro x hx
  have hs := (P.mem_survivor_iff x).mp hx
  by_contra hn
  exact hs.2 (restricted x hs.1 hn)

/-- Pure divisibility geometry, with no bounded primality claim. -/
structure RawPacking where
  /-- Visible prime-support scale. -/
  y : ℕ
  /-- Visible prime-power depth; zero means no divisibility observation. -/
  r : ℕ
  /-- Exact finite integer translates. -/
  pattern : Finset ℤ

/-- Raw local survival; a visible prime equal to a represented value is excluded. -/
def RawPacking.Survives (P : RawPacking) (n : ℤ) : Prop :=
  P.r = 0 ∨ ∀ p, p ≤ P.y → p.Prime → ∀ h ∈ P.pattern, ¬(p : ℤ) ∣ n + h

/-- A translated bounded classification object, distinct from residue geometry. -/
structure ProperPacking where
  /-- Visible prime-support scale. -/
  y : ℕ
  /-- Visible valuation depth. -/
  r : ℕ
  /-- Explicit upper bound on every represented component. -/
  X : ℕ
  /-- Exact integer translates. -/
  pattern : Finset ℤ

/-- Only represented integers in `[2,X]` enter bounded classification. -/
def ProperPacking.InRange (P : ProperPacking) (n : ℤ) : Prop :=
  ∀ h ∈ P.pattern, 2 ≤ n + h ∧ n + h ≤ (P.X : ℤ)

/-- Equality exceptions are componentwise: `p = n+h` never excludes a prime.
Signs and units are guarded by `InRange`, not by residue-class conventions. -/
def ProperPacking.Survives (P : ProperPacking) (n : ℤ) : Prop :=
  P.InRange n ∧ (P.r = 0 ∨ ∀ p, p ≤ P.y → p.Prime →
    ∀ h ∈ P.pattern, p ∣ (n + h).toNat → p = (n + h).toNat)

/-- At positive depth, raw and proper observations have different small-prime behavior. -/
theorem raw_excludes_visible_prime (p : ℕ) (hp : p.Prime) (y r : ℕ)
    (hy : p ≤ y) (hr : r ≠ 0) :
    ¬(RawPacking.mk y r {0}).Survives (p : ℤ) := by
  rintro (hzero | hobs)
  · exact hr hzero
  · exact hobs p hy hp 0 (by simp) (by simp)

/-- Any tuple of prime represented components survives all proper-divisor observations. -/
theorem proper_preserves_primes (P : ProperPacking) (n : ℤ)
    (hrange : P.InRange n)
    (hprime : ∀ h ∈ P.pattern, ((n + h).toNat).Prime) : P.Survives n := by
  refine ⟨hrange, Or.inr ?_⟩
  intro p _ hp h hh hdiv
  exact (Nat.dvd_prime (hprime h hh)).mp hdiv |>.resolve_left hp.ne_one

/-- Increasing prime support only deletes additional raw integer survivors. -/
theorem raw_support_monotone {P : RawPacking} {y' : ℕ} (hy : P.y ≤ y') (n : ℤ)
    (hs : (RawPacking.mk y' P.r P.pattern).Survives n) : P.Survives n := by
  rcases hs with hzero | hs
  · exact Or.inl hzero
  · exact Or.inr (fun p hp hprime h hh => hs p (hp.trans hy) hprime h hh)

/-- The zero integer remains saturated even though Mathlib's valuation defaults to zero. -/
theorem zero_not_nondivisible : cappedValuation 2 3 0 = 3 ∧ padicValInt 2 0 = 0 := by
  simp

/-- A squarefree observation cannot distinguish 2 from 4. -/
theorem shallow_observation_collision :
    cappedValuation 2 1 2 = cappedValuation 2 1 4 := by
  have hfour : padicValNat 2 4 = 2 := by
    have : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
    exact padicValNat.prime_pow 2
  simp [cappedValuation, padicValInt, hfour]

/-- Deeper valuation information separates that shallow collision. -/
theorem deeper_observation_separation :
    cappedValuation 2 2 2 ≠ cappedValuation 2 2 4 := by
  have hfour : padicValNat 2 4 = 2 := by
    have : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
    exact padicValNat.prime_pow 2
  simp [cappedValuation, padicValInt, hfour]

/-- Exact prime-power divisibility count in the positive period `(0,p^(k+1)]`.
This finite-period theorem makes no asymptotic natural-density claim. -/
theorem prime_power_period_count (p k : ℕ) (hp : p.Prime) :
    ((Finset.Ioc 0 (p ^ (k + 1))).filter fun n => p ^ k ∣ n).card = p := by
  rw [Nat.Ioc_filter_dvd_card_eq_div, pow_succ, Nat.mul_div_cancel_left]
  exact pow_pos hp.pos k

/-- Exactly one element of that period is divisible by its whole modulus. -/
theorem next_power_period_count (p k : ℕ) (hp : p.Prime) :
    ((Finset.Ioc 0 (p ^ (k + 1))).filter fun n => p ^ (k + 1) ∣ n).card = 1 := by
  rw [Nat.Ioc_filter_dvd_card_eq_div, Nat.div_self (pow_pos hp.pos _)]

/-- The valuation shell is the difference of nested divisibility cells, so its
coordinates are not treated as independent observations. -/
theorem exact_valuation_shell (p k : ℕ) (hp : p.Prime) (n : ℕ) (hn : n ≠ 0) :
    padicValNat p n = k ↔ p ^ k ∣ n ∧ ¬p ^ (k + 1) ∣ n := by
  rw [padicValNat_dvd_iff_le_of_ne_one hp.ne_one hn,
    padicValNat_dvd_iff_le_of_ne_one hp.ne_one hn]
  omega

/-- Exact finite valuation-shell cardinality in one full positive period. -/
theorem exact_valuation_period_count (p k : ℕ) (hp : p.Prime) :
    ((Finset.Ioc 0 (p ^ (k + 1))).filter fun n => padicValNat p n = k).card = p - 1 := by
  let base := (Finset.Ioc 0 (p ^ (k + 1))).filter fun n => p ^ k ∣ n
  let deeper := (Finset.Ioc 0 (p ^ (k + 1))).filter fun n => p ^ (k + 1) ∣ n
  have hsubset : deeper ⊆ base := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hn, hd⟩
    exact Finset.mem_filter.mpr ⟨hn, (pow_dvd_pow p (Nat.le_succ k)).trans hd⟩
  have heq : (Finset.Ioc 0 (p ^ (k + 1))).filter (fun n => padicValNat p n = k) =
      base \ deeper := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_sdiff, base, deeper]
    constructor
    · rintro ⟨hn, hv⟩
      have hs := (exact_valuation_shell p k hp n (Nat.ne_of_gt (Finset.mem_Ioc.mp hn).1)).mp hv
      exact ⟨⟨hn, hs.1⟩, fun h => hs.2 h.2⟩
    · rintro ⟨⟨hn, hd⟩, hnot⟩
      refine ⟨hn, (exact_valuation_shell p k hp n ?_).mpr ⟨hd, ?_⟩⟩
      · exact Nat.ne_of_gt (Finset.mem_Ioc.mp hn).1
      · exact fun h => hnot ⟨hn, h⟩
  rw [heq, Finset.card_sdiff_of_subset hsubset,
    prime_power_period_count p k hp, next_power_period_count p k hp]

/-- The divisibility proportion is an exact rational on this complete period. -/
theorem prime_power_period_frequency (p k : ℕ) (hp : p.Prime) :
    (((Finset.Ioc 0 (p ^ (k + 1))).filter fun n => p ^ k ∣ n).card : ℚ) /
      (p ^ (k + 1) : ℕ) = 1 / (p : ℚ) ^ k := by
  rw [prime_power_period_count p k hp]
  have hpq : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  push_cast
  rw [pow_succ]
  field_simp

/-- The exact-valuation shell proportion is the difference of its nested cells. -/
theorem exact_valuation_period_frequency (p k : ℕ) (hp : p.Prime) :
    (((Finset.Ioc 0 (p ^ (k + 1))).filter fun n => padicValNat p n = k).card : ℚ) /
      (p ^ (k + 1) : ℕ) = 1 / (p : ℚ) ^ k - 1 / (p : ℚ) ^ (k + 1) := by
  rw [exact_valuation_period_count p k hp,
    Nat.cast_sub (le_trans (by decide : 1 ≤ 2) hp.two_le)]
  have hpq : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  push_cast
  rw [pow_succ]
  field_simp

/-- The real logarithmic coordinate expresses the same exact reciprocal power.
It is not an observed probability of primes or a proof-progress coordinate. -/
theorem logarithmic_divisibility_scale (p k : ℕ) (hp : p.Prime) :
    1 / (p : ℝ) ^ k = Real.exp (-((k : ℝ) * Real.log p)) := by
  have hpR : (0 : ℝ) < p := Nat.cast_pos.mpr hp.pos
  rw [Real.exp_neg, Real.exp_nat_mul, Real.exp_log hpR, one_div]

/-- Exhaustion of the declared proper-divisor horizon gives exact componentwise
bounded primality classification, including visible small primes. -/
theorem bounded_proper_classification (P : ProperPacking) (n : ℤ)
    (hcover : Nat.sqrt P.X ≤ P.y) (hdepth : P.r ≠ 0) :
    P.Survives n ↔ P.InRange n ∧ ∀ h ∈ P.pattern, ((n + h).toNat).Prime := by
  constructor
  · intro hs
    refine ⟨hs.1, ?_⟩
    intro h hh
    have hrange := hs.1 h hh
    have htwo : 2 ≤ (n + h).toNat := by omega
    have hupper : (n + h).toNat ≤ P.X := Int.toNat_le.mpr hrange.2
    apply FactorState.prime_of_exhausted_horizon htwo hupper
    intro p hp hbound hdiv
    exact (hs.2.resolve_left hdepth) p (hbound.trans hcover) hp h hh hdiv
  · rintro ⟨hrange, hprime⟩
    exact proper_preserves_primes P n hrange hprime

/-- Raw survival at an exhausted horizon still implies primality. It is the
converse, hence complete raw classification, that fails on visible primes. -/
theorem raw_survival_implies_prime_components (P : RawPacking) (X : ℕ) (n : ℤ)
    (hrange : (ProperPacking.mk P.y P.r X P.pattern).InRange n)
    (hcover : Nat.sqrt X ≤ P.y) (hdepth : P.r ≠ 0) (hs : P.Survives n) :
    ∀ h ∈ P.pattern, ((n + h).toNat).Prime := by
  apply ((bounded_proper_classification
    (ProperPacking.mk P.y P.r X P.pattern) n hcover hdepth).mp ?_).2
  refine ⟨hrange, Or.inr ?_⟩
  intro p hp hprime h hh hdiv
  have hnonneg : 0 ≤ n + h := (by norm_num : (0 : ℤ) ≤ 2).trans (hrange h hh).1
  have hdint : (p : ℤ) ∣ n + h := by
    rw [← Int.toNat_of_nonneg hnonneg]
    exact Int.ofNat_dvd.mpr hdiv
  exact ((hs.resolve_left hdepth) p hp hprime h hh hdint).elim

/-- The finite proper-divisor classifier preserves both smallest primes. -/
theorem proper_preserves_two_three :
    (ProperPacking.mk 3 1 3 {0}).Survives 2 ∧
      (ProperPacking.mk 3 1 3 {0}).Survives 3 := by
  constructor
  · apply proper_preserves_primes
    · norm_num [ProperPacking.InRange]
    · intro h hh
      simp only [Finset.mem_singleton] at hh
      subst h
      norm_num
      decide
  · apply proper_preserves_primes
    · norm_num [ProperPacking.InRange]
    · intro h hh
      simp only [Finset.mem_singleton] at hh
      subst h
      norm_num
      decide

/-- Equality exceptions are attached to each component, including the translated
prime pair represented by `n=1`, `H={1,2}`. This is one finite fixture. -/
theorem proper_preserves_translated_prime_components :
    (ProperPacking.mk 3 1 3 {1, 2}).Survives 1 := by
  apply proper_preserves_primes
  · norm_num [ProperPacking.InRange]
  · intro h hh
    simp only [Finset.mem_insert, Finset.mem_singleton] at hh
    rcases hh with rfl | rfl <;> norm_num <;> decide

/-- Zero observation depth is not silently treated as a primality certificate. -/
theorem zero_depth_keeps_composite :
    (ProperPacking.mk 2 0 4 {0}).Survives 4 ∧ ¬Nat.Prime 4 := by
  norm_num [ProperPacking.Survives, ProperPacking.InRange]

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PackingObservations
