/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Pro.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale
import GRWTSK.Geometry.ThreePlusOne.DynamicWitnessChannel
import Mathlib.Topology.Instances.Int
import Mathlib.Topology.Sequences
import Mathlib.Tactic

set_option autoImplicit false

open Filter Topology
open scoped Topology

/-!
# Topological boundary of prime-exponent scale coordinates

The exact prime-coordinate splitting of the arithmetic logarithmic scale is
algebraic.  With the subspace topology inherited from `ℝ`, the coordinate maps
are discontinuous.  Hence the algebraic direct sum cannot be promoted to a
Euclidean topological direct sum while retaining discrete valuation
coordinates.

The file also records the downstream three-plus-one shape constraint: three
fixed phases form the triangular base, while the fourth channel is a dependent
finite witness fiber whose cardinality may vary with the base state.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale

/-- The arithmetic log-scale point represented by a positive rational. -/
noncomputable def positiveRationalLogScale
    (r : PositiveRationalScale) : ArithmeticLogScale :=
  exponentToScale (valuationCoordinates r)

@[simp]
theorem positiveRationalLogScale_coordinate
    (r : PositiveRationalScale) (p : PrimeIndex) :
    scalePrimeCoordinate p (positiveRationalLogScale r) =
      padicValRat p.1 (positiveRationalValue r) := by
  simp [positiveRationalLogScale, valuationCoordinates_apply]

theorem positiveRationalLogScale_value
    (r : PositiveRationalScale) :
    (positiveRationalLogScale r : ℝ) =
      Real.log (positiveRationalValue r) := by
  change logRealization (positiveRationalExponent r) = _
  rw [logRealization_eq_log_rationalRealization,
    rationalRealization_positiveRationalExponent]

/-- A sequence of positive rationals converging to one in the real topology
while its `p`-valuation tends to negative infinity.  The `n+1` exponent avoids
a zero denominator exponent in the controls. -/
noncomputable def nearOneValue (p : PrimeIndex) (n : ℕ) : ℚ :=
  ((p.1 : ℚ) ^ (n + 1) + 1) / ((p.1 : ℚ) ^ (n + 1))

theorem nearOneValue_pos (p : PrimeIndex) (n : ℕ) :
    0 < nearOneValue p n := by
  have hp : (0 : ℚ) < p.1 := by exact_mod_cast p.2.pos
  unfold nearOneValue
  positivity

theorem nearOneValue_ne_zero (p : PrimeIndex) (n : ℕ) :
    nearOneValue p n ≠ 0 :=
  ne_of_gt (nearOneValue_pos p n)

/-- The near-one sequence as positive rational units. -/
noncomputable def nearOnePositiveRational
    (p : PrimeIndex) (n : ℕ) : PositiveRationalScale :=
  ⟨Units.mk0 (nearOneValue p n) (nearOneValue_ne_zero p n),
    nearOneValue_pos p n⟩

@[simp]
theorem nearOnePositiveRational_value
    (p : PrimeIndex) (n : ℕ) :
    positiveRationalValue (nearOnePositiveRational p n) =
      nearOneValue p n :=
  rfl

/-- The numerator `p^(n+1)+1` is a `p`-adic unit. -/
theorem padicValRat_prime_pow_add_one
    (p : PrimeIndex) (n : ℕ) :
    padicValRat p.1 (((p.1 : ℚ) ^ (n + 1)) + 1) = 0 := by
  let : Fact p.1.Prime := ⟨p.2⟩
  have hcast : (p.1 : ℚ) ^ (n + 1) + 1 = ((p.1 ^ (n + 1) + 1 : ℕ) : ℚ) := by
    push_cast
    rfl
  rw [hcast, padicValRat.of_nat]
  have hnotdvd : ¬ p.1 ∣ p.1 ^ (n + 1) + 1 := by
    intro hdiv
    have hself : p.1 ∣ p.1 ^ (n + 1) := dvd_pow_self _ (Nat.succ_ne_zero n)
    have hone : p.1 ∣ 1 := (Nat.dvd_add_iff_right hself).mpr hdiv
    exact p.2.ne_one (Nat.dvd_one.mp hone)
  exact_mod_cast padicValNat.eq_zero_of_not_dvd hnotdvd

