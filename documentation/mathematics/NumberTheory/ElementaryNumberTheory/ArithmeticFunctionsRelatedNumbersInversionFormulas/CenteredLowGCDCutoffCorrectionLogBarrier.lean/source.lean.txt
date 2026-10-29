/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDCutoffMobiusInversion
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailIncidence
import Mathlib.Analysis.PSeries
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

/-!
# The logarithmic barrier in the gcd-cutoff correction

The correction coefficient is the truncated divisor sum

`sum_{a | r, 2 <= a <= Y} mu(r/a)`.

Its absolute value is therefore bounded by the number of such divisors.  A
finite double count of `(r,a)` followed by `r = a*k` proves that the
coefficient-weighted quotient-square mass is

`O(X^2 log(Y) / Y)`.

At `Y = floor(sqrt X)` this is `O(X^(3/2) log X)`.  Combining this with the
currently available elementary divisibility-tail bound, which costs four
additional logarithms after squaring, gives an explicit `log^5 X` correction.
Thus the current absolute finite-counting route misses the required target by
exactly one logarithm.

An explicit theorem records that a one-log sharper pointwise divisibility-tail
bound would remove this deficit.  No structure field assumes either bound.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction

/-- Divisors that occur in the correction coefficient. -/
def gcdCutoffCorrectionDivisorSet
    (Y r : ℕ) : Finset ℕ :=
  r.divisors.filter fun a => 2 ≤ a ∧ a ≤ Y

