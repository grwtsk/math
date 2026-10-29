/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionPrimeSeries
import Mathlib.NumberTheory.EulerProduct.Basic
import Mathlib.Analysis.PSeries

/-!
# Reciprocal mass of the actual positive density correction

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
Complete finite-prime sums supply an independent global summability bound;
global Euler summation is used only after that premise is proved.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions

def densityCorrectionReciprocal (n : ℕ) : ℝ := densityMoebiusCorrection n / (n : ℝ)
def reciprocalSquare (n : ℕ) : ℝ := 1 / (n : ℝ)^2

theorem density_reciprocal_nonneg (n : ℕ) : 0 ≤ densityCorrectionReciprocal n :=
  div_nonneg (density_moebius_correction_nonneg n) (Nat.cast_nonneg n)

theorem density_reciprocal_one : densityCorrectionReciprocal 1 = 1 := by
  simp [densityCorrectionReciprocal, density_moebius_correction_one]

theorem density_reciprocal_mul {m n : ℕ} (h : m.Coprime n) :
    densityCorrectionReciprocal (m*n) = densityCorrectionReciprocal m * densityCorrectionReciprocal n := by
  simp only [densityCorrectionReciprocal, Nat.cast_mul,
    density_moebius_correction_multiplicative.map_mul_of_coprime h, div_eq_mul_inv, mul_inv_rev]
  ring

theorem reciprocal_square_mul (m n : ℕ) :
    reciprocalSquare (m*n) = reciprocalSquare m * reciprocalSquare n := by
  simp [reciprocalSquare, Nat.cast_mul, mul_pow, div_eq_mul_inv, mul_comm]

theorem reciprocal_square_summable : Summable reciprocalSquare :=
  Real.summable_one_div_nat_pow.mpr (by norm_num : 1 < (2 : ℕ))

theorem density_reciprocal_prime_hasSum {p : ℕ} (hp : p.Prime) :
    HasSum (fun k : ℕ => densityCorrectionReciprocal (p^k))
      (1 + 1 / ((p : ℝ)^2-1)) := by
  have h := (density_correction_prime_reciprocal_hasSum hp)
  have hs : HasSum (fun k : ℕ => densityCorrectionReciprocal (p^(k+1)))
      (1 / ((p : ℝ)^2-1)) := by
    simpa only [densityCorrectionReciprocal, Nat.cast_pow] using h
  have ht := (hasSum_nat_add_iff (f := fun k : ℕ => densityCorrectionReciprocal (p^k))
    (g := 1 / ((p : ℝ)^2-1)) 1).mp hs
  simpa [densityCorrectionReciprocal, density_moebius_correction_one, add_comm] using ht

theorem reciprocal_square_prime_hasSum {p : ℕ} (hp : p.Prime) :
    HasSum (fun k : ℕ => reciprocalSquare (p^k))
      (1 + 1 / ((p : ℝ)^2-1)) := by
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hz : (p : ℝ)^2 ≠ 0 := by positivity
  have hq : 1 / (p : ℝ)^2 < 1 := (div_lt_one (by positivity)).mpr (by nlinarith)
  have h := hasSum_geometric_of_lt_one (by positivity : 0 ≤ 1 / (p : ℝ)^2) hq
  have he : (1-1/(p : ℝ)^2)⁻¹ = 1 + 1/((p : ℝ)^2-1) := by
    have hd : (p : ℝ)^2-1 ≠ 0 := by nlinarith
    field_simp [hz, hd]
    ring
  rw [he] at h
  convert h using 1
  funext k
  simp only [reciprocalSquare, Nat.cast_pow, one_div_pow]
  rw [← pow_mul, ← pow_mul, Nat.mul_comm]