/-- Exact valuation of the near-one sequence. -/
theorem nearOne_valuation (p : PrimeIndex) (n : ℕ) :
    padicValRat p.1 (nearOneValue p n) = -(n + 1 : ℤ) := by
  let : Fact p.1.Prime := ⟨p.2⟩
  have hp : (0 : ℚ) < p.1 := by exact_mod_cast p.2.pos
  rw [nearOneValue, padicValRat.div]
  · rw [padicValRat_prime_pow_add_one, padicValRat.pow,
      padicValRat.self p.2.two_le]
    push_cast
    ring
  · positivity
  · exact pow_ne_zero _ hp.ne'

/-- Near-one sequence in the arithmetic logarithmic subgroup. -/
noncomputable def nearOneLogScale
    (p : PrimeIndex) (n : ℕ) : ArithmeticLogScale :=
  positiveRationalLogScale (nearOnePositiveRational p n)

@[simp]
theorem nearOneLogScale_coordinate
    (p : PrimeIndex) (n : ℕ) :
    scalePrimeCoordinate p (nearOneLogScale p n) =
      -(n + 1 : ℤ) := by
  simp [nearOneLogScale, positiveRationalLogScale_coordinate,
    nearOne_valuation]

/-- The real values of the near-one logarithmic scales converge to zero. -/
theorem nearOneLogScale_tendsto_zero (p : PrimeIndex) :
    Tendsto (fun n => (nearOneLogScale p n : ℝ)) atTop (𝓝 0) := by
  have hp : (1 : ℝ) < p.1 := by exact_mod_cast p.2.one_lt
  have hfn : (fun n => (nearOneLogScale p n : ℝ)) =
      (fun n : ℕ => Real.log (1 + ((p.1 : ℝ)⁻¹) ^ (n + 1))) := by
    funext n
    rw [nearOneLogScale, positiveRationalLogScale_value,
      nearOnePositiveRational_value, nearOneValue]
    push_cast
    congr 1
    rw [inv_pow]
    field_simp [show (p.1 : ℝ) ≠ 0 by exact_mod_cast p.2.ne_zero]
  rw [hfn]
  have hpow : Tendsto (fun n : ℕ => ((p.1 : ℝ)⁻¹) ^ n) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_abs_lt_one (by
      rw [abs_inv, abs_of_nonneg (by positivity)]
      exact inv_lt_one_of_one_lt₀ hp)
  have hsucc : Tendsto (fun n : ℕ => ((p.1 : ℝ)⁻¹) ^ (n + 1)) atTop (𝓝 0) := by
    simpa only [pow_succ, zero_mul] using hpow.mul_const ((p.1 : ℝ)⁻¹)
  have hnear : Tendsto (fun n : ℕ => 1 + ((p.1 : ℝ)⁻¹) ^ (n + 1)) atTop (𝓝 1) := by
    simpa only [add_zero] using tendsto_const_nhds.add hsucc
  simpa only [Real.log_one, Function.comp_def] using
    (Real.continuousAt_log (by norm_num : (1 : ℝ) ≠ 0)).tendsto.comp hnear

/-- The coordinate values do not converge to zero in the discrete topology on
`ℤ`; in fact their absolute values diverge. -/
theorem nearOneCoordinate_not_tendsto_zero (p : PrimeIndex) :
    ¬ Tendsto (fun n => scalePrimeCoordinate p (nearOneLogScale p n))
      atTop (𝓝 0) := by
  intro h
  have hzero : ∀ᶠ n : ℕ in atTop,
      scalePrimeCoordinate p (nearOneLogScale p n) = 0 := by
    simpa only [nhds_discrete, tendsto_pure] using h
  obtain ⟨n, hn⟩ := hzero.exists
  have hn' : -(n + 1 : ℤ) = 0 := by
    simpa only [nearOneLogScale_coordinate] using hn
  omega