/-- The correction coefficient is the truncated divisor Möbius sum excluding
the ordinary `a=1` Möbius term. -/
theorem gcdCutoffCorrectionCoefficient_eq_divisorSum
    {Y r : ℕ}
    (hY : 1 ≤ Y)
    (hr : 0 < r) :
    gcdCutoffCorrectionCoefficient Y r =
      ∑ a ∈ gcdCutoffCorrectionDivisorSet Y r,
        mobiusReal (r / a) := by
  have hconv :
      gcdCutoffMobiusCoefficient Y r =
        ∑ a ∈ r.divisors,
          mobiusReal (r / a) *
            gcdCutoffIndicator Y a := by
    unfold gcdCutoffMobiusCoefficient mobiusReal
    rw [ArithmeticFunction.mul_apply]
    have h :=
      Nat.sum_divisorsAntidiagonal
        (n := r)
        (fun d a =>
          (((ArithmeticFunction.moebius d : ℤ) : ℝ) *
            gcdCutoffIndicator Y a))
    simpa [ArithmeticFunction.intCoe_apply,
      mul_comm] using h
  rw [gcdCutoffCorrectionCoefficient, hconv]
  have h1mem : 1 ∈ r.divisors :=
    Nat.one_mem_divisors.mpr hr.ne'
  have hsplit :
      (∑ a ∈ r.divisors,
        mobiusReal (r / a) *
          gcdCutoffIndicator Y a) =
        mobiusReal r +
          ∑ a ∈ gcdCutoffCorrectionDivisorSet Y r,
            mobiusReal (r / a) := by
    rw [← Finset.sum_filter_add_sum_filter_not
      (s := r.divisors)
      (p := fun a => a = 1)]
    simp only [Finset.filter_eq', Finset.sum_ite_irrel,
      h1mem, Finset.sum_singleton, Nat.div_one,
      gcdCutoffIndicator_of_pos Nat.one_pos, hY,
      if_true, mul_one]
    apply congrArg₂ (· + ·) rfl
    apply Finset.sum_congr
    · ext a
      simp [gcdCutoffCorrectionDivisorSet,
        Nat.mem_divisors, hr.ne']
      omega
    · intro a ha
      have hamem := (Finset.mem_filter.mp ha).1
      have ha1 := (Finset.mem_filter.mp ha).2
      have hapos := Nat.pos_of_mem_divisors hamem
      have hale := Nat.divisor_le hamem
      simp [gcdCutoffIndicator, hapos.ne',
        ha1, hale, mul_ite]
  rw [hsplit]
  ring

/-- The correction coefficient is bounded by its finite divisor multiplicity. -/
theorem abs_gcdCutoffCorrectionCoefficient_le_card
    {Y r : ℕ}
    (hY : 1 ≤ Y)
    (hr : 0 < r) :
    |gcdCutoffCorrectionCoefficient Y r| ≤
      ((gcdCutoffCorrectionDivisorSet Y r).card : ℝ) := by
  rw [gcdCutoffCorrectionCoefficient_eq_divisorSum hY hr]
  calc
    |∑ a ∈ gcdCutoffCorrectionDivisorSet Y r,
        mobiusReal (r / a)| ≤
      ∑ a ∈ gcdCutoffCorrectionDivisorSet Y r,
        |mobiusReal (r / a)| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ _a ∈ gcdCutoffCorrectionDivisorSet Y r,
        (1 : ℝ) := by
      exact Finset.sum_le_sum fun a ha => by
        unfold mobiusReal
        exact_mod_cast
          (ArithmeticFunction.abs_moebius_le_one
            (n := r / a))
    _ = ((gcdCutoffCorrectionDivisorSet Y r).card : ℝ) := by
      simp

/-- Exact `(r,a)` incidences underlying the correction multiplicity. -/
def gcdCutoffCorrectionIncidenceSet
    (X Y : ℕ) : Finset (Σ _r : ℕ, ℕ) :=
  (Finset.Ioc Y (4 * X)).sigma fun r =>
    gcdCutoffCorrectionDivisorSet Y r

/-- Exact factor pairs after writing `r=a*k`. -/
def gcdCutoffCorrectionFactorSet
    (X Y : ℕ) : Finset (Σ _a : ℕ, ℕ) :=
  (Finset.Icc 2 Y).sigma fun a =>
    (Finset.Ioc 0 (4 * X)).filter fun k =>
      Y < a * k ∧ a * k ≤ 4 * X

/-- The divisor incidence `(r,a)` is equivalent to the factor pair
`(a,r/a)`. -/
def gcdCutoffCorrectionIncidenceEquivFactor
    {X Y : ℕ} :
    {p : Σ _r : ℕ, ℕ //
      p ∈ gcdCutoffCorrectionIncidenceSet X Y} ≃
    {q : Σ _a : ℕ, ℕ //
      q ∈ gcdCutoffCorrectionFactorSet X Y} where
  toFun p := by
    rcases p with ⟨⟨r, a⟩, hp⟩
    have hp' := Finset.mem_sigma.mp hp
    rcases hp' with ⟨hr, ha⟩
    have ha' := Finset.mem_filter.mp ha
    have hadiv := (Nat.mem_divisors.mp ha'.1).1
    refine ⟨⟨a, r / a⟩, ?_⟩
    apply Finset.mem_sigma.mpr
    refine ⟨Finset.mem_Icc.mpr ha'.2, ?_⟩
    apply Finset.mem_filter.mpr
    have hapos : 0 < a := by omega
    have hrpos : 0 < r := by
      have := Finset.mem_Ioc.mp hr
      omega
    have hale : a ≤ r := Nat.le_of_dvd hrpos hadiv
    have hkpos : 0 < r / a := Nat.div_pos hale hapos
    have hmul : a * (r / a) = r :=
      Nat.mul_div_cancel' hadiv
    exact
      ⟨Finset.mem_Ioc.mpr ⟨hkpos, by omega⟩,
       by simpa [hmul] using
         (show Y < r ∧ r ≤ 4 * X from
           Finset.mem_Ioc.mp hr)⟩
  invFun q := by
    rcases q with ⟨⟨a, k⟩, hq⟩
    have hq' := Finset.mem_sigma.mp hq
    rcases hq' with ⟨ha, hk⟩
    have hk' := Finset.mem_filter.mp hk
    refine ⟨⟨a * k, a⟩, ?_⟩
    apply Finset.mem_sigma.mpr
    refine ⟨Finset.mem_Ioc.mpr hk'.2, ?_⟩
    apply Finset.mem_filter.mpr
    have hapos : 0 < a := by
      have := Finset.mem_Icc.mp ha
      omega
    have hkpos : 0 < k := (Finset.mem_Ioc.mp hk'.1).1
    have hprodne : a * k ≠ 0 :=
      Nat.mul_ne_zero (Nat.ne_of_gt hapos) (Nat.ne_of_gt hkpos)
    exact
      ⟨Nat.mem_divisors.mpr
          ⟨dvd_mul_right a k, hprodne⟩,
       Finset.mem_Icc.mp ha⟩
  left_inv p := by
    apply Subtype.ext
    apply Sigma.ext
    · exact Nat.mul_div_cancel'
        ((Nat.mem_divisors.mp
          (Finset.mem_filter.mp
            (Finset.mem_sigma.mp p.2).2).1).1)
    · simp
  right_inv q := by
    apply Subtype.ext
    apply Sigma.ext
    · rfl
    · have hq' := Finset.mem_sigma.mp q.2
      have hk' := Finset.mem_filter.mp hq'.2
      have hapos : 0 < q.1.1 := by
        have := Finset.mem_Icc.mp hq'.1
        omega
      simp [Nat.mul_div_left _ hapos]

/-- Coefficient-multiplicity weighted quotient-square mass. -/
def gcdCutoffCorrectionWeightedQuotientMass
    (X Y : ℕ) : ℝ :=
  ∑ r ∈ highGCDCutoffIndexSet X Y,
    |gcdCutoffCorrectionCoefficient Y r| *
      (((4 * X / r : ℕ) : ℝ)^2)

/-- Relaxed factor-pair reciprocal-square mass. -/
def gcdCutoffCorrectionRelaxedFactorMass
    (X Y : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 2 Y,
    ∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
      16 * (X : ℝ)^2 *
        (((a : ℝ)^2)⁻¹) *
        (((k : ℝ)^2)⁻¹)

/-- Exact correction mass is bounded by the relaxed factor-pair mass. -/
theorem gcdCutoffCorrectionWeightedQuotientMass_le_relaxed
    {X Y : ℕ}
    (hY : 1 ≤ Y) :
    gcdCutoffCorrectionWeightedQuotientMass X Y ≤
      gcdCutoffCorrectionRelaxedFactorMass X Y := by
  have hhigh :
      highGCDCutoffIndexSet X Y =
        Finset.Ioc Y (4 * X) := by
    ext r
    simp [highGCDCutoffIndexSet, modulusIndexSet]
    omega
  rw [gcdCutoffCorrectionWeightedQuotientMass, hhigh]
  calc
    (∑ r ∈ Finset.Ioc Y (4 * X),
      |gcdCutoffCorrectionCoefficient Y r| *
        (((4 * X / r : ℕ) : ℝ)^2)) ≤
      ∑ r ∈ Finset.Ioc Y (4 * X),
        ((gcdCutoffCorrectionDivisorSet Y r).card : ℝ) *
          (((4 * X / r : ℕ) : ℝ)^2) := by
      apply Finset.sum_le_sum
      intro r hr
      have hrpos : 0 < r := by
        have := Finset.mem_Ioc.mp hr
        omega
      exact mul_le_mul_of_nonneg_right
        (abs_gcdCutoffCorrectionCoefficient_le_card hY hrpos)
        (sq_nonneg _)
    _ =
      ∑ p : {p : Σ _r : ℕ, ℕ //
          p ∈ gcdCutoffCorrectionIncidenceSet X Y},
        (((4 * X / p.1.1 : ℕ) : ℝ)^2) := by
      rw [← Finset.sum_sigma']
      simp [gcdCutoffCorrectionIncidenceSet,
        Finset.card_eq_sum_ones, Finset.mul_sum]
    _ =
      ∑ q : {q : Σ _a : ℕ, ℕ //
          q ∈ gcdCutoffCorrectionFactorSet X Y},
        (((4 * X / (q.1.1 * q.1.2) : ℕ) : ℝ)^2) := by
      exact Fintype.sum_equiv
        gcdCutoffCorrectionIncidenceEquivFactor
        (fun p =>
          (((4 * X / p.1.1 : ℕ) : ℝ)^2))
        (fun q =>
          (((4 * X / (q.1.1 * q.1.2) : ℕ) : ℝ)^2))
        (by
          intro p
          change
            (((4 * X / p.1.1 : ℕ) : ℝ)^2) =
              (((4 * X /
                (p.1.2 * (p.1.1 / p.1.2)) : ℕ) : ℝ)^2)
          have hp := Finset.mem_sigma.mp p.2
          have ha := Finset.mem_filter.mp hp.2
          have hadiv := (Nat.mem_divisors.mp ha.1).1
          rw [Nat.mul_div_cancel' hadiv])
    _ ≤ gcdCutoffCorrectionRelaxedFactorMass X Y := by
      unfold gcdCutoffCorrectionRelaxedFactorMass
      rw [← Finset.sum_coe_sort
        (gcdCutoffCorrectionFactorSet X Y)
        (fun q : Σ _a : ℕ, ℕ =>
          (((4 * X / (q.1 * q.2) : ℕ) : ℝ)^2))]
      rw [← Finset.sum_sigma']
      apply Finset.sum_le_sum
      intro a ha
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · intro k hk
        have hk' := Finset.mem_filter.mp hk
        have hprod := hk'.2
        have hapos : 0 < a := by
          have := Finset.mem_Icc.mp ha
          omega
        have hkpos : 0 < k := (Finset.mem_Ioc.mp hk'.1).1
        have hkLower : Y / a < k := by
          apply (Nat.div_lt_iff_lt_mul hapos).2
          simpa [Nat.mul_comm] using hprod.1
        exact Finset.mem_Ioo.mpr
          ⟨hkLower, by
            have := Finset.mem_Ioc.mp hk'.1
            omega⟩
      · intro k hkBig hkSmall
        positivity
      · intro k hk
        have hapos : 0 < a := by
          have := Finset.mem_Icc.mp ha
          omega
        have hkpos : 0 < k := by
          have := Finset.mem_Ioo.mp hk
          omega
        have hcast :
            ((4 * X / (a * k) : ℕ) : ℝ) ≤
              ((4 * X : ℕ) : ℝ) /
                ((a * k : ℕ) : ℝ) := by
          exact Nat.cast_div_le
        have hsq :=
          mul_self_le_mul_self
            (by positivity :
              0 ≤ ((4 * X / (a * k) : ℕ) : ℝ))
            hcast
        calc
          (((4 * X / (a * k) : ℕ) : ℝ)^2) ≤
              ((((4 * X : ℕ) : ℝ) /
                ((a * k : ℕ) : ℝ))^2) := by
                  simpa [pow_two] using hsq
          _ =
              16 * (X : ℝ)^2 *
                (((a : ℝ)^2)⁻¹) *
                (((k : ℝ)^2)⁻¹) := by
                  field_simp [show (a : ℝ) ≠ 0 by
                    exact_mod_cast (Nat.ne_of_gt hapos),
                    show (k : ℝ) ≠ 0 by
                    exact_mod_cast (Nat.ne_of_gt hkpos)]
                  ring

/-- Elementary reciprocal comparison generated by integer division. -/
theorem two_div_div_succ_le
    {Y a : ℕ}
    (hY : 0 < Y)
    (ha : 0 < a) :
    (2 : ℝ) / (((Y / a + 1 : ℕ) : ℝ)) ≤
      2 * (a : ℝ) / (Y : ℝ) := by
  have hnat : Y < a * (Y / a + 1) := by
    omega
  have hreal :
      (Y : ℝ) <
        (a : ℝ) * ((Y / a + 1 : ℕ) : ℝ) := by
    exact_mod_cast hnat
  have hden : 0 < (((Y / a + 1 : ℕ) : ℝ)) := by
    positivity
  have hYr : 0 < (Y : ℝ) := by exact_mod_cast hY
  apply (div_le_iff₀ hden).2
  apply (le_div_iff₀ hYr).2
  nlinarith

/-- The relaxed factor mass has the expected harmonic-over-cutoff bound. -/
theorem gcdCutoffCorrectionRelaxedFactorMass_le
    {X Y : ℕ}
    (hY : 2 ≤ Y) :
    gcdCutoffCorrectionRelaxedFactorMass X Y ≤
      32 * (X : ℝ)^2 *
        (Real.log (Y : ℝ) / (Y : ℝ)) := by
  have hYpos : 0 < Y := by omega
  have hYreal : 0 < (Y : ℝ) := by exact_mod_cast hYpos
  have htail :
      ∀ a ∈ Finset.Icc 2 Y,
        (∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
          (((k : ℝ)^2)⁻¹)) ≤
        2 * (a : ℝ) / (Y : ℝ) := by
    intro a ha
    have hapos : 0 < a := by
      have := Finset.mem_Icc.mp ha
      omega
    calc
      (∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
        (((k : ℝ)^2)⁻¹)) ≤
        2 / (((Y / a + 1 : ℕ) : ℝ)) := by
          simpa using
            (Finset.sum_Ioo_inv_sq_le
              (α := ℝ) (Y / a) (4 * X + 1))
      _ ≤ 2 * (a : ℝ) / (Y : ℝ) :=
        two_div_div_succ_le hYpos hapos
  have hharm :
      (∑ a ∈ Finset.Icc 2 Y, ((a : ℝ)⁻¹)) ≤
        Real.log (Y : ℝ) := by
    have hI :
        Finset.Icc 2 Y =
          Finset.Icc 1 Y \ {1} := by
      ext a
      simp
      omega
    rw [hI, Finset.sum_sdiff
      (by simp : ({1} : Finset ℕ) ⊆ Finset.Icc 1 Y)]
    rw [harmonic_eq_sum_Icc]
    simp only [Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
    have hh := harmonic_le_one_add_log Y
    norm_num at hh ⊢
    linarith
  unfold gcdCutoffCorrectionRelaxedFactorMass
  calc
    (∑ a ∈ Finset.Icc 2 Y,
      ∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
        16 * (X : ℝ)^2 *
          (((a : ℝ)^2)⁻¹) *
          (((k : ℝ)^2)⁻¹)) =
      ∑ a ∈ Finset.Icc 2 Y,
        (16 * (X : ℝ)^2 *
          (((a : ℝ)^2)⁻¹)) *
          ∑ k ∈ Finset.Ioo (Y / a) (4 * X + 1),
            (((k : ℝ)^2)⁻¹) := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.mul_sum]
    _ ≤
      ∑ a ∈ Finset.Icc 2 Y,
        (16 * (X : ℝ)^2 *
          (((a : ℝ)^2)⁻¹)) *
          (2 * (a : ℝ) / (Y : ℝ)) := by
      exact Finset.sum_le_sum fun a ha =>
        mul_le_mul_of_nonneg_left (htail a ha)
          (by positivity)
    _ =
      (32 * (X : ℝ)^2 / (Y : ℝ)) *
        ∑ a ∈ Finset.Icc 2 Y, ((a : ℝ)⁻¹) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro a ha
      have hapos : 0 < (a : ℝ) := by
        exact_mod_cast (show 0 < a by
          have := Finset.mem_Icc.mp ha
          omega)
      field_simp
      ring
    _ ≤
      (32 * (X : ℝ)^2 / (Y : ℝ)) *
        Real.log (Y : ℝ) := by
      exact mul_le_mul_of_nonneg_left hharm (by positivity)
    _ =
      32 * (X : ℝ)^2 *
        (Real.log (Y : ℝ) / (Y : ℝ)) := by ring

/-- At the square-root cutoff the coefficient-weighted quotient mass has one
additional logarithm. -/
theorem gcdCutoffCorrectionWeightedQuotientMass_sqrt_le
    {X : ℕ}
    (hX : 4 ≤ X) :
    gcdCutoffCorrectionWeightedQuotientMass X X.sqrt ≤
      64 * (X : ℝ) * Real.sqrt (X : ℝ) *
        Real.log (X : ℝ) := by
  have hroot : 2 ≤ X.sqrt := by
    rw [Nat.le_sqrt]
    nlinarith
  have hbase :=
    (gcdCutoffCorrectionWeightedQuotientMass_le_relaxed
      (X := X) (Y := X.sqrt) (by omega : 1 ≤ X.sqrt)).trans
      (gcdCutoffCorrectionRelaxedFactorMass_le
        (X := X) hroot)
  have hXpos : 0 < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hsqrtpos : 0 < Real.sqrt (X : ℝ) :=
    Real.sqrt_pos.2 hXpos
  have hrootpos : 0 < (X.sqrt : ℝ) := by
    exact_mod_cast (show 0 < X.sqrt by omega)
  have hrootInv :
      1 / (X.sqrt : ℝ) ≤
        2 / Real.sqrt (X : ℝ) := by
    have hsqrtle :
        Real.sqrt (X : ℝ) ≤ 2 * (X.sqrt : ℝ) := by
      have h := Real.real_sqrt_le_nat_sqrt_succ (a := X)
      have hplus :
          ((X.sqrt + 1 : ℕ) : ℝ) ≤
            2 * (X.sqrt : ℝ) := by
        exact_mod_cast (show X.sqrt + 1 ≤ 2 * X.sqrt by omega)
      exact h.trans hplus
    apply (div_le_iff₀ hrootpos).2
    apply (le_div_iff₀ hsqrtpos).2
    nlinarith
  have hlog :
      Real.log (X.sqrt : ℝ) ≤
        Real.log (X : ℝ) := by
    exact Real.log_le_log hrootpos
      (by
        exact_mod_cast
          (Nat.sqrt_le X))
  calc
    gcdCutoffCorrectionWeightedQuotientMass X X.sqrt ≤
      32 * (X : ℝ)^2 *
        (Real.log (X.sqrt : ℝ) / (X.sqrt : ℝ)) := hbase
    _ ≤
      32 * (X : ℝ)^2 *
        (Real.log (X : ℝ) *
          (2 / Real.sqrt (X : ℝ))) := by
      have hlognonneg : 0 ≤ Real.log (X.sqrt : ℝ) :=
        Real.log_nonneg (by exact_mod_cast
          (show 1 ≤ X.sqrt by omega))
      have hlogXnonneg : 0 ≤ Real.log (X : ℝ) :=
        Real.log_nonneg (by exact_mod_cast
          (show 1 ≤ X by omega))
      rw [div_eq_mul_inv]
      gcongr
    _ = 64 * (X : ℝ) *
        ((X : ℝ) / Real.sqrt (X : ℝ)) *
          Real.log (X : ℝ) := by ring
    _ = 64 * (X : ℝ) * Real.sqrt (X : ℝ) *
          Real.log (X : ℝ) := by
      rw [Real.div_sqrt]

/-- Scale with the one extra logarithm produced by absolute cutoff-coefficient
counting. -/
def centeredLowGCDLogFiveScale
    (X : ℕ) : ℝ :=
  (X : ℝ) * Real.sqrt (X : ℝ) *
    (Real.log (X : ℝ)^5)

/-- The currently available finite counting estimates bound the cutoff
correction only at `log^5`, one logarithm above the desired target. -/
theorem abs_gcdCutoffCorrectionTail_sqrt_le_logFive
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X,
      w n ∈ Set.Icc (0 : ℝ) 1) :
    |gcdCutoffCorrectionTail X X.sqrt w| ≤
      2304 * centeredLowGCDLogFiveScale X := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  let ell : ℝ := Real.log (X : ℝ)
  have hXone : 1 ≤ X := by omega
  have hellOne : 1 ≤ ell := by
    unfold ell
    have hXpos : 0 < (X : ℝ) := by
      exact_mod_cast (show 0 < X by omega)
    rw [Real.le_log_iff_exp_le hXpos]
    exact Real.exp_one_lt_three.le.trans
      (by exact_mod_cast (show 3 ≤ X by omega))
  have hLle : L ≤ 2 * ell := by
    have hlogFour :
        Real.log (4 : ℝ) ≤ ell := by
      unfold ell
      exact Real.log_le_log (by norm_num)
        (by exact_mod_cast hX)
    have hLeq :
        L = Real.log (4 : ℝ) + ell := by
      unfold L ell
      rw [show (((4 * X : ℕ) : ℝ)) =
          (4 : ℝ) * (X : ℝ) by norm_num,
        Real.log_mul (by norm_num : (4 : ℝ) ≠ 0)
          (by exact_mod_cast (show X ≠ 0 by omega))]
    linarith
  have honeL : 1 + L ≤ 3 * ell := by
    linarith
  have hmass :=
    gcdCutoffCorrectionWeightedQuotientMass_sqrt_le hX
  have hterm :
      ∀ r ∈ highGCDCutoffIndexSet X X.sqrt,
        |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (centeredDivisibilityTail X w r)^2 ≤
          |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (((4 * X / r : ℕ) : ℝ)^2) *
            (1 + L)^2 * L^2 := by
    intro r hr
    rcases mem_highGCDCutoffIndexSet_iff.mp hr with
      ⟨hrmem, hroot⟩
    have hrgt : 1 < r := by
      have hrootOne : 1 ≤ X.sqrt := by
        rw [Nat.le_sqrt]
        simpa using hXone
      omega
    have ht :=
      abs_centeredDivisibilityTail_le_quotient_log_product
        hXone hrmem hrgt hw
    have hsq :
        (centeredDivisibilityTail X w r)^2 ≤
          ((((4 * X / r : ℕ) : ℝ) *
            (1 + L) * L)^2) := by
      have habs :=
        mul_self_le_mul_self (abs_nonneg _) ht
      simpa [sq_abs, L] using habs
    exact mul_le_mul_of_nonneg_left
      (by
        calc
          (centeredDivisibilityTail X w r)^2 ≤
              ((((4 * X / r : ℕ) : ℝ) *
                (1 + L) * L)^2) := hsq
          _ = (((4 * X / r : ℕ) : ℝ)^2) *
              (1 + L)^2 * L^2 := by ring)
      (abs_nonneg _)
  calc
    |gcdCutoffCorrectionTail X X.sqrt w| ≤
      ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
        |gcdCutoffCorrectionCoefficient X.sqrt r| *
          (centeredDivisibilityTail X w r)^2 := by
      unfold gcdCutoffCorrectionTail
      calc
        |∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
          gcdCutoffCorrectionCoefficient X.sqrt r *
            (centeredDivisibilityTail X w r)^2| ≤
          ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
            |gcdCutoffCorrectionCoefficient X.sqrt r *
              (centeredDivisibilityTail X w r)^2| := by
                exact Finset.abs_sum_le_sum_abs _ _
        _ = _ := by
          apply Finset.sum_congr rfl
          intro r hr
          rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
    _ ≤
      gcdCutoffCorrectionWeightedQuotientMass X X.sqrt *
        (1 + L)^2 * L^2 := by
      unfold gcdCutoffCorrectionWeightedQuotientMass
      calc
        (∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
          |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (centeredDivisibilityTail X w r)^2) ≤
          ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
            |gcdCutoffCorrectionCoefficient X.sqrt r| *
              (((4 * X / r : ℕ) : ℝ)^2) *
              (1 + L)^2 * L^2 := by
                exact Finset.sum_le_sum hterm
        _ = _ := by
          rw [Finset.sum_mul, Finset.sum_mul]
    _ ≤
      (64 * (X : ℝ) * Real.sqrt (X : ℝ) * ell) *
        (3 * ell)^2 * (2 * ell)^2 := by
      gcongr
    _ = 2304 * centeredLowGCDLogFiveScale X := by
      unfold centeredLowGCDLogFiveScale ell
      ring

/-- A one-log sharper pointwise divisibility-tail estimate would close the
cutoff correction at the original `log^4` target scale.  The hypothesis is
stated explicitly rather than hidden in a supplier structure. -/
theorem abs_gcdCutoffCorrectionTail_sqrt_le_target_of_sharpTail
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hsharp :
      ∀ r ∈ highGCDCutoffIndexSet X X.sqrt,
        |centeredDivisibilityTail X w r| ≤
          ((4 * X / r : ℕ) : ℝ) *
            Real.log ((4 * X : ℕ) : ℝ)) :
    |gcdCutoffCorrectionTail X X.sqrt w| ≤
      256 * centeredLowGCDTargetScale X := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  let ell : ℝ := Real.log (X : ℝ)
  have hellOne : 1 ≤ ell := by
    unfold ell
    have hXpos : 0 < (X : ℝ) := by
      exact_mod_cast (show 0 < X by omega)
    rw [Real.le_log_iff_exp_le hXpos]
    exact Real.exp_one_lt_three.le.trans
      (by exact_mod_cast (show 3 ≤ X by omega))
  have hLle : L ≤ 2 * ell := by
    have hlogFour :
        Real.log (4 : ℝ) ≤ ell := by
      unfold ell
      exact Real.log_le_log (by norm_num)
        (by exact_mod_cast hX)
    have hLeq :
        L = Real.log (4 : ℝ) + ell := by
      unfold L ell
      rw [show (((4 * X : ℕ) : ℝ)) =
          (4 : ℝ) * (X : ℝ) by norm_num,
        Real.log_mul (by norm_num : (4 : ℝ) ≠ 0)
          (by exact_mod_cast (show X ≠ 0 by omega))]
    linarith
  have hmass :=
    gcdCutoffCorrectionWeightedQuotientMass_sqrt_le hX
  have hsum :
      |gcdCutoffCorrectionTail X X.sqrt w| ≤
        gcdCutoffCorrectionWeightedQuotientMass X X.sqrt *
          L^2 := by
    unfold gcdCutoffCorrectionTail
    calc
      |∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
        gcdCutoffCorrectionCoefficient X.sqrt r *
          (centeredDivisibilityTail X w r)^2| ≤
        ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
          |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (centeredDivisibilityTail X w r)^2 := by
              calc
                |_ | ≤
                  ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
                    |gcdCutoffCorrectionCoefficient X.sqrt r *
                      (centeredDivisibilityTail X w r)^2| :=
                        Finset.abs_sum_le_sum_abs _ _
                _ = _ := by
                  apply Finset.sum_congr rfl
                  intro r hr
                  rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
      _ ≤
        ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
          |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (((4 * X / r : ℕ) : ℝ)^2) * L^2 := by
        apply Finset.sum_le_sum
        intro r hr
        have hs := hsharp r hr
        have hsquare :=
          mul_self_le_mul_self (abs_nonneg _) hs
        have hsquare' :
            (centeredDivisibilityTail X w r)^2 ≤
              (((4 * X / r : ℕ) : ℝ)^2) * L^2 := by
          simpa [sq_abs, L] using hsquare
        exact mul_le_mul_of_nonneg_left hsquare'
          (abs_nonneg _)
      _ = gcdCutoffCorrectionWeightedQuotientMass X X.sqrt *
          L^2 := by
        unfold gcdCutoffCorrectionWeightedQuotientMass
        rw [Finset.sum_mul]
  calc
    |gcdCutoffCorrectionTail X X.sqrt w| ≤
        gcdCutoffCorrectionWeightedQuotientMass X X.sqrt *
          L^2 := hsum
    _ ≤
      (64 * (X : ℝ) * Real.sqrt (X : ℝ) * ell) *
        (2 * ell)^2 := by
      gcongr
    _ = 256 * (X : ℝ) * Real.sqrt (X : ℝ) *
        ell^3 := by ring
    _ ≤ 256 * (X : ℝ) * Real.sqrt (X : ℝ) *
        ell^4 := by
      gcongr
      calc
        ell^3 = ell^3 * 1 := by ring
        _ ≤ ell^3 * ell := by
          exact mul_le_mul_of_nonneg_left
            hellOne (pow_nonneg ell 3)
        _ = ell^4 := by ring
    _ = 256 * centeredLowGCDTargetScale X := by
      unfold centeredLowGCDTargetScale ell
      ring

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
