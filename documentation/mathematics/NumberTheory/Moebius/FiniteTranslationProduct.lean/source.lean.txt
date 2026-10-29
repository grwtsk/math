import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.MeasureTheory.Integral.IntegrableOn
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-!
Finite prime-note product expansion. The source is constructed by repeated
prime-note operators, independently of the signed subset expansion. All
coefficients are retained, and distinct-prime subsets identify with actual
squarefree integers and their arithmetic Möbius coefficients.
-/

namespace ASBNP04.FiniteProduct

noncomputable section

def shift (a : ℝ) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  if a ≤ u then f (u - a) else 0

def note (r a : ℝ) (f : ℝ → ℝ) : ℝ → ℝ :=
  fun u => f u - r * shift a f u

theorem shift_add (a : ℝ) (f g : ℝ → ℝ) :
    shift a (fun u => f u + g u) = fun u => shift a f u + shift a g u := by
  funext u
  by_cases h : a ≤ u <;> simp [shift, h]

theorem shift_smul (a c : ℝ) (f : ℝ → ℝ) :
    shift a (fun u => c * f u) = fun u => c * shift a f u := by
  funext u
  by_cases h : a ≤ u <;> simp [shift, h]

theorem shift_sum {ι : Type*} (s : Finset ι) (a : ℝ) (f : ι → ℝ → ℝ) :
    shift a (fun u => ∑ i ∈ s, f i u) = fun u => ∑ i ∈ s, shift a (f i) u := by
  classical
  funext u
  by_cases h : a ≤ u <;> simp [shift, h]

theorem shift_comp (a c : ℝ) (hc : 0 ≤ c) (f : ℝ → ℝ) :
    shift a (shift c f) = shift (a + c) f := by
  funext u
  by_cases hs : a + c ≤ u
  · have ha : a ≤ u := by linarith
    have hca : c ≤ u - a := by linarith
    simp only [shift, if_pos hs, if_pos ha, if_pos hca]
    congr 1
    ring
  · by_cases ha : a ≤ u
    · have hca : ¬ c ≤ u - a := by linarith
      simp [shift, hs, ha, hca]
    · simp [shift, hs, ha]

def signedExpansion {ι : Type*} (r d : ι → ℝ) (P : Finset ι)
    (f : ℝ → ℝ) : ℝ → ℝ :=
  fun u => ∑ U ∈ P.powerset, (∏ p ∈ U, -r p) * shift (∑ p ∈ U, d p) f u