/-- Every prime coordinate is discontinuous for the Euclidean subspace topology
on the arithmetic logarithmic scale. -/
theorem scalePrimeCoordinate_not_continuous (p : PrimeIndex) :
    ¬ Continuous (scalePrimeCoordinate p) := by
  intro hcont
  have hseq : Tendsto (nearOneLogScale p) atTop (𝓝 0) :=
    tendsto_subtype_rng.mpr (nearOneLogScale_tendsto_zero p)
  have ht := (hcont.tendsto 0).comp hseq
  apply nearOneCoordinate_not_tendsto_zero p
  simpa only [map_zero, Function.comp_def] using ht

/-- No additive homomorphism from the divisible group `ℝ` to `ℤ` can be
nonzero. -/
theorem realAddHom_to_int_eq_zero (f : ℝ →+ ℤ) : f = 0 := by
  ext x
  by_contra hx
  let n : ℕ := Int.natAbs (f x) + 1
  have hnpos : 0 < n := Nat.succ_pos _
  let y : ℝ := x / n
  have hxy : n • y = x := by
    rw [nsmul_eq_mul]
    dsimp [y]
    field_simp
  have hdiv : (n : ℤ) ∣ f x := by
    refine ⟨f y, ?_⟩
    rw [← hxy, map_nsmul]
    simp only [nsmul_eq_mul]
  have hle : n ≤ Int.natAbs (f x) := by
    exact Int.natAbs_le_of_dvd_ne_zero hdiv hx
  exact (Nat.not_succ_le_self (Int.natAbs (f x))) hle

/-- In particular, no additive map on all real logarithmic scales can extend a
nonzero prime coordinate. -/
theorem no_real_additive_extension_of_primeCoordinate
    (p : PrimeIndex) :
    ¬ ∃ f : ℝ →+ ℤ,
      ∀ t : ArithmeticLogScale, f t.1 = scalePrimeCoordinate p t := by
  rintro ⟨f, hf⟩
  have hz : f = 0 := realAddHom_to_int_eq_zero f
  have hone := hf (scalePrimeSection p 1)
  rw [hz] at hone
  simp at hone

/-- Real scalar extension of the logarithmic combination. -/
noncomputable def realLogCombination (x : PrimeIndex →₀ ℝ) : ℝ :=
  x.sum fun p a => a * Real.log (p.1 : ℝ)

/-- Prime two as an indexed prime. -/
def primeTwo : PrimeIndex :=
  ⟨2, by norm_num⟩

/-- Prime three as an indexed prime. -/
def primeThree : PrimeIndex :=
  ⟨3, by norm_num⟩

/-- A nonzero real coefficient vector killed by the real logarithmic
combination.  This is the scalar-extension obstruction. -/
noncomputable def realScalarKernelVector : PrimeIndex →₀ ℝ :=
  Finsupp.single primeTwo (Real.log 3) -
    Finsupp.single primeThree (Real.log 2)

theorem realScalarKernelVector_ne_zero :
    realScalarKernelVector ≠ 0 := by
  intro h
  have htwo := congrArg (fun x : PrimeIndex →₀ ℝ => x primeTwo) h
  simp [realScalarKernelVector, primeTwo, primeThree,
    Real.log_ne_zero_of_pos_of_ne_one (by norm_num : (0 : ℝ) < 3)
      (by norm_num : (3 : ℝ) ≠ 1)] at htwo

theorem realLogCombination_kernelVector :
    realLogCombination realScalarKernelVector = 0 := by
  rw [realLogCombination, realScalarKernelVector,
    Finsupp.sum_sub_index (by intros; ring)]
  simp [primeTwo, primeThree]
  ring

/-- Hence the real-linear scalar extension of the integral prime-log map cannot
be injective. -/
theorem realLogCombination_not_injective :
    ¬ Function.Injective realLogCombination := by
  intro hinj
  apply realScalarKernelVector_ne_zero
  apply hinj
  have hz : realLogCombination (0 : PrimeIndex →₀ ℝ) = 0 := by
    simp [realLogCombination]
  exact realLogCombination_kernelVector.trans hz.symm

end GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale
