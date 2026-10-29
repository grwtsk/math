/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Generic partial-sum facts; the ordinary/rooted distinction follows the conventions
of Pham–Sauermann, arXiv:2602.15797v1, Section 1. -/
import Mathlib.Algebra.BigOperators.Group.List.Basic
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Order.Interval.Finset.Fin
import Mathlib.Data.List.Nodup
import Mathlib.Data.List.Range
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Abel

set_option autoImplicit false

namespace GRWTSK.PartialSumOrdering

variable {G : Type*} [AddCommGroup G]

/-- Sum of the first `k` entries (positions are one based when used as endpoints). -/
def prefixSum (xs : List G) (k : ℕ) : G := (xs.take k).sum

/-- The nonempty post-step sums, with the initial zero deliberately omitted. -/
def postSums (xs : List G) : List G :=
  (List.range' 1 xs.length).map (prefixSum xs)

def ValidPartialSumOrder (xs : List G) : Prop := (postSums xs).Nodup

def RootedValidPartialSumOrder (xs : List G) : Prop := (0 :: postSums xs).Nodup

def DistinctNonzeroLabels (xs : List G) : Prop := xs.Nodup ∧ ∀ x ∈ xs, x ≠ 0

/-- One-based inclusive `[a,b]`; malformed or empty intervals are never zero-sum intervals. -/
def ZeroSumInterval (xs : List G) (a b : ℕ) : Prop :=
  1 ≤ a ∧ a ≤ b ∧ b ≤ xs.length ∧
    ((xs.drop (a - 1)).take (b + 1 - a)).sum = 0

instance [DecidableEq G] (xs : List G) : Decidable (ValidPartialSumOrder xs) :=
  inferInstanceAs (Decidable (postSums xs).Nodup)

instance [DecidableEq G] (xs : List G) : Decidable (RootedValidPartialSumOrder xs) :=
  inferInstanceAs (Decidable (0 :: postSums xs).Nodup)

instance [DecidableEq G] (xs : List G) : Decidable (DistinctNonzeroLabels xs) :=
  inferInstanceAs (Decidable (xs.Nodup ∧ ∀ x ∈ xs, x ≠ 0))

instance [DecidableEq G] (xs : List G) (a b : ℕ) : Decidable (ZeroSumInterval xs a b) :=
  inferInstanceAs (Decidable (1 ≤ a ∧ a ≤ b ∧ b ≤ xs.length ∧
    ((xs.drop (a - 1)).take (b + 1 - a)).sum = 0))

@[simp] theorem prefixSum_zero (xs : List G) : prefixSum xs 0 = 0 := by
  simp [prefixSum]

@[simp] theorem prefixSum_length (xs : List G) : prefixSum xs xs.length = xs.sum := by
  simp [prefixSum]

theorem prefixSum_succ (xs : List G) (k : ℕ) (hk : k < xs.length) :
    prefixSum xs (k + 1) = prefixSum xs k + xs[k] := List.sum_take_succ xs k hk

omit [AddCommGroup G] in
theorem mem_postIndices {xs : List G} {k : ℕ} :
    k ∈ List.range' 1 xs.length ↔ 1 ≤ k ∧ k ≤ xs.length := by
  rw [List.mem_range']
  constructor
  · rintro ⟨i, hi, rfl⟩
    simp only [one_mul]
    omega
  · rintro ⟨hk, hn⟩
    exact ⟨k - 1, by omega, by omega⟩

/-- The interval sum is exactly the difference between its boundary prefix sums. -/
theorem intervalSum_eq_sub (xs : List G) (a b : ℕ) (ha : 1 ≤ a) (hab : a ≤ b) :
    ((xs.drop (a - 1)).take (b + 1 - a)).sum =
      prefixSum xs b - prefixSum xs (a - 1) := by
  have hn : (a - 1) + (b + 1 - a) = b := by omega
  have h := congrArg (fun ys : List G => ys.sum)
    (List.take_add (l := xs) (i := a - 1) (j := b + 1 - a))
  rw [hn, List.sum_append] at h
  unfold prefixSum
  rw [h]
  abel

theorem zeroSumInterval_iff_prefixSum_eq (xs : List G) (a b : ℕ)
    (ha : 1 ≤ a) (hab : a ≤ b) (hb : b ≤ xs.length) :
    ZeroSumInterval xs a b ↔ prefixSum xs b = prefixSum xs (a - 1) := by
  simp [ZeroSumInterval, ha, hab, hb, intervalSum_eq_sub xs a b ha hab, sub_eq_zero]

/-- Ordinary validity compares only positive prefix indices, including consecutive ones. -/
theorem valid_iff_prefixSum_ne (xs : List G) :
    ValidPartialSumOrder xs ↔
      ∀ i j, 1 ≤ i → i < j → j ≤ xs.length → prefixSum xs i ≠ prefixSum xs j := by
  rw [ValidPartialSumOrder, postSums, List.nodup_map_iff_inj_on List.nodup_range']
  constructor
  · intro h i j hi hij hj he
    have := h i (mem_postIndices.mpr ⟨hi, by omega⟩)
      j (mem_postIndices.mpr ⟨by omega, hj⟩) he
    omega
  · intro h i hi j hj he
    obtain ⟨hi1, hin⟩ := mem_postIndices.mp hi
    obtain ⟨hj1, hjn⟩ := mem_postIndices.mp hj
    rcases lt_trichotomy i j with hij | hij | hij
    · exact False.elim (h i j hi1 hij hjn he)
    · exact hij
    · exact False.elim (h j i hj1 hij hin he.symm)

/-- Exactly the zero-sum intervals beginning strictly after the first position are excluded. -/
theorem valid_iff_no_zeroSumInterval (xs : List G) :
    ValidPartialSumOrder xs ↔ ∀ a b, 2 ≤ a → ¬ ZeroSumInterval xs a b := by
  rw [valid_iff_prefixSum_ne]
  constructor
  · intro h a b ha hz
    have hab := hz.2.1
    have hb := hz.2.2.1
    have he := (zeroSumInterval_iff_prefixSum_eq xs a b (by omega) hab hb).mp hz
    exact h (a - 1) b (by omega) (by omega) hb he.symm
  · intro h i j hi hij hj he
    apply h (i + 1) j (by omega)
    apply (zeroSumInterval_iff_prefixSum_eq xs (i + 1) j (by omega) (by omega) hj).mpr
    simpa using he.symm

theorem rooted_iff_valid_and_nonzero_prefix (xs : List G) :
    RootedValidPartialSumOrder xs ↔
      ValidPartialSumOrder xs ∧ ∀ k, 1 ≤ k → k ≤ xs.length → prefixSum xs k ≠ 0 := by
  simp only [RootedValidPartialSumOrder, List.nodup_cons, ValidPartialSumOrder,
    postSums, List.mem_map]
  constructor
  · rintro ⟨hn, hv⟩
    refine ⟨hv, ?_⟩
    intro k hk hn' he
    exact hn ⟨k, mem_postIndices.mpr ⟨hk, hn'⟩, he⟩
  · rintro ⟨hv, hn⟩
    refine ⟨?_, hv⟩
    rintro ⟨k, hk, he⟩
    obtain ⟨hk1, hkn⟩ := mem_postIndices.mp hk
    exact hn k hk1 hkn he

/-- Rooted validity also excludes zero-sum intervals beginning at the first position. -/
theorem rooted_iff_no_zeroSumInterval (xs : List G) :
    RootedValidPartialSumOrder xs ↔ ∀ a b, ¬ ZeroSumInterval xs a b := by
  rw [rooted_iff_valid_and_nonzero_prefix, valid_iff_no_zeroSumInterval]
  constructor
  · rintro ⟨hv, hn⟩ a b hz
    by_cases ha : a = 1
    · subst a
      have he := (zeroSumInterval_iff_prefixSum_eq xs 1 b (by omega) hz.2.1 hz.2.2.1).mp hz
      exact hn b hz.2.1 hz.2.2.1 (by simpa using he)
    · exact hv a b (by have := hz.1; omega) hz
  · intro h
    refine ⟨fun a b _ => h a b, ?_⟩
    intro k hk hn he
    exact h 1 k ((zeroSumInterval_iff_prefixSum_eq xs 1 k (by omega) hk hn).mpr
      (by simpa using he))

theorem rooted_implies_valid {xs : List G} (h : RootedValidPartialSumOrder xs) :
    ValidPartialSumOrder xs := (rooted_iff_valid_and_nonzero_prefix xs).mp h |>.1

theorem nonzero_no_singleton_interval (xs : List G) (hn : ∀ x ∈ xs, x ≠ 0)
    (a : ℕ) : ¬ ZeroSumInterval xs a a := by
  intro hz
  have ha := hz.1
  have hal : a - 1 < xs.length := by have := hz.2.2.1; omega
  have he := (zeroSumInterval_iff_prefixSum_eq xs a a ha le_rfl hz.2.2.1).mp hz
  have hs := prefixSum_succ xs (a - 1) hal
  have ha' : a - 1 + 1 = a := by omega
  rw [ha'] at hs
  have hz' : xs[a - 1] = 0 := by
    have hcancel : prefixSum xs (a - 1) + xs[a - 1] = prefixSum xs (a - 1) + 0 := by
      simpa [he] using hs.symm
    exact add_left_cancel hcancel
  exact hn _ (List.getElem_mem hal) hz'

/-- For nonzero entries, singleton intervals are automatically harmless. -/
theorem valid_iff_no_long_zeroSumInterval (xs : List G) (hn : ∀ x ∈ xs, x ≠ 0) :
    ValidPartialSumOrder xs ↔ ∀ a b, 2 ≤ a → a < b → ¬ ZeroSumInterval xs a b := by
  rw [valid_iff_no_zeroSumInterval]
  constructor
  · exact fun h a b ha _ => h a b ha
  · intro h a b ha hz
    by_cases hab : a < b
    · exact h a b ha hab hz
    · have he : a = b := by have := hz.2.1; omega
      subst b
      exact nonzero_no_singleton_interval xs hn a hz

theorem rooted_iff_no_long_zeroSumInterval (xs : List G) (hn : ∀ x ∈ xs, x ≠ 0) :
    RootedValidPartialSumOrder xs ↔ ∀ a b, a < b → ¬ ZeroSumInterval xs a b := by
  rw [rooted_iff_no_zeroSumInterval]
  constructor
  · exact fun h a b _ => h a b
  · intro h a b hz
    by_cases hab : a < b
    · exact h a b hab hz
    · have he : a = b := by have := hz.2.1; omega
      subst b
      exact nonzero_no_singleton_interval xs hn a hz

/-- Translation changes the initial phase, never equality of post-step phases. -/
theorem translated_postSums_nodup_iff (xs : List G) (phase : G) :
    ((postSums xs).map (fun x => phase + x)).Nodup ↔ ValidPartialSumOrder xs := by
  exact List.nodup_map_iff (fun _ _ h => add_left_cancel h)

/-- The finite-position inclusive interval is the difference of its boundary prefixes. -/
theorem sum_Icc_eq_prefixSum_sub {n : ℕ} (σ : Fin n → G) (a b : Fin n) (hab : a ≤ b) :
    (∑ i ∈ Finset.Icc a b, σ i) =
      prefixSum (List.ofFn σ) (b.val + 1) - prefixSum (List.ofFn σ) a.val := by
  classical
  rw [prefixSum, prefixSum, List.sum_take_ofFn, List.sum_take_ofFn]
  have hs : (Finset.univ.filter (fun i : Fin n => i.val < a.val)) ⊆
      Finset.univ.filter (fun i : Fin n => i.val < b.val + 1) := by
    intro i hi
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    have := hab
    simp only [Fin.le_def] at this
    omega
  have he : (Finset.univ.filter (fun i : Fin n => i.val < b.val + 1)) \
      (Finset.univ.filter (fun i : Fin n => i.val < a.val)) = Finset.Icc a b := by
    ext i
    simp only [Finset.mem_sdiff, Finset.mem_filter, Finset.mem_univ, true_and,
      Finset.mem_Icc, Fin.le_def]
    omega
  rw [← Finset.sum_sdiff_eq_sub hs, he]

/-- The paper's finite-position convention (zero based here) excludes singleton
intervals by its `a < b` condition; nonzero labels supply exactly that missing case. -/
theorem valid_ofFn_iff_no_zero_sum_Icc {n : ℕ} (σ : Fin n → G) (hn : ∀ i, σ i ≠ 0) :
    ValidPartialSumOrder (List.ofFn σ) ↔
      ∀ a b : Fin n, 1 ≤ a.val → a < b → (∑ i ∈ Finset.Icc a b, σ i) ≠ 0 := by
  have hnonzero : ∀ x ∈ List.ofFn σ, x ≠ 0 := by
    intro x hx
    obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hx
    exact hn i
  rw [valid_iff_no_long_zeroSumInterval _ hnonzero]
  constructor
  · intro h a b ha hab hz
    have hbound : b.val + 1 ≤ (List.ofFn σ).length := by simp
    have hab' : a.val + 1 ≤ b.val + 1 := by have := hab.le; simpa using this
    have he := (sum_Icc_eq_prefixSum_sub σ a b hab.le).symm.trans hz
    have hz' : ZeroSumInterval (List.ofFn σ) (a.val + 1) (b.val + 1) := by
      apply (zeroSumInterval_iff_prefixSum_eq _ _ _ (by omega) hab' hbound).mpr
      simpa using sub_eq_zero.mp he
    exact h (a.val + 1) (b.val + 1) (by omega) (by exact Nat.add_lt_add_right hab 1) hz'
  · intro h a b ha hab hz
    have hbl : b ≤ n := by simpa using hz.2.2.1
    let i : Fin n := ⟨a - 1, by omega⟩
    let j : Fin n := ⟨b - 1, by omega⟩
    have hij : i < j := by change a - 1 < b - 1; omega
    apply h i j (by change 1 ≤ a - 1; omega) hij
    rw [sum_Icc_eq_prefixSum_sub σ i j hij.le]
    have he := (zeroSumInterval_iff_prefixSum_eq _ a b (by omega) hab.le hz.2.2.1).mp hz
    have hb' : b - 1 + 1 = b := by omega
    simpa only [i, j, hb', sub_self] using congrArg (fun z => z - prefixSum (List.ofFn σ) (a - 1)) he

theorem permutation_preserves_total {xs ys : List G} (h : xs.Perm ys) :
    prefixSum xs xs.length = prefixSum ys ys.length := by
  simpa using h.sum_eq

/-- Injective nonzero cyclic labels fit in the `p-1` nonzero residues; primality is unnecessary. -/
theorem distinctNonzeroLabels_length_le {p : ℕ} [NeZero p] (xs : List (ZMod p))
    (h : DistinctNonzeroLabels xs) : xs.length ≤ p - 1 := by
  have hs : xs.toFinset ⊆ Finset.univ.erase 0 := by
    intro x hx
    exact Finset.mem_erase.mpr ⟨h.2 x (List.mem_toFinset.mp hx), Finset.mem_univ x⟩
  have hc := Finset.card_le_card hs
  simpa [List.toFinset_card_of_nodup h.1, Finset.card_erase_of_mem (Finset.mem_univ (0 : ZMod p)),
    ZMod.card] using hc

/-- The final post-step phase may return to the initial phase. -/
theorem zmod5_unrooted_return :
    ValidPartialSumOrder ([1, 4] : List (ZMod 5)) ∧
      prefixSum ([1, 4] : List (ZMod 5)) 2 = 0 ∧
      ¬ RootedValidPartialSumOrder ([1, 4] : List (ZMod 5)) := by
  decide

theorem ordinary_does_not_imply_rooted :
    ¬ (∀ xs : List (ZMod 5), ValidPartialSumOrder xs → RootedValidPartialSumOrder xs) := by
  intro h
  exact zmod5_unrooted_return.2.2 (h _ zmod5_unrooted_return.1)

theorem zero_label_can_repeat_postSum :
    ¬ ValidPartialSumOrder ([1, 0] : List (ZMod 5)) := by decide

theorem duplicate_labels_can_have_valid_postSums :
    ValidPartialSumOrder ([1, 1] : List (ZMod 5)) ∧
      ¬ DistinctNonzeroLabels ([1, 1] : List (ZMod 5)) := by decide

/-- The complete sum is permutation invariant, intermediate sums are not. -/
theorem reordering_changes_intermediate_prefix :
    ([1, 2] : List ℤ).Perm [2, 1] ∧
      prefixSum ([1, 2] : List ℤ) 1 ≠ prefixSum ([2, 1] : List ℤ) 1 := by
  constructor
  · exact List.Perm.swap (2 : ℤ) 1 []
  · decide

end GRWTSK.PartialSumOrdering