theorem signedExpansion_insert {ι : Type*} [DecidableEq ι]
    (r d : ι → ℝ) (P : Finset ι) (p : ι) (hp : p ∉ P)
    (hd : ∀ q ∈ P, 0 ≤ d q) (f : ℝ → ℝ) :
    signedExpansion r d (insert p P) f = note (r p) (d p) (signedExpansion r d P f) := by
  funext u
  unfold signedExpansion note
  rw [Finset.sum_powerset_insert hp]
  have he :
      (∑ U ∈ P.powerset, (∏ q ∈ insert p U, -r q) *
        shift (∑ q ∈ insert p U, d q) f u) =
      -r p * shift (d p) (fun v =>
        ∑ U ∈ P.powerset, (∏ q ∈ U, -r q) * shift (∑ q ∈ U, d q) f v) u := by
    rw [shift_sum, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro U hU
    have hUP : U ⊆ P := Finset.mem_powerset.mp hU
    have hpU : p ∉ U := fun h => hp (hUP h)
    have hsum : 0 ≤ ∑ q ∈ U, d q := Finset.sum_nonneg fun q hq => hd q (hUP hq)
    rw [Finset.prod_insert hpU, Finset.sum_insert hpU]
    rw [shift_smul, shift_comp (d p) _ hsum]
    ring
  rw [he]
  ring

def cascade {ι : Type*} (r d : ι → ℝ) (ps : List ι) (f : ℝ → ℝ) : ℝ → ℝ :=
  ps.foldr (fun p state => note (r p) (d p) state) f

theorem cascade_eq_signedExpansion {ι : Type*} [DecidableEq ι]
    (r d : ι → ℝ) (ps : List ι) (hn : ps.Nodup)
    (hd : ∀ p ∈ ps, 0 ≤ d p) (f : ℝ → ℝ) (hf : ∀ u < 0, f u = 0) :
    cascade r d ps f = signedExpansion r d ps.toFinset f := by
  induction ps with
  | nil =>
      funext u
      simp only [cascade, List.foldr_nil, signedExpansion, List.toFinset_nil,
        Finset.powerset_empty, Finset.sum_singleton, Finset.prod_empty, Finset.sum_empty,
        one_mul, shift, sub_zero]
      by_cases hu : 0 ≤ u
      · simp [hu]
      · simp [hu, hf u (lt_of_not_ge hu)]
  | cons p ps ih =>
      have hn' : ps.Nodup := (List.nodup_cons.mp hn).2
      have hp : p ∉ ps.toFinset := by simpa using (List.nodup_cons.mp hn).1
      have hd' : ∀ q ∈ ps, 0 ≤ d q := fun q hq => hd q (by simp [hq])
      have hdF : ∀ q ∈ ps.toFinset, 0 ≤ d q := by simpa using hd'
      simp only [cascade, List.foldr_cons, List.toFinset_cons]
      rw [← cascade, ih hn' hd', signedExpansion_insert r d ps.toFinset p hp hdF]

theorem cascade_order_independent {ι : Type*} [DecidableEq ι]
    (r d : ι → ℝ) (ps qs : List ι) (hnp : ps.Nodup) (hnq : qs.Nodup)
    (hperm : ps.Perm qs) (hd : ∀ p ∈ ps, 0 ≤ d p)
    (f : ℝ → ℝ) (hf : ∀ u < 0, f u = 0) :
    cascade r d ps f = cascade r d qs f := by
  have hdq : ∀ p ∈ qs, 0 ≤ d p := fun p hp => hd p ((hperm.mem_iff).mpr hp)
  rw [cascade_eq_signedExpansion r d ps hnp hd f hf,
    cascade_eq_signedExpansion r d qs hnq hdq f hf,
    List.toFinset_eq_of_perm ps qs hperm]

def primeWeight (p : ℕ) : ℝ := (Real.sqrt (p : ℝ))⁻¹
def primeDelay (p : ℕ) : ℝ := Real.log (p : ℝ)
def primeProduct (U : Finset ℕ) : ℕ := ∏ p ∈ U, p

theorem primeDelay_nonneg {p : ℕ} (hp : p.Prime) : 0 ≤ primeDelay p := by
  exact Real.log_nonneg (by exact_mod_cast hp.one_lt.le)

theorem primeProduct_squarefree (U : Finset ℕ) (hU : ∀ p ∈ U, p.Prime) :
    Squarefree (primeProduct U) := by
  apply Finset.squarefree_prod_of_pairwise_isCoprime
  · intro p hp q hq hpq
    simpa only [← Nat.coprime_iff_isRelPrime] using
      (Nat.coprime_primes (hU p hp) (hU q hq)).mpr hpq
  · exact fun p hp => (hU p hp).squarefree

theorem primeProduct_primeFactors (U : Finset ℕ) (hU : ∀ p ∈ U, p.Prime) :
    (primeProduct U).primeFactors = U := Nat.primeFactors_prod hU

theorem primeProduct_injective_on_primes (U V : Finset ℕ)
    (hU : ∀ p ∈ U, p.Prime) (hV : ∀ p ∈ V, p.Prime)
    (he : primeProduct U = primeProduct V) : U = V := by
  rw [← primeProduct_primeFactors U hU, he, primeProduct_primeFactors V hV]

theorem moebius_primeProduct (U : Finset ℕ) (hU : ∀ p ∈ U, p.Prime) :
    ArithmeticFunction.moebius (primeProduct U) = (-1 : ℤ) ^ U.card := by
  rw [ArithmeticFunction.moebius_apply_of_squarefree (primeProduct_squarefree U hU)]
  rw [ArithmeticFunction.cardFactors_apply]
  rw [← List.toFinset_card_of_nodup (primeProduct_squarefree U hU).nodup_primeFactorsList,
    Nat.toFinset_factors, primeProduct_primeFactors U hU]

theorem primeProduct_positive (U : Finset ℕ) (hU : ∀ p ∈ U, p.Prime) :
    0 < primeProduct U :=
  Finset.prod_pos fun p hp => (hU p hp).pos

theorem primeDelay_sum (U : Finset ℕ) (hU : ∀ p ∈ U, p.Prime) :
    (∑ p ∈ U, primeDelay p) = primeDelay (primeProduct U) := by
  unfold primeDelay primeProduct
  rw [Nat.cast_prod, Real.log_prod]
  exact fun p hp => by exact_mod_cast (hU p hp).ne_zero

theorem primeWeight_product (U : Finset ℕ) :
    (∏ p ∈ U, primeWeight p) = primeWeight (primeProduct U) := by
  induction U using Finset.induction_on with
  | empty => simp [primeProduct, primeWeight]
  | @insert p U hp ih =>
      rw [Finset.prod_insert hp, ih]
      simp only [primeProduct, Finset.prod_insert hp, primeWeight, Nat.cast_mul]
      rw [Real.sqrt_mul (Nat.cast_nonneg p), mul_inv_rev, mul_comm]

theorem signed_prime_coefficient (U : Finset ℕ) (hU : ∀ p ∈ U, p.Prime) :
    (∏ p ∈ U, -primeWeight p) =
      (ArithmeticFunction.moebius (primeProduct U) : ℝ) * primeWeight (primeProduct U) := by
  rw [Finset.prod_congr rfl (fun p _ => neg_eq_neg_one_mul (primeWeight p))]
  rw [Finset.prod_mul_distrib, Finset.prod_const, primeWeight_product,
    moebius_primeProduct U hU]
  simp

/-- The genuine sequential prime-note product, with the original arithmetic μ. -/
theorem prime_cascade_exact (ps : List ℕ) (hn : ps.Nodup)
    (hp : ∀ p ∈ ps, p.Prime) (f : ℝ → ℝ) (hf : ∀ u < 0, f u = 0) :
    cascade primeWeight primeDelay ps f = fun u =>
      ∑ U ∈ ps.toFinset.powerset,
        (ArithmeticFunction.moebius (primeProduct U) : ℝ) *
          primeWeight (primeProduct U) * shift (primeDelay (primeProduct U)) f u := by
  rw [cascade_eq_signedExpansion primeWeight primeDelay ps hn
    (fun p h => primeDelay_nonneg (hp p h)) f hf]
  funext u
  apply Finset.sum_congr rfl
  intro U hU
  have hpr : ∀ p ∈ U, p.Prime := fun p h => hp p
    (List.mem_toFinset.mp ((Finset.mem_powerset.mp hU) h))
  rw [signed_prime_coefficient U hpr, primeDelay_sum U hpr]

/-- Pure finite arithmetic reindexing, with no analytic assumptions. -/
theorem subset_squarefree_reindex (N : ℕ) (F : ℕ → ℝ) :
    (∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => primeProduct U ≤ N),
      F (primeProduct U)) =
    ∑ n ∈ (Finset.Icc 1 N).filter Squarefree, F n := by
  classical
  apply Finset.sum_bij (fun U _ => primeProduct U)
  · intro U hU
    rcases Finset.mem_filter.mp hU with ⟨hUP, hUN⟩
    have hpr : ∀ p ∈ U, p.Prime := fun p hp =>
      Nat.prime_of_mem_primesLE ((Finset.mem_powerset.mp hUP) hp)
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
      ⟨primeProduct_positive U hpr, hUN⟩, primeProduct_squarefree U hpr⟩
  · intro U hU V hV he
    apply primeProduct_injective_on_primes U V _ _ he
    · exact fun p hp => Nat.prime_of_mem_primesLE
        ((Finset.mem_powerset.mp (Finset.mem_filter.mp hU).1) hp)
    · exact fun p hp => Nat.prime_of_mem_primesLE
        ((Finset.mem_powerset.mp (Finset.mem_filter.mp hV).1) hp)
  · intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hnI, hnSq⟩
    have hnN := (Finset.mem_Icc.mp hnI).2
    refine ⟨n.primeFactors, ?_, ?_⟩
    · apply Finset.mem_filter.mpr
      constructor
      · apply Finset.mem_powerset.mpr
        intro p hp
        rcases Nat.mem_primeFactors.mp hp with ⟨hpPr, hpn, hn0⟩
        exact Nat.mem_primesLE.mpr ⟨(Nat.le_of_dvd (Nat.pos_of_ne_zero hn0) hpn).trans hnN,
          hpPr⟩
      · simpa only [primeProduct, Nat.prod_primeFactors_of_squarefree hnSq] using hnN
    · exact Nat.prod_primeFactors_of_squarefree hnSq
  · intro U _
    rfl