theorem density_reciprocal_factored_hasSum (s : Finset ℕ) :
    HasSum (fun n : Nat.factoredNumbers s => densityCorrectionReciprocal n)
      (∑' n : Nat.factoredNumbers s, reciprocalSquare n) := by
  have hf := EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum
    density_reciprocal_one (fun h => density_reciprocal_mul h)
    (fun hp => (density_reciprocal_prime_hasSum hp).summable.norm) s
  have hg := EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum
    (by norm_num [reciprocalSquare]) (fun {_ _} _ => reciprocal_square_mul _ _)
    (fun hp => (reciprocal_square_prime_hasSum hp).summable.norm) s
  have he : (∏ p ∈ s with p.Prime, ∑' k : ℕ, densityCorrectionReciprocal (p^k)) =
      (∏ p ∈ s with p.Prime, ∑' k : ℕ, reciprocalSquare (p^k)) := by
    apply Finset.prod_congr rfl
    intro p hp
    rw [(density_reciprocal_prime_hasSum (Finset.mem_filter.mp hp).2).tsum_eq,
      (reciprocal_square_prime_hasSum (Finset.mem_filter.mp hp).2).tsum_eq]
  rw [he, ← hg.2.tsum_eq] at hf
  exact hf.2

theorem density_reciprocal_range_bound (N : ℕ) :
    (∑ n ∈ Finset.range N, densityCorrectionReciprocal n) ≤ ∑' n : ℕ, reciprocalSquare n := by
  let s := Finset.range N
  let P := Nat.factoredNumbers s
  have hf := density_reciprocal_factored_hasSum s
  have hi : Summable (P.indicator densityCorrectionReciprocal) :=
    summable_subtype_iff_indicator.mp hf.summable
  have he : (∑ n ∈ Finset.range N, densityCorrectionReciprocal n) =
      ∑ n ∈ Finset.range N, P.indicator densityCorrectionReciprocal n := by
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hn0 : n=0
    · subst n
      have h0 : (0 : ℕ) ∉ P := fun h => (Nat.ne_zero_of_mem_factoredNumbers h) rfl
      rw [Set.indicator_of_notMem h0]
      simp [densityCorrectionReciprocal]
    · exact (Set.indicator_of_mem (Nat.mem_factoredNumbers_iff_forall_le.mpr
        ⟨hn0, fun p hpn _ _ => Finset.mem_range.mpr (lt_of_le_of_lt hpn (Finset.mem_range.mp hn))⟩)
        densityCorrectionReciprocal).symm
  rw [he]
  calc
    _ ≤ ∑' n : ℕ, P.indicator densityCorrectionReciprocal n :=
      hi.sum_le_tsum _ (fun n _ => Set.indicator_nonneg (fun n _ => density_reciprocal_nonneg n) n)
    _ = ∑' n : P, densityCorrectionReciprocal n := (tsum_subtype P _).symm
    _ = ∑' n : P, reciprocalSquare n := hf.tsum_eq
    _ ≤ ∑' n : ℕ, reciprocalSquare n :=
      (reciprocal_square_summable.subtype P).tsum_le_tsum_of_inj Subtype.val
        Subtype.val_injective (fun n _ => div_nonneg (by norm_num) (sq_nonneg (n : ℝ)))
        (fun _ => le_rfl) reciprocal_square_summable

theorem density_reciprocal_summable : Summable densityCorrectionReciprocal :=
  summable_of_sum_range_le density_reciprocal_nonneg density_reciprocal_range_bound

theorem density_reciprocal_tsum :
    (∑' n : ℕ, densityCorrectionReciprocal n) = ∑' n : ℕ, reciprocalSquare n := by
  have hf := EulerProduct.eulerProduct_hasProd density_reciprocal_one
    (fun h => density_reciprocal_mul h) density_reciprocal_summable.norm
    (by simp [densityCorrectionReciprocal])
  have hg := EulerProduct.eulerProduct_hasProd (by norm_num [reciprocalSquare])
    (fun {_ _} _ => reciprocal_square_mul _ _) reciprocal_square_summable.norm
    (by simp [reciprocalSquare])
  have he : (fun p : Nat.Primes => ∑' k : ℕ, densityCorrectionReciprocal (p.val^k)) =
      (fun p : Nat.Primes => ∑' k : ℕ, reciprocalSquare (p.val^k)) := by
    funext p
    rw [(density_reciprocal_prime_hasSum p.property).tsum_eq,
      (reciprocal_square_prime_hasSum p.property).tsum_eq]
  rw [he] at hf
  exact hf.unique hg

/-- Positive indexing states the source mass without a division-at-zero convention. -/
theorem density_positive_reciprocal_summable :
    Summable (fun n : ℕ => densityMoebiusCorrection (n+1) / ((n+1 : ℕ) : ℝ)) := by
  exact (summable_nat_add_iff (f := densityCorrectionReciprocal) 1).mpr density_reciprocal_summable

theorem density_positive_reciprocal_tsum :
    (∑' n : ℕ, densityMoebiusCorrection (n+1) / ((n+1 : ℕ) : ℝ)) =
      ∑' n : ℕ, 1 / (((n+1 : ℕ) : ℝ)^2) := by
  have hf := density_reciprocal_summable.sum_add_tsum_nat_add 1
  have hg := reciprocal_square_summable.sum_add_tsum_nat_add 1
  simp only [Finset.sum_range_one] at hf hg
  have hf0 : densityCorrectionReciprocal 0 = 0 := by simp [densityCorrectionReciprocal]
  have hg0 : reciprocalSquare 0 = 0 := by norm_num [reciprocalSquare]
  rw [hf0, zero_add] at hf
  rw [hg0, zero_add] at hg
  change (∑' n : ℕ, densityCorrectionReciprocal (n+1)) = ∑' n : ℕ, reciprocalSquare (n+1)
  rw [hf, hg]
  exact density_reciprocal_tsum

end GRWTSK.NumberTheory.ArithmeticFunctions