/-- The complete signed Möbius sum follows, since nonsquarefree terms vanish. -/
theorem subset_moebius_reindex (N : ℕ) (F : ℕ → ℝ) :
    (∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => primeProduct U ≤ N),
      (ArithmeticFunction.moebius (primeProduct U) : ℝ) * F (primeProduct U)) =
    ∑ n ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius n : ℝ) * F n := by
  classical
  rw [subset_squarefree_reindex N (fun n => (ArithmeticFunction.moebius n : ℝ) * F n)]
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro n hn hns
  have h : ¬Squarefree n := by
    intro h
    exact hns (Finset.mem_filter.mpr ⟨hn, h⟩)
  simp [ArithmeticFunction.moebius_eq_zero_of_not_squarefree h]

def baseWave (u : ℝ) : ℝ :=
  if 0 ≤ u then 2 * (1 - Real.exp (-u / 2)) else 0

def atom (n : ℕ) (u : ℝ) : ℝ :=
  if Real.log (n : ℝ) ≤ u then
    2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) else 0

theorem baseWave_causal (u : ℝ) (hu : u < 0) : baseWave u = 0 := by
  simp [baseWave, not_le.mpr hu]

theorem exp_negative_half_log {x : ℝ} (hx : 0 < x) :
    Real.exp (-Real.log x / 2) = (Real.sqrt x)⁻¹ := by
  rw [show -Real.log x / 2 = -(Real.log x / 2) by ring,
    Real.exp_neg, ← Real.log_sqrt hx.le, Real.exp_log (Real.sqrt_pos.mpr hx)]

theorem atom_eq_scaled_shift (n : ℕ) (hn : 0 < n) (u : ℝ) :
    atom n u = primeWeight n * shift (primeDelay n) baseWave u := by
  have hnr : 0 < (n : ℝ) := by exact_mod_cast hn
  by_cases hu : Real.log (n : ℝ) ≤ u
  · have hb : 0 ≤ u - Real.log (n : ℝ) := by linarith
    unfold atom primeWeight primeDelay shift baseWave
    simp only [if_pos hu, if_pos hb]
    have hexp : (Real.sqrt (n : ℝ))⁻¹ *
        Real.exp (-(u - Real.log (n : ℝ)) / 2) = Real.exp (-u / 2) := by
      rw [← exp_negative_half_log hnr, ← Real.exp_add]
      congr 1
      ring
    nlinarith
  · simp [atom, primeWeight, primeDelay, shift, hu]

def primeState (P : Finset ℕ) : ℝ → ℝ :=
  cascade primeWeight primeDelay P.toList baseWave

theorem primeState_exact (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) (u : ℝ) :
    primeState P u = ∑ U ∈ P.powerset,
      (ArithmeticFunction.moebius (primeProduct U) : ℝ) * atom (primeProduct U) u := by
  unfold primeState
  rw [prime_cascade_exact P.toList P.nodup_toList
    (by simpa only [Finset.mem_toList] using hP) baseWave baseWave_causal]
  simp only [Finset.toList_toFinset]
  apply Finset.sum_congr rfl
  intro U hU
  have hpr : ∀ p ∈ U, p.Prime := fun p hp => hP p ((Finset.mem_powerset.mp hU) hp)
  rw [atom_eq_scaled_shift _ (primeProduct_positive U hpr)]
  ring

theorem atom_above_horizon (T u : ℝ) (hu : u ≤ T) (n : ℕ)
    (hn : 0 < n) (hN : ¬n ≤ Nat.floor (Real.exp T)) : atom n u = 0 := by
  have he : Real.exp T < (n : ℝ) :=
    (Nat.floor_lt (Real.exp_pos T).le).mp (lt_of_not_ge hN)
  have hlog : ¬Real.log (n : ℝ) ≤ u := by
    intro h
    have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
    have hle := (Real.log_le_iff_le_exp hnreal).mp (h.trans hu)
    exact (not_le_of_gt he) hle
  simp [atom, hlog]

/-- NI, for the literal finite Möbius pickup at every real horizon. -/
theorem completed_pickup_identification (T u : ℝ) (hu : u ≤ T) :
    primeState (Nat.primesLE (Nat.floor (Real.exp T))) u =
      ∑ n ∈ Finset.Icc 1 (Nat.floor (Real.exp T)),
        (ArithmeticFunction.moebius n : ℝ) * atom n u := by
  classical
  rw [primeState_exact _ (fun p hp => Nat.prime_of_mem_primesLE hp)]
  have hfilter :
      (∑ U ∈ (Nat.primesLE (Nat.floor (Real.exp T))).powerset,
        (ArithmeticFunction.moebius (primeProduct U) : ℝ) * atom (primeProduct U) u) =
      ∑ U ∈ (Nat.primesLE (Nat.floor (Real.exp T))).powerset.filter
        (fun U => primeProduct U ≤ Nat.floor (Real.exp T)),
        (ArithmeticFunction.moebius (primeProduct U) : ℝ) * atom (primeProduct U) u := by
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro U hU hnot
    have hpr : ∀ p ∈ U, p.Prime := fun p hp => Nat.prime_of_mem_primesLE
      ((Finset.mem_powerset.mp hU) hp)
    have hN : ¬primeProduct U ≤ Nat.floor (Real.exp T) := by
      intro h
      exact hnot (Finset.mem_filter.mpr ⟨hU, h⟩)
    rw [atom_above_horizon T u hu _ (primeProduct_positive U hpr) hN, mul_zero]
  rw [hfilter]
  exact subset_moebius_reindex (Nat.floor (Real.exp T)) (fun n => atom n u)

def restrict (T : ℝ) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  if 0 ≤ u ∧ u ≤ T then f u else 0

theorem restrict_idempotent (T : ℝ) (f : ℝ → ℝ) :
    restrict T (restrict T f) = restrict T f := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T <;> simp [restrict, hu]

theorem restrict_causal_shift (T a : ℝ) (ha : 0 ≤ a) (f : ℝ → ℝ) :
    restrict T (shift a (restrict T f)) = restrict T (shift a f) := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T
  · by_cases haU : a ≤ u
    · have hv : 0 ≤ u - a ∧ u - a ≤ T := by constructor <;> linarith [hu.2]
      simp [restrict, shift, hu, haU, hv]
    · simp [restrict, shift, hu, haU]
  · simp [restrict, hu]

theorem restrict_causal_note (T a r : ℝ) (ha : 0 ≤ a) (f : ℝ → ℝ) :
    restrict T (note r a (restrict T f)) = restrict T (note r a f) := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T
  · have hs := congrFun (restrict_causal_shift T a ha f) u
    simpa [restrict, note, hu] using congrArg (fun x => f u - r * x) hs
  · simp [restrict, hu]

theorem restrict_cascade (T : ℝ) {ι : Type*} (r d : ι → ℝ)
    (ps : List ι) (hd : ∀ p ∈ ps, 0 ≤ d p) (f : ℝ → ℝ) :
    restrict T (cascade r d ps (restrict T f)) = restrict T (cascade r d ps f) := by
  induction ps with
  | nil =>
      exact restrict_idempotent T f
  | cons p ps ih =>
      have hp : 0 ≤ d p := hd p (by simp)
      have hd' : ∀ q ∈ ps, 0 ≤ d q := fun q h => hd q (by simp [h])
      simp only [cascade, List.foldr_cons]
      rw [← cascade, ← cascade]
      rw [← restrict_causal_note T (d p) (r p) hp,
        ih hd', restrict_causal_note T (d p) (r p) hp]

theorem cascade_append {ι : Type*} (r d : ι → ℝ) (ps qs : List ι) (f : ℝ → ℝ) :
    cascade r d (ps ++ qs) f = cascade r d ps (cascade r d qs f) := by
  simp [cascade, List.foldr_append]

/-- Disjoint blocks act on the same source, independent of their ordering. -/
theorem primeState_block_factorization (P B : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint B P) :
    primeState (B ∪ P) = cascade primeWeight primeDelay B.toList (primeState P) := by
  have hn : (B.toList ++ P.toList).Nodup := by
    apply List.nodup_append'.mpr
    refine ⟨B.nodup_toList, P.nodup_toList, ?_⟩
    apply List.disjoint_left.mpr
    intro p hpB hpP
    exact Finset.disjoint_left.mp hd (Finset.mem_toList.mp hpB) (Finset.mem_toList.mp hpP)
  have hpr : ∀ p ∈ B.toList ++ P.toList, p.Prime := by
    intro p hp
    rcases List.mem_append.mp hp with h | h
    · exact hB p (Finset.mem_toList.mp h)
    · exact hP p (Finset.mem_toList.mp h)
  have hun : ∀ p ∈ B ∪ P, p.Prime := by
    intro p hp
    exact (Finset.mem_union.mp hp).elim (hB p) (hP p)
  unfold primeState
  rw [← cascade_append]
  rw [cascade_eq_signedExpansion primeWeight primeDelay (B ∪ P).toList
    (B ∪ P).nodup_toList (fun p hp => primeDelay_nonneg (hun p (Finset.mem_toList.mp hp)))
    baseWave baseWave_causal]
  rw [cascade_eq_signedExpansion primeWeight primeDelay (B.toList ++ P.toList)
    hn (fun p hp => primeDelay_nonneg (hpr p hp)) baseWave baseWave_causal]
  simp only [List.toFinset_append, Finset.toList_toFinset]

open MeasureTheory

theorem signed_sum_square {ι : Type*} (s : Finset ι) (c v : ι → ℝ) :
    (∑ i ∈ s, c i * v i) ^ 2 =
      ∑ i ∈ s, ∑ j ∈ s, (c i * c j) * (v i * v j) := by
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- Signed, ordered, complete finite quadratic expansion under an integral. -/
theorem signed_integral_square {ι : Type*} (s : Finset ι) (c : ι → ℝ)
    (v : ι → ℝ → ℝ) (T : ℝ)
    (hi : ∀ i ∈ s, ∀ j ∈ s,
      IntegrableOn (fun u => v i u * v j u) (Set.Icc 0 T) volume) :
    (∫ u in Set.Icc 0 T, (∑ i ∈ s, c i * v i u) ^ 2) =
      ∑ i ∈ s, ∑ j ∈ s, (c i * c j) *
        (∫ u in Set.Icc 0 T, v i u * v j u) := by
  have hprod : ∀ i ∈ s, ∀ j ∈ s,
      Integrable (fun u => (c i * c j) * (v i u * v j u))
        (volume.restrict (Set.Icc 0 T)) :=
    fun i hi' j hj => (hi i hi' j hj).const_mul (c i * c j)
  have hsum : ∀ i ∈ s,
      Integrable (fun u => ∑ j ∈ s, (c i * c j) * (v i u * v j u))
        (volume.restrict (Set.Icc 0 T)) :=
    fun i hi' => integrable_finsetSum s (hprod i hi')
  simp_rw [signed_sum_square]
  rw [integral_finsetSum s hsum]
  apply Finset.sum_congr rfl
  intro i hi'
  rw [integral_finsetSum s (hprod i hi')]
  apply Finset.sum_congr rfl
  intro j hj
  exact integral_const_mul _ _

/-- BE for the actual prime-note cascade, retaining both Möbius coefficients.
The only analytic premise is integrability of the displayed finite correlations.
-/
theorem block_energy_exact (B : Finset ℕ) (hB : ∀ p ∈ B, p.Prime)
    (f : ℝ → ℝ) (hf : ∀ u < 0, f u = 0) (T : ℝ)
    (hi : ∀ U ∈ B.powerset, ∀ V ∈ B.powerset,
      IntegrableOn (fun u => shift (primeDelay (primeProduct U)) f u *
        shift (primeDelay (primeProduct V)) f u) (Set.Icc 0 T) volume) :
    (∫ u in Set.Icc 0 T, (cascade primeWeight primeDelay B.toList f u) ^ 2) =
      ∑ U ∈ B.powerset, ∑ V ∈ B.powerset,
        (((ArithmeticFunction.moebius (primeProduct U) : ℝ) * primeWeight (primeProduct U)) *
          ((ArithmeticFunction.moebius (primeProduct V) : ℝ) * primeWeight (primeProduct V))) *
        (∫ u in Set.Icc 0 T, shift (primeDelay (primeProduct U)) f u *
          shift (primeDelay (primeProduct V)) f u) := by
  rw [prime_cascade_exact B.toList B.nodup_toList
    (by simpa only [Finset.mem_toList] using hB) f hf]
  simp only [Finset.toList_toFinset]
  exact signed_integral_square B.powerset
    (fun U => (ArithmeticFunction.moebius (primeProduct U) : ℝ) * primeWeight (primeProduct U))
    (fun U => shift (primeDelay (primeProduct U)) f) T hi

end
end ASBNP04.FiniteProduct

#print axioms ASBNP04.FiniteProduct.cascade_eq_signedExpansion
#print axioms ASBNP04.FiniteProduct.cascade_order_independent
#print axioms ASBNP04.FiniteProduct.moebius_primeProduct
#print axioms ASBNP04.FiniteProduct.completed_pickup_identification
#print axioms ASBNP04.FiniteProduct.restrict_cascade
#print axioms ASBNP04.FiniteProduct.primeState_block_factorization
#print axioms ASBNP04.FiniteProduct.block_energy_exact
